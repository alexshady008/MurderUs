/*
    ---> Project: Share - Mobile Extension
    ---> Author: Irlan Bragi
    ---> Organization: Bragi Estúdios
    ---> Creation date: December 2019
    ---> Contact: irlan@bragiestudios.com
 
    ---> Copyright © 2019 Bragi Estúdios. All rights reserved. https://bragiestudios.com
*/

//from_gif:

    #define SHARE_image_from_gif
    /// @param gif_index
    /// @param ExternalPathToSaveAndFilename
    /// @param title
    /// @param text
    /// @param SocialNetwork

    var _gif                             = argument0;
    var _ExternalPathToSaveAndFilename   = argument1;
    var _title                           = argument2;
    var _text                            = argument3;
    var _SocialNetwork                   = argument4;
    
    var _ExternalPathToSaveAndFilename   = SHARE_get_external_path(_ExternalPathToSaveAndFilename);

    gif_save(_gif, _ExternalPathToSaveAndFilename)

    SHARE__file(_ExternalPathToSaveAndFilename,_title,_text, _SocialNetwork,"image/gif");

    return _ExternalPathToSaveAndFilename;




//from_surface:

	#define SHARE_image_from_surface
	/// @param id_surface
	/// @param ExternalPathToSaveAndFilename
	/// @param title
    /// @param text
	/// @param SocialNetwork

	var _surface				            = argument0;
	var _ExternalPathToSaveAndFilename  	= argument1;
	var _title				                = argument2;
    var _text                               = argument3;
	var _SocialNetwork			            = argument4;

	var _ExternalPathToSaveAndFilename 	    = SHARE_get_external_path(_ExternalPathToSaveAndFilename);

	surface_save(_surface, _ExternalPathToSaveAndFilename)
	
	SHARE__file(_ExternalPathToSaveAndFilename,_title,_text, _SocialNetwork,"image/png");
	
	return _ExternalPathToSaveAndFilename;



//from_screen:


	#define SHARE_image_from_screen
	/// @param ExternalPathToSaveAndFilename
	/// @param title
    /// @param text
	/// @param SocialNetwork

	var _ExternalPathToSaveAndFilename  	= argument0;
	var _title				                = argument1;
    var _text                               = argument2;
	var _SocialNetwork			            = argument3;

	var _ExternalPathToSaveAndFilename 	    = SHARE_get_external_path(_ExternalPathToSaveAndFilename);

	// - changed to save application_surface in version 1.2.0 - // screen_save(_ExternalPathToSaveAndFilename)
    surface_save(application_surface, _ExternalPathToSaveAndFilename)
	
	SHARE__file(_ExternalPathToSaveAndFilename,_title,_text, _SocialNetwork,"image/png");
	
	return _ExternalPathToSaveAndFilename;



	#define SHARE_image_from_screen_part
	/// @param x
	/// @param y
	/// @param w
	/// @param h
	/// @param ExternalPathToSaveAndFilename
	/// @param title
    /// @param text
	/// @param SocialNetwork

	var _xSurf							= argument0;
	var _ySurf							= argument1;
	var _wSurf							= argument2;
	var _hSurf							= argument3;
	var _ExternalPathToSaveAndFilename  = argument4;
	var _title							= argument5;
    var _text                           = argument6;
	var _SocialNetwork					= argument7;

	var _ExternalPathToSaveAndFilename  = SHARE_get_external_path(_ExternalPathToSaveAndFilename);

	// - changed to save application_surface in version 1.2.0 - //  screen_save_part(_ExternalPathToSaveAndFilename,_xSurf,_ySurf,_wSurf,_hSurf)
    surface_save_part(application_surface, _ExternalPathToSaveAndFilename,_xSurf,_ySurf,_wSurf,_hSurf);
	
	SHARE__file(_ExternalPathToSaveAndFilename,_title,_text, _SocialNetwork,"image/png");
	
	return _ExternalPathToSaveAndFilename;



//from_included_file:


	#define SHARE_file_from_included_file
	/// @param IncludedFile
	/// @param ExternalPathToSave
	/// @param title
    /// @param text
	/// @param SocialNetwork
	/// @param MIMEtype

	var _IncludedFile            = argument0;
	var _ExternalPathToSave      = argument1;
	var _title                   = argument2;
    var _text                    = argument3;
	var _SocialNetwork           = argument4;
	var _MIMEtype                = argument5;

	var _FinalExternalPathToSave = SHARE_get_external_path(_ExternalPathToSave)+"/"+_IncludedFile;

	file_copy(_IncludedFile,_FinalExternalPathToSave)

	SHARE__file(_FinalExternalPathToSave, _title, _text, _SocialNetwork, _MIMEtype)
	
	return _FinalExternalPathToSave;


