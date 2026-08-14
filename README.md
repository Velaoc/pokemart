# PokéMart

An Instagram-style Pokémon card storefront: a mobile-first visual feed of cards, tap to inspect, Turbo add-to-cart with a live counter, and guest checkout with a signed, expiring receipt link.

Built on Vela's Rails production foundation with Material Design 3.

## What it does

- **Card feed** — the public root is a responsive visual grid of Pokémon cards (2 columns on phones up to 6 on very wide screens), each with its artwork, rarity chip, and market price.
- **Inspect** — tapping a card opens a detail panel in a Turbo frame: full art, set, card number, rarity, price, quantity.
- **Add to cart** — adding from the feed or detail updates the cart badge live via Turbo Stream, no full page reload.
- **Guest checkout** — no account needed. Checkout asks for an email and completes through a local test simulator in the preview (Stripe-ready: wire real credentials for live settlement).
- **Signed receipts** — the receipt page is reachable through a signed, expiring link emailed after checkout.
- **Legal pages** — versioned Terms of Service and Privacy Policy, linked from the footer and signup, describing the actual demo data flows.

## Demo catalog

Seeded with 19 real Pokémon cards across rarities (Double Rare, Ultra Rare, Special Illustration Rare, Mega Hyper Rare, Hyper Rare, Rare) from Phantasmal Flames, Ascended Heroes, Prismatic Evolutions, Temporal Forces, Destined Rivals, and Paldean Fates — official card art and real market USD prices (market snapshots, not live quotes).

Pokémon is a trademark of Nintendo / Creatures Inc. / GAME FREAK inc. This is an independent demo, not affiliated with or endorsed by The Pokémon Company.

## Stack

- Ruby on Rails (Hotwire: Turbo Drive, Frames, Streams)
- Material Design 3 tokens and components
- PostgreSQL
- Foundation storefront module: session cart, guest checkout, local checkout simulator, signed receipt links

## Development

```bash
bin/setup
bin/rails db:seed   # loads the demo card catalog (dev/preview only)
bin/dev
```

## Deployment

The hosted demo wipes daily at 3AM Mexico City and is throwaway. The repo is the keeper — fork it, wire your own Stripe test/live credentials via environment variables (never commit secrets), fill in the operator details named in the Terms/Privacy pages, and deploy on your own server.

## License

See [LICENSE](LICENSE). Card artwork and Pokémon trademarks belong to their respective owners; demo prices are sample data.
