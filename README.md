# StyleSphere

**StyleSphere** is a modern, reader-friendly fashion blog starter built with **Astro v5**, **Tailwind CSS v4**, and optimized for SEO and responsiveness across all devices. Perfect for fashion blogs and content-focused websites.

<!-- Dummy commit to trigger deployment -->

## Features

- [x] Modern & minimalist design with responsive layout
- [x] Light & Dark mode with system preference detection
- [x] Static site generation for optimal performance
- [x] Automatic sitemap and RSS feed generation
- [x] SEO optimization (Open Graph, Twitter Cards, Canonical URLs)
- [x] Markdown-based blog posts with frontmatter metadata
- [x] Syntax highlighting with Shiki
- [x] Featured posts and tag-based organization
- [x] Archive and chronological browsing
- [x] Reading time estimation
- [x] TypeScript support
- [x] Component-based architecture with Astro & React
- [x] Tailwind CSS v4 for styling
- [x] Code quality tools (ESLint & Prettier)

## Project Structure

```
StyleSphere
├── public/
│   └── favicon.svg
│
├── src/
│   ├── assets/
│   │   └── ... (static assets like fonts, icons)
│   ├── blog/
│   │   ├── post-title.md
│   │   ├── another-post.md
│   │   └── ... (add your fashion posts here)
│   │
│   ├── components/
│   │   ├── CopyButton.astro
│   │   ├── FeatureCard.astro
│   │   ├── Featured.astro
│   │   ├── Footer.astro
│   │   ├── Header.astro
│   │   ├── Introduction.astro
│   │   ├── Navigation.astro
│   │   ├── Newsletterastro
│   │   ├── Pagination.astro
│   │   ├── PostCard.astro
│   │   ├── ProgressBar.tsx
│   │   ├── Seo.astro
│   │   ├── Socials.astro
│   │   ├── ThemeToggle.tsx
│   │   ├── Title.astro
│   │   └── Year.astro
│   │
│   ├── layouts/
│   │   ├── BaseLayout.astro
│   │   └── BlogLayout.astro
│   │
│   ├── pages/
│   │   ├── index.astro
│   │   ├── [...slug].astro
│   │   ├── 404.astro
│   │   ├── rss.xml.ts
│   │   ├── robots.txt.ts
│   │   ├── archive/
│   │   │   ├── [page].astro
│   │   │   └── [year]/[page].astro
│   │   └── tags/
│   │       ├── index.astro
│   │       └── [tag]/[page].astro
│   │
│   ├── styles/
│   │   ├── global.css
│   │   └── typography.css
│   │
│   └── content.config.ts
│
├── .gitignore
├── .prettierrc
├── astro.config.mjs
├── tsconfig.json
├── eslint.config.js
├── package.json
├── LICENSE
└── README.md
```

## Tech Stack

- [Astro v5](https://astro.build) - Static site generator
- [React](https://reactjs.org/) - UI library for interactive components
- [TypeScript](https://www.typescriptlang.org/) - Typed JavaScript superset
- [Tailwind CSS v4](https://tailwindcss.com/) - Utility-first CSS framework
- [Tabler Icons](https://tabler-icons.io/) - Icon library
- [Fontsource](https://fontsource.org/) - Self-hosted web fonts
- [GitHub Pages](https://pages.github.com/) - Deployment platform
- [Shiki](https://shiki.matsu.io/) - Syntax highlighting
- [RSS](https://www.npmjs.com/package/rss) - RSS feed generation
- [Sitemap](https://www.npmjs.com/package/sitemap) - Sitemap generation
- [ESLint](https://eslint.org/) & [Prettier](https://prettier.io/) - Code quality and formatting

## Installation

```bash
# Clone or download the project
git clone https://github.com/yourusername/stylesphere.git
cd stylesphere

# Install dependencies
npm install

# Start development server
npm run dev
```

The site will be available at `http://localhost:4321`

### Commands

| Command             | Description                        |
| ------------------- | ---------------------------------- |
| `npm run dev`       | Start local development server     |
| `npm run build`     | Build production-ready static site |
| `npm run preview`   | Preview production build locally   |
| `npm run astro ...` | Run Astro CLI commands             |

## Deployment to GitHub Pages

1. Push your code to a GitHub repository.
2. Go to repository Settings > Pages.
3. Set source to "GitHub Actions".
4. Create a new workflow file `.github/workflows/deploy.yml`:

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v4
    - uses: actions/setup-node@v4
      with:
        node-version: 20
    - run: npm ci
    - run: npm run build
    - uses: actions/deploy-pages@v4
      with:
        token: ${{ secrets.GITHUB_TOKEN }}
        folder: dist
```

5. Commit and push the workflow file.
6. The site will be deployed to `https://yourusername.github.io/repository-name`.

For custom domain, update the DNS settings and add `CNAME` file in `public/`.

## License

This project is open source. See [LICENSE](LICENSE) for more information.
