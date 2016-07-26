#! /bin/bash

# It's easiest to work in a directory not under version control
mkdir ~/gh_docs
cd ~/gh_docs

git clone -b gh-pages "$CIRCLE_REPOSITORY_URL.git" html
cd html

# Clean the folder 
git rm -rf .
git commit -m "cleaning directory for document generation"

# Generate the docs
cd ~/lucro/api/docs
make html

mv _build/html/* ~/gh_docs/html
cd ~/gh_docs/html

touch .nojekyll

git add .
git commit -m "auto-creating and publishing docs"
git push origin gh-pages
