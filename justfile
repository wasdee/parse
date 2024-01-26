default:
    echo 'Hello, world!'

rebase-and-push:
    @echo "Fetching from upstream..."
    git fetch upstream
    @echo "Rebasing on top of upstream/main..."
    git rebase upstream/main
    @echo "Rebase completed. Do you want to force push? [y/N]"
    read -r confirm
    if [ "$$confirm" = "y" ]; then
        git push origin main --force
    else
        @echo "Force push aborted."
