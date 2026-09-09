# Claude Design — Coffee Shop Landing Page (Free Template)

Claude Design ile sifirdan uretilmis ornek bir kahve dukkani landing page template.
"Claude'a Guzel Site Yap Demek Yetmiyor" YouTube videosunun cikti dosyalari.

Butik Turk kahvecisi (Kivam Kahve, Karakoy) icin uydurma bir marka.
Tasarim, scroll video animasyonu ve tum gorseller Claude Design + ChatGPT ile uretildi. Ucretsiz kullanabilirsiniz.

## Canli Demo
https://muzafferkadir.github.io/claude-design-coffee-shop-template/

## Video
Nasil yapildigini anlatan video ➤ https://youtu.be/cqfNtvzIApA

## Icerik
- `index.html` — tek dosyalik site
- `assets/photography/` — AI ile uretilen gorseller
- `assets/video/kivam-pour.mp4` — hero scroll animasyonu

## Calistirma
`index.html` dosyasini tarayicida ac. Baska bir sey gerekmez.

## Lisans
Ucretsiz — kendinize gore duzenleyip kullanabilirsiniz.

## Astro ve Hostinger VPS

Astro sürümü `src/pages/index.astro` içinde bulunur. Kök `index.html` ve `assets/` dosyaları mevcut GitHub Pages demosu için korunur.

```bash
npm ci
npm run build
```

Build çıktısı `dist/` dizinindedir. Hostinger MCP deploy config’i kökteki `docker-compose.yaml` dosyasıdır. Build servisi GitHub main branch’ini indirir, siteyi üretir; Nginx çıktıyı port 80 üzerinden sunar. Ayrıntılar: [deploy/README.md](deploy/README.md).
