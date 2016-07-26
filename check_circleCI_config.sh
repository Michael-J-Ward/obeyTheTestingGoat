#! /bin/bash
# This script checks that CircleCI can publish to github
# navigate to https://username.github.io/project-name/

git checkout gh-pages
rm indext.html
echo "I was created by circleCI!" > index.html
git remote set-url origin git@gist.github.com:Michael-J-Ward/obeyTheTestingGoat
git add index.html
git commit -m "creating and publishing docs from circleCI"
git push origin gh-pages