# Advanced Git Operations

### How to Permanently add DS_Store into .gitignore files (for Mac)

```bash
git config --global core.excludesfile ~/.gitignore_global
echo .DS_Store >> ~/.gitignore_global
```

References:
* https://www.freecodecamp.org/news/gitignore-what-is-it-and-how-to-add-to-repo/
* https://stackoverflow.com/questions/107701/how-can-i-remove-ds-store-files-from-a-git-repository