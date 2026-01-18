// @ts-check
import { defineConfig } from "astro/config";
import tailwindcss from "@tailwindcss/vite";
import vitePluginSvgr from "vite-plugin-svgr";
import react from "@astrojs/react";
import sitemap from "@astrojs/sitemap";

// https://astro.build/config
export default defineConfig({
  site: "https://stylesphere.com",
  base: '/stylesphere/',
  vite: {
    plugins: [tailwindcss(), vitePluginSvgr({})],
  },
  devToolbar: {
    enabled: false,
  },
  integrations: [react()],

  markdown: {
    shikiConfig: {
      defaultColor: false,
      themes: {
        light: "github-light-high-contrast", // one-light
        dark: "github-dark", // plastic
      },
      wrap: true,
    },
  },

  prefetch: {
    prefetchAll: true,
    // defaultStrategy: "load",
  },

  output: "static",
});
