/*
    ---> Project: Share - Mobile Extension
    ---> Author: Irlan Bragi
    ---> Organization: Bragi Estúdios
    ---> Creation date: December 2019
    ---> Contact: irlan@bragiestudios.com
 
    ---> Copyright © 2019 Bragi Estúdios. All rights reserved. https://bragiestudios.com
*/

package ${YYAndroidPackageName};
import ${YYAndroidPackageName}.R;
import com.yoyogames.runner.RunnerJNILib;

import android.util.Log;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.IOException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import android.content.pm.PackageManager;
import android.Manifest;
import android.os.Build;

import android.os.StrictMode;


//File:
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;


public class SHARE
{

    private static final int EVENT_OTHER_SOCIAL = 70;
    final int myPermissions=9;
    Activity myActivity=RunnerActivity.CurrentActivity;

    
    
    
    
    
//-------> SHARE_get_external_path
    
    public String SHARE_get_external_path(String _PathToSave)
    {
        final String sExternalPath = myActivity.getExternalFilesDir(null).toString()+ "/"+_PathToSave;
        return sExternalPath;
    }
    
//<------- SHARE_get_external_path
    
    
//-------> SHARE_get_permission
    
    public void SHARE_get_permission()
    {
        Log.i("yoyo", "SHARE: Call SHARE_get_permission()");
        
        if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.M){
            
            ActivityCompat.requestPermissions(myActivity,
                                              new String[]{Manifest.permission.READ_EXTERNAL_STORAGE,
                                                           Manifest.permission.WRITE_EXTERNAL_STORAGE},
                                              myPermissions);
        }
    }
    
//<------- SHARE_get_permission
    
    
    
    
//-------> SHARE_check_permission
    
    public double SHARE_check_permission()
    {
        //-->Log.i("yoyo", "SHARE: Call SHARE_check_permission()");
        
        boolean permission1 = ContextCompat.checkSelfPermission(myActivity,Manifest.permission.READ_EXTERNAL_STORAGE)==0;
        boolean permission2 = ContextCompat.checkSelfPermission(myActivity,Manifest.permission.WRITE_EXTERNAL_STORAGE)==0;
        
        if(permission1 && permission2)
          {return(1);}
        else
          {return(0);}
        
    }
    
//<------- SHARE_check_permission
    

//-------> SHARE_PRE_SHARE
    
    public void SHARE_PRE_SHARE()
    {
        StrictMode.VmPolicy.Builder builder = new StrictMode.VmPolicy.Builder();
        StrictMode.setVmPolicy(builder.build());
    }
    
//<------- SHARE_PRE_SHARE
    
    
    
    
//-------> SHARE_check_shareable
    
    public double SHARE_check_shareable(String _SocialNetwork,
                                          String _MIMEtype)
    {
            if (!_MIMEtype.equals("text/plain")) {
                if (SHARE_check_permission()==0) {return(-1);}
            }
        
        
        
            //Ambiente para compartilhar:
            SHARE_PRE_SHARE();
        
            if (_SocialNetwork.equals("SHARE_INSTAGRAM_STORIES"))
            {
                        // Define image asset URI and attribution link URL
                        Uri backgroundAssetUri = Uri.fromFile(new File(""));
                        String attributionLinkUrl = "https://bragiestudios.com/";
                    
                        // Instantiate implicit intent with ADD_TO_STORY action,
                        // background asset, and attribution link
                        Intent intent = new Intent("com.instagram.share.ADD_TO_STORY");
                        
                        intent.setDataAndType(backgroundAssetUri, "image/*");
                        
                        intent.setFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
                        intent.putExtra("content_url", attributionLinkUrl);
                    
                        // Instantiate activity and verify it will resolve implicit intent
                        if (myActivity.getPackageManager().resolveActivity(intent, 0) != null)
                        {return(1);}
                        else
                        {return(0);}
            }
            else
            {
                Intent share = new Intent(Intent.ACTION_SEND);
                share.setType(_MIMEtype);
                if (!_SocialNetwork.equals("##")) {share.setPackage(_SocialNetwork);}
                
                // Broadcast the Intent.
                if (myActivity.getPackageManager().resolveActivity(share, 0) != null)
                {return(1);}
                else
                {return(0);}
            }
            
        
    }
    
