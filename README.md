# disnocen.github.io

Personal GitHub Pages site for cryptography research notes and local AI model experiments.

The site is authored with Hugo in `site/` and uses the PaperMod theme as a Git submodule. Generated static files are copied to the repository root so the existing GitHub Pages user-site publishing path can serve them directly.

## Theme

PaperMod was chosen because it is minimal, fast, actively maintained, and has the core blog features this site needs: tags, archives, search, dark/light mode, reading time, table of contents, RSS, and code-friendly rendering.

## Local Workflow

Install Hugo, then build:

```sh
brew install hugo
git submodule update --init --recursive
./scripts/build-site.sh
```

Preview from the Hugo source:

```sh
hugo server --source site
```

Add posts under `site/content/posts/`, rebuild with `./scripts/build-site.sh`, then commit both the source changes and generated root output.
