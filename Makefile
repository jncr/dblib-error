run-local:
	trap "docker-compose down" EXIT && docker-compose up -d mssql && sleep 30 && php check.php

run-docker:
	docker-compose up --build