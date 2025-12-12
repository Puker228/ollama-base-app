up:
	docker compose build
	docker compose down
	docker compose up -d
	docker exec -it ollama ollama run gemma3:270m

stop:
	docker compose stop

format:
	uv run ruff check --select I,F401 --fix
	uv run ruff format
