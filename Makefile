# 起動系
up:
	docker-compose up -d --build

down:
	docker-compose down

restart:
	docker-compose down && docker-compose up -d --build

# Laravel アプリケーション操作
artisan:
	docker-compose run --rm app php artisan $(cmd)

migrate:
	docker-compose run --rm app php artisan migrate

key-generate:
	docker-compose run --rm app php artisan key:generate

# Issue 一括作成
issues:
	cd scripts && chmod +x create-issues.sh && ./create-issues.sh
