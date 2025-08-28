## Annusha — Love Flight

Static, self-contained HTML art: a cute ASCII-style plane with a heart contrail flying toward a waving Pakistani flag, with a sweet note for Annusha.

### View locally

- Open `index.html` in any modern browser.

### Deploy to GitHub Pages

This repo includes a GitHub Actions workflow that deploys on push to `main`.

1) Create a new repo on GitHub named `annusha-love-flight` (public).
2) Push this folder to GitHub (commands below).
3) The Pages URL will appear in the Actions run output.

```bash
git remote add origin https://github.com/<YOUR-USER>/annusha-love-flight.git
git branch -M main
git push -u origin main
```

### Netlify (optional)

- Drag-and-drop the folder on https://app.netlify.com/drop or add a `netlify.toml` with `publish = "."`.

### Personalize

- Edit the message in `index.html` (`h1` and the “ps” line).
- Hearts, wave, and colors are controlled via CSS variables in `:root`.

