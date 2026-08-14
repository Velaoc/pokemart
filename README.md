<!-- foundation:identity -->
# Pokemart

Pokemart.

- Site: https://pokemart.api.holode.xyz
- Support: support@pokemart.api.holode.xyz
<!-- /foundation:identity -->

## What this is

Pokemart.

## Run locally

```bash
bundle install
bin/rails db:prepare
bin/dev
```

Requires Ruby, PostgreSQL, and the usual Rails toolchain. See `bin/setup` if present.

## Deploy notes

Production `config.hosts` is derived from `domain` in `config/foundation.yml`. Keep that value aligned with the real host or every request will 403.
