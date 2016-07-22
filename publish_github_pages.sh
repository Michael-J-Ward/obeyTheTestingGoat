#! /bin/bash

git checkout gh-pages
rm indext.html
echo "I was created by circleCI!" > index.html
git add index.html
git commit -m "creating and publishing docs from circleCI"
git push origin gh-pages