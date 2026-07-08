# gerwynng.github.io

My resume, written in Markdown and published to <https://gerwynng.github.io>.

The content lives in one file (`resume.md`). A small [pandoc](https://pandoc.org)
build renders it to HTML, and GitHub Actions deploys it to GitHub Pages on every
push to `master`. No Jekyll, no Ruby — the only tool is pandoc.

## Structure

```
resume.md                  # the resume content (edit this)
template.html              # HTML shell pandoc fills in
styles/screen.css          # on-screen styling
styles/print.css           # print / PDF styling
assets/                    # linked files (e.g. term paper PDF)
build.sh                   # renders resume.md -> dist/
.github/workflows/deploy.yml
```

## Editing

Edit `resume.md` and push to `master`. The Actions workflow rebuilds and
deploys automatically.

## Preview locally

Requires pandoc (`brew install pandoc`):

```sh
./build.sh
python3 -m http.server -d dist
# open http://localhost:8000
```

## Save a PDF

Open the page in a browser and print (⌘P / Ctrl+P) to PDF. `styles/print.css`
handles the print layout.

## Deployment

Deploys run through GitHub Actions, so the repo's **Settings → Pages → Source**
must be set to **GitHub Actions**.

## Credits

The stylesheet is adapted from the `davewhipp` theme of
[elipapa/markdown-cv](https://github.com/elipapa/markdown-cv). MIT licensed.
