## Docker compose example for ruby

Docker-compose in dev environment simplify the environment configuration and guarantees the uniformity of them for all devs working with the application.

Makefile provides a simple approach to share common commands in our dev environment for daily task, from opening our app console to running migrations

## Basic Usage

Write `make console`in your favourite shell terminal to get a ruby interactive terminal.

For this example only redis is available so in the irb console `redis.set "foo", "bar"`will write a key in the redis instance.
