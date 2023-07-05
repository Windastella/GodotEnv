# GodotEnv Singleton
# Author: Nik Mirza
# Email: nik96mirza[at]gmail.com
extends Node

var env = {};

@onready var parser = GodotEnvParser.new();


func _ready():
	env = parser.parse("res://.env");


func get_value(valuename: String):
	# prioritized os environment variable
	if(OS.has_environment(valuename)):
		return OS.get_environment(valuename);

	if(env.has(valuename)):
		return env[valuename];

	# return empty
	return "";