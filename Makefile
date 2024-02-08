GO ?= go

start-local:
	echo "***Starting local env"
	docker-compose up
	echo "Started"

stop-local:
	echo "***Stopping local env"
	docker-compose down
	echo "Stopped"