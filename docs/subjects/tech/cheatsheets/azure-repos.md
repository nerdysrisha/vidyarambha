# Azure Repos Cheat Sheet

Quick-reference commands for listing and cloning Git repositories in **Azure DevOps** (Azure Repos) using the Azure CLI.

> **Prerequisites:** `az` installed and logged in (`az login`). The `azure-devops` extension is required for `az repos` — it installs automatically, with consent, the first time you use it.

> **Note on sanitised values:** `nerdyorg` (organisation) and `nerdyorg-prj` (project) are dummy names, and repository / project IDs are masked as `xxxxxxxx…` keeping only the last 4 characters. The real project contains ~250 repositories, so only a few examples are shown.

**Shell conventions:** commands are shown without the `PS C:\...>` prompt. Sample output is in separate blocks.

---

## 1. List all repos in a project

Lists every repository under a **project**, which sits under an **organisation**:

```bash
az repos list --project nerdyorg-prj --organization https://dev.azure.com/nerdyorg
```

Sample output (first repository only — the real output repeats the block for each repo):

```json
[
  {
    "defaultBranch": "refs/heads/main",
    "id": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxa316",
    "isDisabled": false,
    "isFork": null,
    "isInMaintenance": false,
    "name": "apache-solr-depl",
    "parentRepository": null,
    "project": {
      "abbreviation": null,
      "defaultTeamImageUrl": null,
      "description": null,
      "id": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxf333",
      "lastUpdateTime": "2024-08-26T16:45:15.383Z",
      "name": "nerdyorg-prj",
      "revision": 20,
      "state": "wellFormed",
      "url": "https://dev.azure.com/nerdyorg/_apis/projects/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxf333",
      "visibility": "private"
    },
    "remoteUrl": "https://nerdyorg@dev.azure.com/nerdyorg/nerdyorg-prj/_git/apache-solr-depl",
    "size": 734,
    "sshUrl": "git@ssh.dev.azure.com:v3/nerdyorg/nerdyorg-prj/apache-solr-depl",
    "url": "https://dev.azure.com/nerdyorg/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxf333/_apis/git/repositories/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxa316",
    "validRemoteUrls": null,
    "webUrl": "https://dev.azure.com/nerdyorg/nerdyorg-prj/_git/apache-solr-depl"
  }
]
```

*(output trimmed to one repo)*

**Useful fields:**

| Field | What it is |
|-------|------------|
| `name` | Repository name |
| `defaultBranch` | Default branch, e.g. `refs/heads/main` |
| `remoteUrl` | **HTTPS** clone URL |
| `sshUrl` | **SSH** clone URL |
| `webUrl` | Browser link to the repo |
| `size` | Repo size (bytes) |
| `isDisabled` | Whether the repo is disabled |

---

## 2. List clone URLs only

Use `--query` to pick a single field and `-o tsv` for plain text (one per line).

**HTTPS URLs:**

```bash
az repos list --project nerdyorg-prj --organization https://dev.azure.com/nerdyorg --query "[].remoteUrl" -o tsv
```

**SSH URLs:**

```bash
az repos list --project nerdyorg-prj --organization https://dev.azure.com/nerdyorg --query "[].sshUrl" -o tsv
```

**Repo names only:**

```bash
az repos list --project nerdyorg-prj --organization https://dev.azure.com/nerdyorg --query "[].name" -o tsv
```

---

## 3. Generate `git clone` commands for every repo

Prefix each HTTPS URL with `git clone` (PowerShell):

```powershell
az repos list --project nerdyorg-prj --organization https://dev.azure.com/nerdyorg --query "[].remoteUrl" -o tsv | ForEach-Object { "git clone $_" }
```

Sample output (trimmed):

```text
git clone https://nerdyorg@dev.azure.com/nerdyorg/nerdyorg-prj/_git/apache-solr-depl
git clone https://nerdyorg@dev.azure.com/nerdyorg/nerdyorg-prj/_git/EFK-Yamls
git clone https://nerdyorg@dev.azure.com/nerdyorg/nerdyorg-prj/_git/event-hub-gh
git clone https://nerdyorg@dev.azure.com/nerdyorg/nerdyorg-prj/_git/event-hub-ng
git clone https://nerdyorg@dev.azure.com/nerdyorg/nerdyorg-prj/_git/nerdyorg-website
git clone https://nerdyorg@dev.azure.com/nerdyorg/nerdyorg-prj/_git/nerdyorg-gh-send-sms-otp
git clone https://nerdyorg@dev.azure.com/nerdyorg/nerdyorg-prj/_git/nerdyorg-gh-send-sms-otp-mock
git clone https://nerdyorg@dev.azure.com/nerdyorg/nerdyorg-prj/_git/nerdyorg-ng-send-sms-otp
git clone https://nerdyorg@dev.azure.com/nerdyorg/nerdyorg-prj/_git/nerdyorg-ng-send-sms-otp-mock
git clone https://nerdyorg@dev.azure.com/nerdyorg/nerdyorg-prj/_git/nerdyorg-keycloak-service
```

To **clone everything in one go**, run each command instead of just printing it:

```powershell
az repos list --project nerdyorg-prj --organization https://dev.azure.com/nerdyorg --query "[].remoteUrl" -o tsv | ForEach-Object { git clone $_ }
```

> Run this from an empty working folder (e.g. `C:\ws\repos`) — each repo is cloned into its own subfolder. Expect a sign-in or PAT prompt the first time for HTTPS clones.

---

## 4. Repo naming convention (as used in this project)

Service repos follow a pattern, which makes it easy to filter the list:

| Pattern | Meaning | Example |
|---------|---------|---------|
| `<org>-gh-<service>` | Ghana implementation | `nerdyorg-gh-send-sms-otp` |
| `<org>-ng-<service>` | Nigeria implementation | `nerdyorg-ng-send-sms-otp` |
| `<…>-mock` | Mock / stub version of the service for testing | `nerdyorg-gh-send-sms-otp-mock` |

Filter the repo list by name in PowerShell:

```powershell
az repos list --project nerdyorg-prj --organization https://dev.azure.com/nerdyorg --query "[].name" -o tsv | Select-String "-ng-"        # Nigeria repos
az repos list --project nerdyorg-prj --organization https://dev.azure.com/nerdyorg --query "[].name" -o tsv | Select-String "-mock$"     # mock repos only
```

---
