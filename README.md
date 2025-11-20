

# git smudge and clean filters


```
gh repo clone ecerulm/test-smudge-clean-filters
cd test-smudge-clean-filters
git config user.email xx
git config filter.version.smudge ./expand_version.sh
git config filter.version.clean ./clean_version.sh
rm .git/index # We want to force a checkout of all files to run the smudge / clean filters
```
