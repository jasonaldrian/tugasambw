class MResep{
  String namamenu;
  String alamatURL;
  String gambarURL;

  MResep(this.namamenu,this.alamatURL,this.gambarURL);

  static List<MResep> isiResep=[
    MResep("Bola-Bola bakwan sayur", "https://cookpad.com/id/resep/16338916-bola-bola-bakwan-sayur?ref=search&search_term=bakwan%20sayur", "https://img-global.cpcdn.com/recipes/d8691b7fb9329d8a/680x482cq70/bola-bola-bakwan-sayur-foto-resep-utama.webp"),
    MResep("Raisin Banana Cake", "https://cookpad.com/id/resep/14352214-raisin-banana-cake-2-telur?ref=guest_feed", "https://img-global.cpcdn.com/recipes/49a7441f90c845a9/680x482cq70/raisin-banana-cake-2-telur-foto-resep-utama.webp"),
    MResep("Crispy Shrimp Salted Egg", "https://cookpad.com/id/resep/16325602-340-crispy-shrimp-salted-egg?ref=guest_feed", "https://img-global.cpcdn.com/recipes/b98ccb174f986952/680x482cq70/340-crispy-shrimp-salted-egg-foto-resep-utama.webp"),
    MResep("Tongseng Iga Sapi", "https://cookpad.com/id/premium/recipes/5Bq9Jp?via=premium_page_recipe_teaser", "https://img-global.cpcdn.com/recipes/56ad7b8a06d2127b/680x482cq70/tongseng-iga-sapi-foto-resep-utama.webp"),
    MResep("Tongseng Ayam Santan", "https://cookpad.com/id/premium/recipes/X4GJm?via=premium_page_recipe_teaser", "https://img-global.cpcdn.com/recipes/307be4a041cd7e1c/680x482cq70/tongseng-ayam-santan-lezatt-foto-resep-utama.webp")
  ];
}