function fixed(argument0, argument1) {
	var value = argument0;
	var dec = argument1;

	var mult = power(10, dec);
	return floor(value*mult)/mult;


}
