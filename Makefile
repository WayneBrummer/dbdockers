ifndef VERBOSE
.SILENT:
endif
.PHONY: default restart end clean start-services stop-services start stop 

default: stop-compose start-compose 
restart: stop-compose default
end: stop-compose

start-compose:
	docker-compose -f docker-compose.yml up -d

stop-compose:
	docker-compose -f docker-compose.yml down