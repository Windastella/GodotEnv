# GodotEnv Singleton
# Author: Nik Mirza
# Email: nik96mirza[at]gmail.com
extends Node

onready var parser = GodotEnv_Parser.new();
var env = {};

func _ready():
	env = parser.parse("res://.env");
	
func get(name):
	# prioritized os environment variable
	if(OS.has_environment(name)):
		return OS.get_environment(name);
		
	if(env.has(name)):
		return env[name];
	# return empty
	return "";