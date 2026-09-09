import { defineConfig } from 'astro/config';

// Kıvam Kahve landing — static site, ready to deploy to any VPS/CDN.
export default defineConfig({
  site: 'https://kivamkahve.com',
  build: { assets: '_astro' },
});