//<------- SHARE_check_shareable
    
    
    
    
    
//-------> SHARE__file
    
    public void SHARE__file(String _ExternalFile,          //External file to share
                              String _title,
                              String _text,
                              String _SocialNetwork,
                              String _MIMEtype)
    {
        if (SHARE_check_permission()==0) //Checa se tem permissão
        {Log.i("yoyo", "SHARE: Permissions not released. Use 'SHARE_get_permission()'");}
        else //Tem permissão
        {
            //Ambiente para compartilhar:
            SHARE_PRE_SHARE();
            
            // Create the new Intent using the 'Send' action.
            Intent share = new Intent(Intent.ACTION_SEND);
            
            // Set the MIME type
            share.setType(_MIMEtype);
            
            // Create the URI from the media
            Uri uri = Uri.fromFile(new File(_ExternalFile));
            
            // Add the URI to the Intent.
            share.putExtra(Intent.EXTRA_STREAM, uri);
            
            // Add the text to the Intent.
            if (!_text.equals("")) {share.putExtra(Intent.EXTRA_TEXT, _text);}
            
            if (!_SocialNetwork.equals("##")) {share.setPackage(_SocialNetwork);}
            
            // Broadcast the Intent.
            // - check removed in version 1.2.0 - // if (myActivity.getPackageManager().resolveActivity(share, 0) != null) {
                myActivity.startActivity(Intent.createChooser(share, _title));
            // - check removed in version 1.2.0 - // }
            // - check removed in version 1.2.0 - // else
            // - check removed in version 1.2.0 - // {Log.i("yoyo", "SHARE: Error");}
            
        }
    }
    
//<------- SHARE__file
    
    

//-------> SHARE_text
    
    public void SHARE_text(String _text,
                              String _title,
                              String _SocialNetwork)
    {
            //Ambiente para compartilhar:
            SHARE_PRE_SHARE();
            
            // Create the new Intent using the 'Send' action.
            Intent share = new Intent(Intent.ACTION_SEND);
            
            // Set the MIME type
            share.setType("text/plain");
            
            // Add the text to the Intent.
            share.putExtra(Intent.EXTRA_TEXT, _text);
            
            if (!_SocialNetwork.equals("##")) {share.setPackage(_SocialNetwork);}
            
            // Broadcast the Intent.
        
            // - check removed in version 1.2.0 - // if (myActivity.getPackageManager().resolveActivity(share, 0) != null) {
                myActivity.startActivity(Intent.createChooser(share, _title));
            // - check removed in version 1.2.0 - // }
            // - check removed in version 1.2.0 - // else
            // - check removed in version 1.2.0 - // {Log.i("yoyo", "SHARE: Error");}
            
    }
    
//<------- SHARE_text
    
    
    
    
    

//-------> SHARE_instagram_stories
    
    public void SHARE_instagram_stories(String _ExternalFile,          //External file of image to share
                                          String _attributionLinkUrl,    //A deep link URL to content in your app. MORE INFO: https://developers.facebook.com/docs/instagram/sharing-to-stories/
                                          double _isVideo)
    {
        if (SHARE_check_permission()==0) //Checa se tem permissão
        {Log.i("yoyo", "SHARE: Permissions not released. Use 'SHARE_get_permission()'");}
        else //Tem permissão
        {
            //Ambiente para compartilhar:
            SHARE_PRE_SHARE();
            
            // Define image asset URI and attribution link URL
            Uri backgroundAssetUri = Uri.fromFile(new File(_ExternalFile));
            String attributionLinkUrl = _attributionLinkUrl;
        
            // Instantiate implicit intent with ADD_TO_STORY action,
            // background asset, and attribution link
            Intent intent = new Intent("com.instagram.share.ADD_TO_STORY");
            
            if (_isVideo==1){intent.setDataAndType(backgroundAssetUri, "video/*");}
                       else {intent.setDataAndType(backgroundAssetUri, "image/*");}
            
            intent.setFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            intent.putExtra("content_url", attributionLinkUrl);
        
            // Instantiate activity and verify it will resolve implicit intent
            if (myActivity.getPackageManager().resolveActivity(intent, 0) != null) {
                Log.i("yoyo", "SHARE: SHARE_instagram_stories");
                myActivity.startActivityForResult(intent, 0);
            }
            else
            {Log.i("yoyo", "SHARE: Error");}
        }
    }
    
