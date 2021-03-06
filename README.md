# Sphinx Documentation Builder

A Docker container to build documentations with [Sphinx](http://sphinx-doc.org) 
using a [theme](https://github.com/readthedocs/sphinx_rtd_theme) 
provided by [Read the Docs](https://readthedocs.org).

## Installation

```console
git clone https://github.com/ducrot/sphinx-docs.git my-documentation
cd my-documentation
rm -rf .git
git init
git add .
git commit -m "Initial commit"
docker-compose up -d
```

Open in browser: [http://127.0.0.1:8000](http://127.0.0.1:8000) or deploy `build/html/` to a webserver.

## Folder structure

- ``/build/html`` The autogenerated html Dashdock Documentation.
- ``/source`` The directory where the documentation will reside.
