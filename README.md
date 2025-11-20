

# git smudge and clean filters


```
gh repo clone ecerulm/test-smudge-clean-filters
cd test-smudge-clean-filters

cat pyproject.toml
# At this point the filters are not run they need to configured in each new clone manually

git config user.email xx

git config filter.version.smudge ./expand_version.sh
git config filter.version.clean ./clean_version.sh

cat pyproject.toml
# Same situation, the filter don't run until we recheckout

# You need to force a recheckout of all the files
git read-tree --reset -u $(git mktree /dev/null); git read-tree --reset -u HEAD

```
