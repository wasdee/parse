default:
    echo 'Hello, world!'

rebase-and-push:
    @echo "Fetching from upstream..."
    git fetch upstream
    @echo "Rebasing on top of upstream/master..."
    git rebase upstream/master
    @echo "Rebase completed. Do you want to force push? [y/N]"
    read -r confirm
    if [ "$$confirm" = "y" ]; then
        git push origin master --force
    else
        @echo "Force push aborted."
