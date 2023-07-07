# GodotEnv Singleton
# Author: Nik Mirza
# Email: nik96mirza[at]gmail.com
extends Node


func get_value(valuename: String):
	# prioritized os environment variable
	var env = parse("res://.env")

	if OS.has_environment(valuename):
		return OS.get_environment(valuename)

	if env.has(valuename):
		return env[valuename]

	# return empty
	return ""


func parse(filename):
	if !FileAccess.file_exists(filename):
		return {}

	var file = FileAccess.open(filename, FileAccess.READ)

	var env = {}
	var line = ""

	while !file.eof_reached():
		line = file.get_line()
		var o = line.split("=")

		if o.size() == 2:  # only check valid lines
			env[o[0]] = o[1].lstrip('"').rstrip('"')

	return env