//<------- SHARE_instagram_stories
    
    
    
//-------> SHARE_instagram_stories_sticker
    
    public void SHARE_instagram_stories_sticker(String _ExternalFile,             //External file of image to share
                                                  String _attributionLinkUrl,       //A deep link URL to content in your app. MORE INFO: https://developers.facebook.com/docs/instagram/sharing-to-stories/
                                                  String _top_background_color,     //A hex string color value used in conjunction with the background layer top color value.
                                                  String _bottom_background_color)  //A hex string color value used in conjunction with the background layer bottom color value.
    {
        if (SHARE_check_permission()==0) //Checa se tem permissão
        {Log.i("yoyo", "SHARE: Permissions not released. Use 'SHARE_get_permission()'");}
        else //Tem permissão
        {
            //Ambiente para compartilhar:
            SHARE_PRE_SHARE();
            
            // Define image asset URI and attribution link URL
            Uri stickerAssetUri = Uri.fromFile(new File(_ExternalFile));
            String attributionLinkUrl = _attributionLinkUrl;
            
            // Instantiate implicit intent with ADD_TO_STORY action,
            // sticker asset, background colors, and attribution link
            Intent intent = new Intent("com.instagram.share.ADD_TO_STORY");
            intent.setType("image/*");
            intent.putExtra("interactive_asset_uri", stickerAssetUri);
            intent.putExtra("content_url", attributionLinkUrl);
            intent.putExtra("top_background_color", _top_background_color);
            intent.putExtra("bottom_background_color", _bottom_background_color);
            
            // verify it will resolve implicit intent
            myActivity.grantUriPermission(
                                        "com.instagram.android", stickerAssetUri, Intent.FLAG_GRANT_READ_URI_PERMISSION);
            if (myActivity.getPackageManager().resolveActivity(intent, 0) != null) {
                Log.i("yoyo", "SHARE: SHARE_instagram_stories_sticker");
                myActivity.startActivityForResult(intent, 0);
            }
            else
            {Log.i("yoyo", "SHARE: Error");}
            
        }
    }
    
//<------- SHARE_instagram_stories_sticker
    
    
    
//-------> SHARE_instagram_stories_background_and_sticker
    
    public void SHARE_instagram_stories_background_and_sticker(String _ExternalFileToBackground,          //External file of image to share
                                                                 String _ExternalFileToSticker,             //External file of image to share
                                                                 String _attributionLinkUrl)                //A deep link URL to content in your app. MORE INFO: https://developers.facebook.com/docs/instagram/sharing-to-stories/
    {
        if (SHARE_check_permission()==0) //Checa se tem permissão
        {Log.i("yoyo", "SHARE: Permissions not released. Use 'SHARE_get_permission()'");}
        else //Tem permissão
        {
            //Ambiente para compartilhar:
            SHARE_PRE_SHARE();
            
            // Define image asset URI and attribution link URL
            Uri backgroundAssetUri = Uri.fromFile(new File(_ExternalFileToBackground));
            Uri stickerAssetUri = Uri.fromFile(new File(_ExternalFileToSticker));
            String attributionLinkUrl = _attributionLinkUrl;
            
            // Instantiate implicit intent with ADD_TO_STORY action,
            // background asset, sticker asset, and attribution link
            Intent intent = new Intent("com.instagram.share.ADD_TO_STORY");
            intent.setFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            intent.setDataAndType(backgroundAssetUri, "image/*");
            intent.putExtra("interactive_asset_uri", stickerAssetUri);
            intent.putExtra("content_url", attributionLinkUrl);
            
            // Instantiate activity and verify it will resolve implicit intent
            myActivity.grantUriPermission(
                                        "com.instagram.android", stickerAssetUri, Intent.FLAG_GRANT_READ_URI_PERMISSION);
            if (myActivity.getPackageManager().resolveActivity(intent, 0) != null) {
                Log.i("yoyo", "SHARE: instagram_stories_background_and_sticker");
                myActivity.startActivityForResult(intent, 0);
            }
            else
            {Log.i("yoyo", "SHARE: Error");}
        }
    }
    
//<------- SHARE_instagram_stories_background_and_sticker
    
    
    
    
    
} // End of class