//Instagram:

    //from_surface:

        #define SHARE_instagram_stories_from_surface
        /// @param id_surface
        /// @param ExternalPathToSaveAndFilename
        /// @param attributionLinkUrl

        var _surface                        = argument0;
        var _ExternalPathToSaveAndFilename  = argument1;
        var _attributionLinkUrl             = argument2;

        var _ExternalPathToSaveAndFilename  = SHARE_get_external_path(_ExternalPathToSaveAndFilename);

        surface_save(_surface, _ExternalPathToSaveAndFilename)

        SHARE_instagram_stories(_ExternalPathToSaveAndFilename,_attributionLinkUrl, false);

        return _ExternalPathToSaveAndFilename;
        
        
        #define SHARE_instagram_stories_sticker_from_surface
        /// @param id_surface
        /// @param ExternalPathToSaveAndFilename
        /// @param attributionLinkUrl
        /// @param top_background_color
        /// @param bottom_background_color

        var _surface                        = argument0;
        var _ExternalPathToSaveAndFilename  = argument1;
        var _attributionLinkUrl             = argument2;
        var _top_background_color           = argument3;
        var _bottom_background_color        = argument4;

        var _ExternalPathToSaveAndFilename  = SHARE_get_external_path(_ExternalPathToSaveAndFilename);

        surface_save(_surface, _ExternalPathToSaveAndFilename)


        SHARE_instagram_stories_sticker(_ExternalPathToSaveAndFilename,_attributionLinkUrl, _top_background_color, _bottom_background_color)
        
        return _ExternalPathToSaveAndFilename;
        
        
        

    //from_screen:

        #define SHARE_instagram_stories_from_screen
        /// @param ExternalPathToSaveAndFilename
        /// @param attributionLinkUrl

        var _ExternalPathToSaveAndFilename  = argument0;
        var _attributionLinkUrl             = argument1;

        var _ExternalPathToSaveAndFilename  = SHARE_get_external_path(_ExternalPathToSaveAndFilename);

        screen_save(_ExternalPathToSaveAndFilename)

        SHARE_instagram_stories(_ExternalPathToSaveAndFilename,_attributionLinkUrl, false);

        return _ExternalPathToSaveAndFilename;
        
        
        
        #define SHARE_instagram_stories_from_screen_part
        /// @param x
        /// @param y
        /// @param w
        /// @param h
        /// @param ExternalPathToSaveAndFilename
        /// @param attributionLinkUrl

        var _xSurf                            = argument0;
        var _ySurf                            = argument1;
        var _wSurf                            = argument2;
        var _hSurf                            = argument3;
        var _ExternalPathToSaveAndFilename    = argument4;
        var _attributionLinkUrl               = argument5;

        var _ExternalPathToSaveAndFilename    = SHARE_get_external_path(_ExternalPathToSaveAndFilename);

        screen_save_part(_ExternalPathToSaveAndFilename,_xSurf,_ySurf,_wSurf,_hSurf)
        
        SHARE_instagram_stories(_ExternalPathToSaveAndFilename,_attributionLinkUrl, false);
        
        return _ExternalPathToSaveAndFilename;



    //from_included_file:
    
        #define SHARE_instagram_stories_from_included_file
        /// @param IncludedFile
        /// @param ExternalPathToSave
        /// @param attributionLinkUrl
        /// @param isVideo

        var _IncludedFile            = argument0;
        var _ExternalPathToSave      = argument1;
        var _attributionLinkUrl      = argument2;
        var _isVideo                 = argument3;

        var _FinalExternalPathToSave = SHARE_get_external_path(_ExternalPathToSave)+"/"+_IncludedFile;

        file_copy(_IncludedFile,_FinalExternalPathToSave)

        SHARE_instagram_stories(_FinalExternalPathToSave,_attributionLinkUrl, _isVideo)
        
        return _FinalExternalPathToSave;





        #define SHARE_instagram_stories_sticker_from_included_file
        /// @param IncludedFile
        /// @param ExternalPathToSave
        /// @param attributionLinkUrl
        /// @param top_background_color
        /// @param bottom_background_color

        var _IncludedFile               = argument0;
        var _ExternalPathToSave         = argument1;
        var _attributionLinkUrl         = argument2;
        var _top_background_color       = argument3;
        var _bottom_background_color    = argument4;

        var _FinalExternalPathToSave    = SHARE_get_external_path(_ExternalPathToSave)+"/"+_IncludedFile;

        file_copy(_IncludedFile,_FinalExternalPathToSave)

        SHARE_instagram_stories_sticker(_FinalExternalPathToSave,_attributionLinkUrl, _top_background_color, _bottom_background_color)
        
        return _FinalExternalPathToSave;

        

        #define SHARE_instagram_stories_background_and_sticker_from_included_file
        /// @param IncludedFileToBackground
        /// @param IncludedFileToSticker
        /// @param ExternalPathToSave
        /// @param attributionLinkUrl

        var _IncludedFileToBackground   = argument0;
        var _IncludedFileToSticker      = argument1;
        var _ExternalPathToSave         = argument2;
        var _attributionLinkUrl         = argument3;

        var _FinalExternalPathToSave_ToBackground = SHARE_get_external_path(_ExternalPathToSave)+"/"+_IncludedFileToBackground;
        var _FinalExternalPathToSave_ToSticker    = SHARE_get_external_path(_ExternalPathToSave)+"/"+_IncludedFileToSticker;

        file_copy(_IncludedFileToBackground,_FinalExternalPathToSave_ToBackground)
        file_copy(_IncludedFileToSticker,_FinalExternalPathToSave_ToSticker)

        SHARE_instagram_stories_background_and_sticker(_FinalExternalPathToSave_ToBackground,_FinalExternalPathToSave_ToSticker, _attributionLinkUrl)
        
        return _FinalExternalPathToSave_ToBackground+"||"+_FinalExternalPathToSave_ToSticker;



