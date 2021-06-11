/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

var _id = async_load[? "id"];
#region  Eventos sociales de google mobile Ads
if _id == GoogleMobileAds_ASyncEvent
{
	var ident = async_load[? "type"];
	switch (ident)
	{
		case "interstitial_load":
		#region Se cargo un interstecial
	        if async_load[? "loaded"] == 1
	        {
				global.interstitial_cargado = true;
				//show_message_async("Interstecial cargado!!!")
	        } else {
				//show_message_async("Interstecial No cargado!!!")
				global.interstitial_cargado = false;
				GoogleMobileAds_Init ( global.interstitial_id , global.app_id)
				GoogleMobileAds_LoadInterstitial();
			}
		#endregion	
        break;
		
		// SE cierra el insterstecial
		case "interstitial_closed":
			GoogleMobileAds_LoadInterstitial();
	    break;
	}
}
#endregion