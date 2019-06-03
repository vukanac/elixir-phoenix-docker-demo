PROJECT_NAME = 'freyja_mock'
.PHONY: new
new:
	docker-compose run --rm web mix phx.new --no-html --no-ecto --no-brunch --app $(PROJECT_NAME) .
	# --no-webpack  --no-context

.PHONY: test
test:
	docker-compose run --rm web mix test

.PHONY: mix
# MIX_FLAGS="phx.gen.json" make mix
mix:
	docker-compose run --rm web mix $(MIX_FLAGS)
