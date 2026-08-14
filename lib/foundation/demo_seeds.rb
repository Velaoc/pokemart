# frozen_string_literal: true

module Foundation
  # Optional demo catalog rows (SPEC M10.3).
  #
  # The application boots and serves every page with an empty database, so no
  # seed is ever required. These rows exist only to make the storefront and
  # checkout walkable on a developer machine or in a hosted preview, and they
  # are refused everywhere else — a production deployment must never find
  # invented products in its catalog.
  #
  # PokéMart: a real Pokémon card catalog with official card images, real
  # market USD prices, and set/rarity metadata. Prices are market snapshots
  # (rarebox-data, August 2026) for demo display, not live quotes.
  module DemoSeeds
    PRODUCTS = [
      { slug: "mega-charizard-x-ex-sir", sku: "POKE-ME2-125", name: "Mega Charizard X ex",
        description: "Special Illustration Rare from Phantasmal Flames (me2). One of the chase cards of the set.",
        price_cents: 75_344, position: 0, inventory_quantity: 3, rarity: "Special Illustration Rare",
        set_name: "Phantasmal Flames", card_number: "125", image_url: "https://images.pokemontcg.io/me2/125.png" },
      { slug: "mega-charizard-x-ex-mhr", sku: "POKE-ME2-130", name: "Mega Charizard X ex",
        description: "Mega Hyper Rare from Phantasmal Flames (me2).",
        price_cents: 31_825, position: 1, inventory_quantity: 4, rarity: "Mega Hyper Rare",
        set_name: "Phantasmal Flames", card_number: "130", image_url: "https://images.pokemontcg.io/me2/130.png" },
      { slug: "mega-charizard-x-ex-ur", sku: "POKE-ME2-109", name: "Mega Charizard X ex",
        description: "Ultra Rare from Phantasmal Flames (me2).",
        price_cents: 2_978, position: 2, inventory_quantity: 8, rarity: "Ultra Rare",
        set_name: "Phantasmal Flames", card_number: "109", image_url: "https://images.pokemontcg.io/me2/109.png" },
      { slug: "mega-charizard-x-ex-dr", sku: "POKE-ME2-13", name: "Mega Charizard X ex",
        description: "Double Rare from Phantasmal Flames (me2).",
        price_cents: 468, position: 3, inventory_quantity: 20, rarity: "Double Rare",
        set_name: "Phantasmal Flames", card_number: "13", image_url: "https://images.pokemontcg.io/me2/13.png" },
      { slug: "mega-charizard-y-ex-mhr", sku: "POKE-M2P5-294", name: "Mega Charizard Y ex",
        description: "Mega Hyper Rare from Ascended Heroes (me2pt5).",
        price_cents: 43_249, position: 4, inventory_quantity: 3, rarity: "Mega Hyper Rare",
        set_name: "Ascended Heroes", card_number: "294", image_url: "https://images.scrydex.com/pokemon/me2pt5-294/small" },
      { slug: "mega-charizard-y-ex-dr", sku: "POKE-M2P5-22", name: "Mega Charizard Y ex",
        description: "Double Rare from Ascended Heroes (me2pt5).",
        price_cents: 737, position: 5, inventory_quantity: 15, rarity: "Double Rare",
        set_name: "Ascended Heroes", card_number: "22", image_url: "https://images.scrydex.com/pokemon/me2pt5-22/small" },
      { slug: "umbreon-ex-sir", sku: "POKE-SV8P5-161", name: "Umbreon ex",
        description: "Special Illustration Rare from Prismatic Evolutions (sv8pt5). One of the most wanted cards in the modern era.",
        price_cents: 148_032, position: 6, inventory_quantity: 2, rarity: "Special Illustration Rare",
        set_name: "Prismatic Evolutions", card_number: "161", image_url: "https://images.pokemontcg.io/sv8pt5/161.png" },
      { slug: "umbreon-ex-dr", sku: "POKE-SV8P5-60", name: "Umbreon ex",
        description: "Double Rare from Prismatic Evolutions (sv8pt5).",
        price_cents: 741, position: 7, inventory_quantity: 12, rarity: "Double Rare",
        set_name: "Prismatic Evolutions", card_number: "60", image_url: "https://images.pokemontcg.io/sv8pt5/60.png" },
      { slug: "umbreon", sku: "POKE-SV8P5-59", name: "Umbreon",
        description: "Rare from Prismatic Evolutions (sv8pt5).",
        price_cents: 44, position: 8, inventory_quantity: 40, rarity: "Rare",
        set_name: "Prismatic Evolutions", card_number: "59", image_url: "https://images.pokemontcg.io/sv8pt5/59.png" },
      { slug: "gengar-ex-ur", sku: "POKE-SV5-193", name: "Gengar ex",
        description: "Ultra Rare from Temporal Forces (sv5).",
        price_cents: 6_213, position: 9, inventory_quantity: 6, rarity: "Ultra Rare",
        set_name: "Temporal Forces", card_number: "193", image_url: "https://images.pokemontcg.io/sv5/193.png" },
      { slug: "gengar-ex-dr", sku: "POKE-SV5-104", name: "Gengar ex",
        description: "Double Rare from Temporal Forces (sv5).",
        price_cents: 562, position: 10, inventory_quantity: 15, rarity: "Double Rare",
        set_name: "Temporal Forces", card_number: "104", image_url: "https://images.pokemontcg.io/sv5/104.png" },
      { slug: "team-rockets-mewtwo-ex-sir", sku: "POKE-SV10-231", name: "Team Rocket's Mewtwo ex",
        description: "Special Illustration Rare from Destined Rivals (sv10).",
        price_cents: 51_726, position: 11, inventory_quantity: 3, rarity: "Special Illustration Rare",
        set_name: "Destined Rivals", card_number: "231", image_url: "https://images.pokemontcg.io/sv10/231.png" },
      { slug: "team-rockets-mewtwo-ex-hr", sku: "POKE-SV10-240", name: "Team Rocket's Mewtwo ex",
        description: "Hyper Rare from Destined Rivals (sv10).",
        price_cents: 6_183, position: 12, inventory_quantity: 5, rarity: "Hyper Rare",
        set_name: "Destined Rivals", card_number: "240", image_url: "https://images.pokemontcg.io/sv10/240.png" },
      { slug: "team-rockets-mewtwo-ex-ur", sku: "POKE-SV10-213", name: "Team Rocket's Mewtwo ex",
        description: "Ultra Rare from Destined Rivals (sv10).",
        price_cents: 2_090, position: 13, inventory_quantity: 9, rarity: "Ultra Rare",
        set_name: "Destined Rivals", card_number: "213", image_url: "https://images.pokemontcg.io/sv10/213.png" },
      { slug: "team-rockets-mewtwo-ex-dr", sku: "POKE-SV10-81", name: "Team Rocket's Mewtwo ex",
        description: "Double Rare from Destined Rivals (sv10).",
        price_cents: 147, position: 14, inventory_quantity: 25, rarity: "Double Rare",
        set_name: "Destined Rivals", card_number: "81", image_url: "https://images.pokemontcg.io/sv10/81.png" },
      { slug: "mega-gengar-ex-sir", sku: "POKE-M2P5-284", name: "Mega Gengar ex",
        description: "Special Illustration Rare from Ascended Heroes (me2pt5).",
        price_cents: 118_910, position: 15, inventory_quantity: 2, rarity: "Special Illustration Rare",
        set_name: "Ascended Heroes", card_number: "284", image_url: "https://images.scrydex.com/pokemon/me2pt5-284/small" },
      { slug: "mega-gengar-ex-dr", sku: "POKE-M2P5-125", name: "Mega Gengar ex",
        description: "Double Rare from Ascended Heroes (me2pt5).",
        price_cents: 332, position: 16, inventory_quantity: 18, rarity: "Double Rare",
        set_name: "Ascended Heroes", card_number: "125", image_url: "https://images.scrydex.com/pokemon/me2pt5-125/small" },
      { slug: "charizard-ex-sir", sku: "POKE-SV4P5-234", name: "Charizard ex",
        description: "Special Illustration Rare from Paldean Fates (sv4pt5).",
        price_cents: 28_270, position: 17, inventory_quantity: 4, rarity: "Special Illustration Rare",
        set_name: "Paldean Fates", card_number: "234", image_url: "https://images.pokemontcg.io/sv4pt5/234.png" },
      { slug: "charizard-ex-dr", sku: "POKE-SV4P5-54", name: "Charizard ex",
        description: "Double Rare from Paldean Fates (sv4pt5).",
        price_cents: 533, position: 18, inventory_quantity: 16, rarity: "Double Rare",
        set_name: "Paldean Fates", card_number: "54", image_url: "https://images.pokemontcg.io/sv4pt5/54.png" }
    ].freeze

    # Development or a hosted preview only. Preview runs in the production
    # Rails environment, so the preview flag — not RAILS_ENV alone — is what
    # separates a disposable demo from a real deployment.
    def self.permitted?(rails_env: Rails.env, preview: Foundation.preview?)
      rails_env.development? || preview
    end

    def self.run!(io: $stdout)
      unless permitted?
        io.puts("Skipping demo seeds: they are limited to development and hosted previews.")
        return 0
      end

      unless Foundation.storefront_enabled?
        io.puts("Skipping demo seeds: the storefront is disabled in config/foundation.yml.")
        return 0
      end

      created = seed_products!
      io.puts("Demo catalog ready: #{PRODUCTS.length} products (#{created} created).")
      created
    end

    # Upserts by slug so repeated runs converge on the same catalog instead of
    # duplicating rows.
    def self.seed_products!
      created = 0

      PRODUCTS.each do |attributes|
        product = Foundation::Storefront::Product.find_or_initialize_by(slug: attributes[:slug])
        created += 1 if product.new_record?
        product.update!(**attributes, currency: "USD", active: true)
      end

      created
    end
  end
end
