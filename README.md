# Godot DotEnv Class

A simple implementation of DotEnv. Allow usage of .env file in godot. Also retrieve OS Environment Variable if available.

## Usage

Add `/godotenv/scripts/env.gd` to Autoloader.

Retrieve Environment Variable by

`var env_var = get_node("/root/env").get_value("ENV_VAR")`

Or if you left the default name of the Autoloader

`Env.get_value("ENV_VAR")`