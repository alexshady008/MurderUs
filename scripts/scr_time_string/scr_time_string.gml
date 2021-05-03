///@function scr_time_string(segundos)
function scr_time_string(_segundos) {
	_segundos = floor(_segundos);
	var _minutos = floor(_segundos / 60);
	_segundos = _segundos mod 60;
	var _horas = floor(_minutos / 60);
	_minutos = _minutos mod 60;
	return (_horas < 10 ? "0" : "") + string(_horas) + ":" +
		(_minutos < 10 ? "0" : "") + string(_minutos) + ":" +
		(_segundos < 10 ? "0" : "") + string(_segundos);
}