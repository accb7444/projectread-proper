# LN Reader Pro

A distraction-free, full-screen reader for web articles and long-form content — built with vanilla HTML/CSS/JS (no frameworks). Features real-time theme switching, adjustable typography, reading history, and a glassmorphism settings panel.

![Screenshot](./.github/assets/screenshot-reader.png)

---

## ✨ Features

| Feature | What it does |
|---------|--------------|
| **Reader mode** | Clean WYSIWYG-style reading view — paste any text, adjust as you go |
| **Live typography** | Slider-controlled font size, line height, and content width — updates instantly with CSS custom properties |
| **Dark / light theme** | Follows `prefers-color-scheme` automatically; both themes use a cohesive token system |
| **Reading history** | Pick up where you left off — recent items pinned at the top of the sidebar, with progress bars for unfinished reads |
| **Settings drawer** | Right-side glassmorphism panel for font, spacing, and theme controls — slides in/out with a spring animation |
| **Search & highlights** | In-reader text search with yellow highlights and a "current match" highlight in orange |
| **Setup wizard** | First-run card with tabs for quick onboarding |

## 🚀 Quick start

1. Clone this repo
2. Open `projectread.html` in any modern browser
3. No build step, no dependencies, no server needed — just a static file

```bash
git clone https://github.com/accb7444/projectread-proper.git
cd projectread-proper
open projectread.html   # or double-click it
```

## 📁 Project structure

```
projectread-proper/
├── projectread.html      # Main reader — all logic, styles, and UI in one file
├── .github/
│   └── assets/
│       └── screenshot-reader.png   # Repo screenshot (add your own!)
├── LICENSE               # MIT — free to use and modify
├── .gitignore            # Ignores IDE files, OS junk, logs, temp files, secrets
├── open.sh               # Helper script to open projectread.html in your browser
└── README.md             # This file
```

## 🎨 Design tokens

All user-adjustable values live as CSS custom properties on `:root`, so the Settings panel can tweak them live without re-renders:

```css
:root {
  --bg: #fafafa;
  --text: #222;
  --accent: #4a90e2;
  --reader-font-size: 19px;
  --reader-font-family: "Inter", system-ui, sans-serif;
  --reader-line-height: 1.75;
  --reader-content-width: 720px;
}
```

Dark mode overrides the same tokens inside `@media (prefers-color-scheme: dark)`.

## 📄 File descriptions

| File | Purpose |
|------|---------|
| `projectread.html` | Full reader — reader view, history sidebar, settings panel, search. The main artifact. |

## 🔧 Tech stack

- **HTML** — single-file app; no build toolchain
- **CSS** — custom properties, CSS-only animations, glassmorphism effects (`backdrop-filter`), responsive tokens
- **JavaScript** — vanilla, no frameworks. Settings module writes directly to `document.documentElement` style for instant updates.

## 📄 License

MIT — see [LICENSE](./LICENSE). Use it, modify it, share it.

---

<p align="center">
  <a href="https://github.com/accb7444/projectread-proper">GitHub</a> ·
  Built with ❤️ and vanilla web tech
</p>
