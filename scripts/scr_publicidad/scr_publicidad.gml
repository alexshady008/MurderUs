function scr_publicidad() {
	if (global.publicidad == true) and (global.interstitial_cargado == true)
	{
		global.interstitial_cargado = false
		GoogleMobileAds_ShowInterstitial()
	}


}
