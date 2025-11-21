

# Configure the filter

You can have the `.git/config` already in your `.git_template/config` 

```
git config filter.version.smudge  filter_expandvars_smudge.sh
git config filter.version.clean  filter_expandvars_clean.sh
```

You need to add this to the `$PATH` 

```
path=($PWD $path)
```


You need to have a `.git/hooks/post-checkout` hook to force the execution 
of the filter even when the file has not changed. Since the git tag may
have changed and the file contents still be the same.

```
cp post-checkout .git/hook/post-checkout
```

# Test

```
git checkout v0.0.5; cat pyproject.toml|grep version ; git switch main; cat pyproject.toml|grep version
```


#  Tags

To create an annotated tag

```
git tag -a v0.0.4 -m "Version 0.0.4"
```
