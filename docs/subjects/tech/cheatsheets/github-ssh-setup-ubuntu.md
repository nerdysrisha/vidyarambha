# GitHub SSH Authentication Setup on Ubuntu

A step-by-step cheatsheet for configuring GitHub SSH authentication on
Ubuntu. Once configured, Git can authenticate with GitHub without asking
for your GitHub account password or a Personal Access Token (PAT).

## 1. Check for existing SSH keys

``` bash
ls -la ~/.ssh
```

Look for an existing key pair such as `id_ed25519` and `id_ed25519.pub`.

If you do not have one, continue to the next step.

## 2. Generate an SSH key

``` bash
ssh-keygen -t ed25519 -C "your-github-email@example.com"
```

Replace the example email with the email associated with your GitHub
account.

When prompted for a file location, press **Enter** to accept the
default:

``` text
/home/<linux-username>/.ssh/id_ed25519
```

You may set a passphrase when prompted, or leave it empty by pressing
Enter twice.

This creates two files:

-   `~/.ssh/id_ed25519` --- private key. **Never share or publish this
    file.**
-   `~/.ssh/id_ed25519.pub` --- public key. This is the key you add to
    GitHub.

The randomart shown at the end is a visual fingerprint of the key; it is
normal.

## 3. Start the SSH agent

``` bash
eval "$(ssh-agent -s)"
```

The output should look similar to:

``` text
Agent pid <process-id>
```

## 4. Add your private key to the SSH agent

``` bash
ssh-add ~/.ssh/id_ed25519
```

Expected output:

``` text
Identity added: /home/<linux-username>/.ssh/id_ed25519
```

## 5. Display your public key

``` bash
cat ~/.ssh/id_ed25519.pub
```

Copy the entire output. It starts with `ssh-ed25519`.

**Only copy the `.pub` file. Never display, share, or upload the private
`id_ed25519` file.**

## 6. Add the public key to GitHub

1.  Open [GitHub SSH key settings](https://github.com/settings/ssh/new).
2.  Enter a descriptive title, such as `Ubuntu Laptop`.
3.  Set **Key type** to **Authentication Key**.
4.  Paste the complete public key into the **Key** field.
5.  Click **Add SSH key**.

## 7. Test SSH authentication

``` bash
ssh -T git@github.com
```

The first time you connect, you may be asked to confirm GitHub's host
fingerprint. Verify it against [GitHub's published SSH
fingerprints](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints),
then type `yes` if it matches.

A successful authentication message looks like:

``` text
Hi <github-username>! You've successfully authenticated, but GitHub does not provide shell access.
```

This confirms that SSH authentication works. The message about shell
access is normal.

## 8. Make Git use SSH for GitHub URLs globally

To automatically rewrite GitHub HTTPS URLs as SSH URLs for the current
Linux user, run:

``` bash
git config --global url."git@github.com:".insteadOf "https://github.com/"
```

For example, a clone command written as:

``` bash
git clone https://github.com/<owner>/<repository>.git
```

will use SSH behind the scenes.

This setting also applies when Git accesses GitHub remotes in previously
cloned repositories. You do not need to reclone them.

## 9. Use your normal Git workflow

Your everyday commands stay the same:

``` bash
git add .
git commit -m "Your commit message"
git push
```

To retrieve changes:

``` bash
git pull
```

No GitHub account password or PAT is needed for these Git operations
when the repository uses GitHub SSH authentication.

## Optional: Change one existing repository's remote to SSH

The global URL rewrite above is usually enough. If you prefer to
explicitly set a repository's remote to SSH, run this inside that
repository:

``` bash
git remote set-url origin git@github.com:<owner>/<repository>.git
```

Check the remote:

``` bash
git remote -v
```

## Troubleshooting notes

-   **`Permission denied (publickey)`**: Check that the public key was
    added to the correct GitHub account and that the SSH agent has the
    private key loaded (`ssh-add -l`).
-   **The agent has no identities**: Start the agent and add the key
    again using steps 3 and 4.
-   **A repository still asks for HTTPS credentials**: Check its remote
    with `git remote -v` and confirm the global URL rewrite is
    configured with `git config --global --get-regexp '^url\\.'`.

## Security reminders

-   Never publish or share `~/.ssh/id_ed25519` (the private key).
-   The `.pub` file is the public key intended to be registered with
    GitHub. Avoid including your personal public key in a
    general-purpose public cheatsheet.
-   Do not put passwords, Personal Access Tokens, private keys, or other
    credentials in a repository.
-   The global Git URL rewrite applies to the current Linux user. Other
    Linux accounts need their own SSH key and Git configuration.

## Useful links

-   [GitHub: Connecting to GitHub with
    SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)
-   [GitHub: Adding a new SSH key to your
    account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
-   [GitHub: SSH key
    fingerprints](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/githubs-ssh-key-fingerprints)
-   [GitHub SSH key settings](https://github.com/settings/keys)
