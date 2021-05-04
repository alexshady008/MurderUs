/*
    ---> Project: SHARE Extension
    ---> Author: Irlan Bragi
    ---> Organization: Bragi Estúdios
    ---> Creation date: December 2019
    ---> Contact: irlan@bragiestudios.com
 
    ---> Copyright © 2019 Bragi Estúdios. All rights reserved. https://bragiestudios.com
*/

#ifndef SHARE_h
#define SHARE_h


#endif /* SHARE_h */

#import <UIKit/UIKit.h>

@interface SHARE : UIViewController<UIDocumentInteractionControllerDelegate> // NSObject
{
}

@property(nonatomic,retain) UIDocumentInteractionController *documentationInteractionController;




-(NSString*)SHARE_get_external_path:(NSString*)_PathToSave;
-(double)SHARE_check_shareable:(NSString*)_SocialNetwork Arg2: (NSString*)_MIMEtype;
-(double)SHARE_check_permission;
-(void)SHARE_get_permission;

-(void)SHARE__file:(NSString*)_ExternalFile Arg2: (NSString*)_title Arg3: (NSString*)_text Arg4: (NSString*)_SocialNetwork Arg5: (NSString*)_MIMEtype;
-(void)SHARE_text:(NSString*)_text Arg2: (NSString*)_title Arg3: (NSString*)_SocialNetwork;

-(void)SHARE_instagram_stories:(NSString*)_ExternalFile Arg2: (NSString*)_attributionLinkUrl Arg3: (double)isVideo;
-(void)SHARE_instagram_stories_sticker:(NSString*)_ExternalFile Arg2:(NSString*)_attributionLinkUrl  Arg3:(NSString*)_top_background_color Arg4:(NSString*)_bottom_background_color;
-(void)SHARE_instagram_stories_background_and_sticker:(NSString*) _ExternalFileToBackground Arg2:(NSString*)_ExternalFileToSticker Arg3:(NSString*)_attributionLinkUrl;

@end
