1. Project Overview
Goal:
Build a fast, SEO-friendly, fancy-looking fashion blog website using Astro, deploy it on GitHub Pages with a custom domain, and make it Google AdSense–ready.
Key Principles:
Static-first (no backend)
Easy content writing (Markdown)
Clean editorial / fashion-magazine design
AdSense compliant
Scalable for future growth
2. Tech Stack
Framework: Astro
Content: Markdown (.md)
Styling: Tailwind CSS (via starter)
Hosting: GitHub Pages
Domain: Custom domain (required for AdSense)
Analytics: Google Analytics (later)
Ads: Google AdSense (after approval)
3. Starter Template
Chosen Starter: Astro Paper
(Modern, editorial, SEO-optimized, minimal)
Base requirements from starter:
Blog listing
Blog post layout
Pagination
SEO meta tags
RSS support
4. Project Setup Steps
4.1 Initialize Project
Create a new Astro project using the Astro Paper starter
Ensure project runs locally with npm run dev
Remove demo content
4.2 Repository Setup
Initialize Git repository
Push to GitHub
Main branch: main
5. Content Structure
5.1 Folder Structure
/
├── src/
│   ├── content/
│   │   └── blog/
│   │       ├── first-post.md
│   │       └── second-post.md
│   ├── pages/
│   │   ├── about.astro
│   │   ├── contact.astro
│   │   ├── privacy-policy.astro
│   │   ├── terms-and-conditions.astro
│   └── layouts/
├── public/
├── astro.config.mjs
└── README.md
5.2 Blog Post Requirements
Each blog post must:
Be written in Markdown
Have frontmatter:
title
description
publishDate
tags
heroImage
Be at least 800–1200 words
Include headings (##, ###)
Include optimized images with alt text
6. Required Pages (AdSense Compliance)
Create the following pages with real content:
Home
About Us
Contact Us
Privacy Policy
Terms & Conditions
Privacy Policy must mention:
Google AdSense
Cookies
Third-party advertising
7. SEO Setup
Ensure <title> and meta description per page
Open Graph tags for blog posts
Clean URLs (kebab-case)
Sitemap enabled
Robots.txt present
8. Styling & Branding
Editorial / fashion aesthetic
Neutral color palette
Elegant serif or modern sans-serif fonts
Responsive for mobile (priority)
9. AdSense Preparation (NO ads yet)
Before approval:
Insert placeholder Ad components
Ensure ad slots can be injected later
No excessive ads
No popups
10. Deployment
10.1 GitHub Pages
Configure Astro build output for GitHub Pages
Use gh-pages or GitHub Actions
Enable HTTPS
10.2 Custom Domain
Configure DNS
Connect domain to GitHub Pages
Verify working HTTPS
11. Post-Launch Checklist
Add 10–15 fashion blog posts
Validate site navigation
Check mobile layout
Apply for Google AdSense
Add Google Analytics
12. Future Enhancements (Optional)
Dark mode customization
Category-based browsing
Pinterest-rich pins optimization
Newsletter signup
Affiliate links
✅ Success Criteria
Lighthouse score > 90
Clean, magazine-style UI
AdSense approval-ready
Easy to publish new posts
Fast page loads