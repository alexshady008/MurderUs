/// @description Obtiene el texto asincronico ingresado para el nombre
// Puede escribir su código en este editor
var i_d = ds_map_find_value (async_load, "id");
if i_d == global.nombre_async
{
	if ds_map_find_value(async_load, "status")
	{
		if ds_map_find_value(async_load, "result") != ""
		{
			entradaTeclado = ds_map_find_value(async_load, "result");
			alarm[10] = 1
		}
	}
}