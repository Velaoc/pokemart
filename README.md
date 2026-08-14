<!-- foundation:identity -->
# PokMart

Instagram-style Pokmon card storefront: a mobile-first visual feed of cards, tap to inspect, Turbo add-to-cart with a live counter, and guest checkout with a signed expiring receipt link.

- Site: https://pokemart.api.holode.xyz
- Support: support@pokemart.api.holode.xyz
<!-- /foundation:identity -->

## What this is

Instagram-style Pokémon card storefront: a mobile-first visual feed of cards, tap to inspect, Turbo add-to-cart with a live counter, and guest checkout with a signed expiring receipt link.

## Who it is for

- Guest shopper (browse and buy without an account)
- Signed-in owner (sees their own orders)

## Main features

- **Browse card feed** — Public root shows a scrollable visual grid of cards with prices
- **Inspect card** — Tap a card to open detail in a Turbo frame — image, set, rarity, price
- **Add to cart** — Add to cart from feed or detail; cart counter updates without a full reload
- **Guest checkout** — Enter an email, complete via local test simulator, receive a signed expiring receipt link
- **View receipt** — Open order receipt via signed token link; signed-in owners see their own orders

## Core entities

- Product
- Cart
- CartItem
- Order
- OrderItem

## Included foundation modules

- storefront

## Run locally

```bash
bundle install
bin/rails db:prepare
bin/dev
```

Requires Ruby, PostgreSQL, and the usual Rails toolchain. See `bin/setup` if present.

## Demo

18-24 real Pokémon cards across rarities (Double Rare, Ultra Rare, Special Illustration Rare, Mega Hyper Rare, Rare) with real market USD prices and official card images, e.g. Mega Charizard X ex, Umbreon ex, Gengar ex, Team Rocket's Mewtwo ex.

## Deploy notes

Production `config.hosts` is derived from `domain` in `config/foundation.yml`. Keep that value aligned with the real host or every request will 403.
