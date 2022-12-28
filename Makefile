createdb:
	docker exec -it techschool_db_1 createdb -U postgres -O postgres simple_bank

dropdb:
	docker exec -it techschool_db_1 dropdb -U postgres simple_bank

migrateup:
	migrate -path simplebank/db/migration -database "postgresql://postgres:password@localhost:5436/simple_bank?sslmode=disable" -verbose up

migratedown:
	migrate -path simplebank/db/migration -database "postgresql://postgres:password@localhost:5436/simple_bank?sslmode=disable" -verbose down

