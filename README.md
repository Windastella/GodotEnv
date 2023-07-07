# Godot DotEnv Class

A simple implementation of DotEnv. Allow usage of .env file in godot. Also retrieve OS Environment Variable if available.

## Usage

Add `/godotenv/scripts/env.gd` to Autoloader.

If you left the default name of you script in the Autoloader you can retrieve the Environment Variable by

`Env.get_value("ENV_VAR")`
