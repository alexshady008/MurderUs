/*
    ---> Project: SHARE Extension
    ---> Author: Irlan Bragi
    ---> Organization: Bragi Estúdios
    ---> Creation date: December 2019
    ---> Contact: irlan@bragiestudios.com
 
    ---> Copyright © 2019 Bragi Estúdios. All rights reserved. https://bragiestudios.com
*/

#import <Foundation/Foundation.h>
#import "SHARE.h"

extern int CreateDsMap( int _num, ... );
extern void CreateAsynEventWithDSMap(int dsmapindex, int event_index);
    extern UIViewController *g_controller;
    extern UIView *g_glView;
    extern int g_DeviceWidth;
    extern int g_DeviceHeight;

@implementation SHARE
{
}

-(void)SHARE_text:(NSString*)_text Arg2: (NSString*)_title Arg3: (NSString*)_SocialNetwork;
{
    if ([self SHARE_check_shareable:_SocialNetwork  Arg2:@"text/plain"] == 1)
    {
        
        if ([_SocialNetwork isEqualToString:@"com.whatsapp"])
        {
            NSString * _url_ = [NSString stringWithFormat:@"whatsapp://send?text=%@",_text];
            NSURL * _AppURL_ = [NSURL URLWithString:[_url_ stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
            
                [[UIApplication sharedApplication] openURL: _AppURL_];
            
        }
        else if ([_SocialNetwork isEqualToString:@"com.twitter.android"])
        {
            NSString * _url_ = [NSString stringWithFormat:@"twitter://post?message=%@",_text];
            NSURL * _AppURL_ = [NSURL URLWithString:[_url_ stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
            
                [[UIApplication sharedApplication] openURL: _AppURL_];
            
        }
        else
        {
            NSArray* sharedObjects=[NSArray arrayWithObjects:_text,  nil];
            UIActivityViewController *activityViewController = [[UIActivityViewController alloc]                                                                initWithActivityItems:sharedObjects applicationActivities:nil];
            activityViewController.popoverPresentationController.sourceView = g_controller.view;
            [g_controller presentViewController:activityViewController animated:YES completion:nil];
        }
    }
    else
    {NSLog(@"'%@' not installed. Use 'SHARE_check_shareable(...)' to avoid this.",_SocialNetwork);}
}

-(NSString*)SHARE_get_external_path:(NSString*)_PathToSave;
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *_PathReturn = [NSString stringWithFormat:@"%@/%@", [paths objectAtIndex:0], _PathToSave];
    return(_PathReturn);
}

-(double)SHARE_check_shareable:(NSString*)_SocialNetwork Arg2: (NSString*)_MIMEtype;
{
    NSURL *_URL_TEST = [NSURL URLWithString:@""];
     
         if ([_SocialNetwork isEqualToString:@"com.whatsapp"])           {_URL_TEST = [NSURL URLWithString:@"whatsapp://app"];}
    else if ([_SocialNetwork isEqualToString:@"com.instagram.android"])  {_URL_TEST = [NSURL URLWithString:@"instagram-stories://share"];}
    else if ([_SocialNetwork isEqualToString:@"com.facebook.katana"])    {_URL_TEST = [NSURL URLWithString:@"facebook-stories://share"];}
    else if ([_SocialNetwork isEqualToString:@"com.facebook.orca"])      {_URL_TEST = [NSURL URLWithString:@"fb-messenger://"];}
    else if ([_SocialNetwork isEqualToString:@"com.twitter.android"])    {_URL_TEST = [NSURL URLWithString:@"twitter://"];}
    else if ([_SocialNetwork isEqualToString:@"org.telegram.messenger"]) {_URL_TEST = [NSURL URLWithString:@"tg://"];}
    else {return(1);}
    

        if ([[UIApplication sharedApplication] canOpenURL: _URL_TEST])
        {return(1);}
        else
        {return(0);}

}

-(double)SHARE_check_permission
{return(1);}

-(void)SHARE_get_permission
{}

-(void)SHARE__file:(NSString*)_ExternalFile Arg2: (NSString*)_title Arg3: (NSString*)_text Arg4: (NSString*)_SocialNetwork Arg5: (NSString*)_MIMEtype;
{
            NSString *str_title = _title;
            NSString *str_text = _text;
            NSArray *items = @[str_text];
            
            if ([_MIMEtype isEqualToString:@"image/*"])
             {
                 UIImage *_FILE_ = [UIImage imageWithContentsOfFile: _ExternalFile ];
                 items = @[_FILE_,str_text];
             }
            else
             {
                 NSURL *_FILE_ = [NSURL fileURLWithPath:_ExternalFile isDirectory:NO];
                 items = @[_FILE_,str_text];
             }
            
            
            // build an activity view controller
            UIActivityViewController *controller = [[UIActivityViewController alloc]initWithActivityItems:items applicationActivities:nil];
            
            // iPad won't crash:
            if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
                controller.popoverPresentationController.sourceView = g_controller.view;
                controller.popoverPresentationController.sourceRect = CGRectMake(g_controller.view.bounds.size.width/2, g_controller.view.bounds.size.height/4, 0, 0);
            }
            
            
            [g_controller presentViewController:controller animated:YES completion:nil];
}





-(void)SHARE_instagram_stories:(NSString*)_ExternalFile Arg2: (NSString*)_attributionLinkUrl Arg3: (double)isVideo;
{
    // Verify app can open custom URL scheme, open if able
    NSURL *urlScheme = [NSURL URLWithString:@"instagram-stories://share"];
    if ([[UIApplication sharedApplication] canOpenURL:urlScheme])
    {
            NSString *attributionURL = _attributionLinkUrl;
            
    
            if (isVideo==1)
            {
                NSData* backgroundVideo = [NSData dataWithContentsOfFile:_ExternalFile];
                NSArray *pasteboardItems = @[@{@"com.instagram.sharedSticker.backgroundVideo" : backgroundVideo,
                                               @"com.instagram.sharedSticker.contentURL" : attributionURL}];

                NSDictionary *pasteboardOptions = @{UIPasteboardOptionExpirationDate : [[NSDate date] dateByAddingTimeInterval:60 * 5]};
                // This call is iOS 10+, can use 'setItems' depending on what versions you support
                [[UIPasteboard generalPasteboard] setItems:pasteboardItems options:pasteboardOptions];
            
                [[UIApplication sharedApplication] openURL:urlScheme options:@{} completionHandler:nil];
            }
            else
            {
                NSData *backgroundImage = UIImagePNGRepresentation([UIImage imageWithContentsOfFile: _ExternalFile ]);
                NSArray *pasteboardItems = @[@{@"com.instagram.sharedSticker.backgroundImage" : backgroundImage,
                                               @"com.instagram.sharedSticker.contentURL" : attributionURL}];
    
                NSDictionary *pasteboardOptions = @{UIPasteboardOptionExpirationDate : [[NSDate date] dateByAddingTimeInterval:60 * 5]};
                // This call is iOS 10+, can use 'setItems' depending on what versions you support
                [[UIPasteboard generalPasteboard] setItems:pasteboardItems options:pasteboardOptions];
            
                [[UIApplication sharedApplication] openURL:urlScheme options:@{} completionHandler:nil];
            }

      
    }
    else
    {
          NSLog(@"Instagram not installed. Use 'SHARE_check_shareable(SHARE_INSTAGRAM, SHARE_MIME_TYPE_IMAGE)' to avoid this.");
    }
    
}

-(void)SHARE_instagram_stories_sticker:(NSString*)_ExternalFile Arg2:(NSString*)_attributionLinkUrl  Arg3:(NSString*)_top_background_color Arg4:(NSString*)_bottom_background_color;
{
      // Verify app can open custom URL scheme. If able,
      // assign assets to pasteboard, open scheme.
      NSURL *urlScheme = [NSURL URLWithString:@"instagram-stories://share"];
      if ([[UIApplication sharedApplication] canOpenURL:urlScheme])
      {

          NSData *stickerImage = UIImagePNGRepresentation([UIImage imageWithContentsOfFile: _ExternalFile ]);
          NSString *backgroundTopColor = _top_background_color;
          NSString *backgroundBottomColor = _bottom_background_color;
          NSString *attributionURL = _attributionLinkUrl;
          
          
          // Assign sticker image asset and attribution link URL to pasteboard
          NSArray *pasteboardItems = @[@{@"com.instagram.sharedSticker.stickerImage" : stickerImage,
                                         @"com.instagram.sharedSticker.backgroundTopColor" : backgroundTopColor,
                                         @"com.instagram.sharedSticker.backgroundBottomColor" : backgroundBottomColor,
                                         @"com.instagram.sharedSticker.contentURL" : attributionURL}];
          NSDictionary *pasteboardOptions = @{UIPasteboardOptionExpirationDate : [[NSDate date] dateByAddingTimeInterval:60 * 5]};
          // This call is iOS 10+, can use 'setItems' depending on what versions you support
          [[UIPasteboard generalPasteboard] setItems:pasteboardItems options:pasteboardOptions];

          [[UIApplication sharedApplication] openURL:urlScheme options:@{} completionHandler:nil];
      }
      else
      {
            NSLog(@"Instagram not installed. Use 'SHARE_check_shareable(SHARE_INSTAGRAM, SHARE_MIME_TYPE_IMAGE)' to avoid this.");
      }
    
    
}

-(void)SHARE_instagram_stories_background_and_sticker:(NSString*) _ExternalFileToBackground Arg2:(NSString*)_ExternalFileToSticker Arg3:(NSString*)_attributionLinkUrl;
{
      // Verify app can open custom URL scheme. If able,
      // assign assets to pasteboard, open scheme.
      NSURL *urlScheme = [NSURL URLWithString:@"instagram-stories://share"];
      if ([[UIApplication sharedApplication] canOpenURL:urlScheme]) {

          NSData *stickerImage = UIImagePNGRepresentation([UIImage imageWithContentsOfFile: _ExternalFileToSticker ]);
          NSData *backgroundImage = UIImagePNGRepresentation([UIImage imageWithContentsOfFile: _ExternalFileToBackground ]);
          NSString *attributionURL = _attributionLinkUrl;
          
          // Assign background and sticker image assets and
          // attribution link URL to pasteboard
          NSArray *pasteboardItems = @[@{@"com.instagram.sharedSticker.backgroundImage" : backgroundImage,
                                         @"com.instagram.sharedSticker.stickerImage" : stickerImage,
                                         @"com.instagram.sharedSticker.contentURL" : attributionURL}];
          NSDictionary *pasteboardOptions = @{UIPasteboardOptionExpirationDate : [[NSDate date] dateByAddingTimeInterval:60 * 5]};
          // This call is iOS 10+, can use 'setItems' depending on what versions you support
          [[UIPasteboard generalPasteboard] setItems:pasteboardItems options:pasteboardOptions];

          [[UIApplication sharedApplication] openURL:urlScheme options:@{} completionHandler:nil];
      }
      else
      {
            NSLog(@"Instagram not installed. Use 'SHARE_check_shareable(SHARE_INSTAGRAM, SHARE_MIME_TYPE_IMAGE)' to avoid this.");
      }
    
}





@end
