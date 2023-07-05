# dotenv parser class
# Author: Nik Mirza
# Email: nik96mirza[at]gmail.com
class_name GodotEnvParser


func parse(filename):
	if(!FileAccess.file_exists(filename)):
		return {};

	var file = FileAccess.open(filename, FileAccess.READ)

	var env = {};
	var line = "";

	while !file.eof_reached():
		line = file.get_line();
		var o = line.split("=");

		if(o.size() == 2): # only check valid lines
			env[o[0]] = o[1].lstrip("\"").rstrip("\"");

	return env;
