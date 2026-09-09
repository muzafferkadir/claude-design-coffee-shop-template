# Kıvam Kahve — Landing

Karaköy üçüncü nesil kahve evi landing page. Claude Design projesinden implement edildi.
Framework: **Astro** (static output — herhangi bir VPS/CDN'e deploy edilir).

## Çalıştır

```bash
npm install
npm run dev      # http://localhost:4321
npm run build    # dist/ üretir
npm run preview  # build'i lokal önizle
```

## Deploy (VPS)

`npm run build` sonrası `dist/` tamamen statiktir. Nginx örneği:

```nginx
server {
  server_name kivamkahve.com;
  root /var/www/kivam/dist;
  index index.html;
  location / { try_files $uri $uri/ =404; }
}
```

## Asset'ler (önemli)

Design projesindeki bazı binary'ler MCP fetch limitini (256KB) aştığı için otomatik çekilemedi.
Sayfa bunlar olmadan da düzgün çalışır — eksik görseller design system'in kendi kuralına göre
düz renk panel + `fotoğraf alanı` etiketine düşer. Orijinalleri eklemek için design projesinden
indirip şu yollara koy:

- `public/assets/photography/u1.png` … `u6.png` (menü tile'ları, hakkımızda, konum, köpük bandı)
- `public/assets/video/kivam-pour-2.mp4` (hero scroll-scrub videosu)

Elde olan ve eklenmiş asset: `public/assets/video/kivam-pour-poster.jpg` (hero poster/fallback frame).

Video yoksa hero poster frame'i gösterir; mp4 eklenince scroll ile senkron cezve→fincan akışı devreye girer.

## Yapı

- `src/pages/index.astro` — tüm sayfa (markup + design token CSS + hero scroll-scrub JS)
- `public/assets/` — görseller, video
- Fontlar Google Fonts (Petrona / DM Sans / DM Mono) üzerinden yüklenir
