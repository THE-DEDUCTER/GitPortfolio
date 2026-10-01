# 🚀 Quickstart Guide: Hosting on GitHub Pages via Actions

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Active-success?logo=github&style=for-the-badge)](https://pages.github.com/)
[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-Automated%20CI%2FCD-2088FF?logo=githubactions&logoColor=white&style=for-the-badge)](https://github.com/features/actions)
[![Hosting](https://img.shields.io/badge/Hosting-100%25%20Free-brightgreen?style=for-the-badge)](#)
[![Zero Config](https://img.shields.io/badge/Setup-Zero%20Config-orange?style=for-the-badge)](#)

> [!NOTE]
> This repository is pre-configured with an automated GitHub Actions CI/CD workflow located at [`.github/workflows/deploy.yml`](file:///.github/workflows/deploy.yml). Any student or peer who uses this repository can host their personal portfolio in **less than 60 seconds**!

---

## ⚠️ Avoiding the "Permission Denied to AdityaxDeore (403)" Error

> [!CAUTION]
> **Why does this error occur?**  
> When you run `git clone https://github.com/AdityaxDeore/Portfolio-FY-GithubSession.git`, your local Git sets the remote named `origin` pointing directly to **Aditya's** repository.  
> If you run `git push -u origin main`, Git tries to write to Aditya's account, which rejects you with:  
> `remote: Permission to AdityaxDeore/Portfolio-FY-GithubSession.git denied to <your-username>.`  
> `fatal: unable to access ... The requested URL returned error: 403`

Choose **ANY ONE** of the 3 easy solutions below to publish to **YOUR OWN** repository without any permission issues:

---

### 🌟 Solution 1 (Recommended): Use the "Use this template" Button (Zero CLI Errors)

Since this repository is configured as a **GitHub Template Repository**, you don't even need to clone from Aditya first!

1. Go to this repository on GitHub:  
   👉 **[https://github.com/AdityaxDeore/Portfolio-FY-GithubSession](https://github.com/AdityaxDeore/Portfolio-FY-GithubSession)**
2. Click the green button at the top: **`Use this template`** ➔ **`Create a new repository`**.
3. Name your new repository (e.g., `my-portfolio`).
4. Choose **Public**, then click **`Create repository`**.
5. **Done!** You now have your own independent copy of the code under your own GitHub account. You are the sole owner and have 100% permission to push.

---

### 💻 Solution 2: If You Already Cloned — Change the Remote URL (1 Command)

If you already cloned the code to your machine, do **NOT** run `git remote add origin` (which gives `remote origin already exists`).

Instead, create an empty repository on [GitHub](https://github.com/new) under your account, then run:

```bash
# Replace with YOUR GitHub username and repository name:
git remote set-url origin https://github.com/<YOUR-USERNAME>/<YOUR-REPO-NAME>.git

# Push your code directly to YOUR repository:
git push -u origin main
```

---

### ⚡ Solution 3: Run the Automated Setup Script

We included 1-click helper scripts in this repository that automatically wipe the old git history, initialize a fresh repo, and connect your new repository:

- **On Windows**: Double-click or run:
  ```cmd
  setup-new-repo.bat
  ```
- **On macOS / Linux**: In your terminal, run:
  ```bash
  bash setup-new-repo.sh
  ```
- **Or Manually via Terminal**:
  ```bash
  # Windows PowerShell:
  Remove-Item -Recurse -Force .git
  git init -b main
  git add .
  git commit -m "Initial commit: My Personal Portfolio"
  git remote add origin https://github.com/<YOUR-USERNAME>/<YOUR-REPO-NAME>.git
  git push -u origin main

  # Mac / Linux:
  rm -rf .git
  git init -b main
  git add .
  git commit -m "Initial commit: My Personal Portfolio"
  git remote add origin https://github.com/<YOUR-USERNAME>/<YOUR-REPO-NAME>.git
  git push -u origin main
  ```

---

## 🗺️ How Deployment Works

```mermaid
graph LR
    A["Push to Your Repo (main)"] --> B["GitHub Actions Triggered"]
    B --> C["Package HTML & Assets"]
    C --> D["Deploy to GitHub Pages"]
    D --> E["Live Website! (username.github.io)"]
    style A fill:#1e293b,stroke:#3b82f6,stroke-width:2px,color:#fff
    style B fill:#1e293b,stroke:#f59e0b,stroke-width:2px,color:#fff
    style C fill:#1e293b,stroke:#8b5cf6,stroke-width:2px,color:#fff
    style D fill:#1e293b,stroke:#10b981,stroke-width:2px,color:#fff
    style E fill:#064e3b,stroke:#34d399,stroke-width:2px,color:#fff
```

---

## 📋 Step-by-Step Instructions: Enable GitHub Pages

Once your code is in **YOUR** repository:

### Step 1: Open Your Repository Settings
1. Open your repository on GitHub:
   ```text
   https://github.com/<YOUR-USERNAME>/<YOUR-REPO-NAME>
   ```
2. Click on the **⚙️ Settings** tab at the top right.

---

### Step 2: Set Pages Source to "GitHub Actions"

> [!IMPORTANT]
> This tells GitHub to run the automated workflow instead of looking for a static branch.

1. In the left navigation sidebar under **Code and automation**, click on **Pages**.
2. Under **Build and deployment**:
   - Locate the **Source** dropdown.
   - Switch it from `Deploy from a branch` to **`GitHub Actions`**.

| Setting | Value to Select |
| :--- | :--- |
| **Build and deployment Source** | **GitHub Actions** ⚡ |

*(No save button needed — GitHub updates this automatically)*

---

### Step 3: Trigger the Deployment

You can deploy in either of two ways:

#### ⚡ Method A: Automatic Deployment (Recommended)
Push any commit to your `main` branch. GitHub Actions will detect the change and deploy automatically:
```bash
git add .
git commit -m "Updated my portfolio"
git push origin main
```

#### 🖱️ Method B: Manual 1-Click Trigger
1. Click the **Actions** tab at the top of your repository.
2. In the left sidebar, click **Deploy to GitHub Pages**.
3. Click the **Run workflow** dropdown on the right.
4. Select branch `main`, and click **Run workflow**.

---

### Step 4: Access Your Live Website! 🌐

1. Under the **Actions** tab, wait ~30–45 seconds for the workflow to complete with a green checkmark (✅ **Success**).
2. Your live website is available globally at:
   ```text
   https://<YOUR-USERNAME>.github.io/<YOUR-REPO-NAME>/
   ```
3. You can also view this link under **Settings** ➔ **Pages** at any time.

---

## 🎨 How to Customize This Portfolio For Yourself

| Element | File to Edit | Instructions |
| :--- | :--- | :--- |
| **Personal Info & Bio** | [`index.html`](file:///index.html) | Update name, title, contact details, birthday, and location |
| **Profile Photo** | [`assets/images/my-avatar.png`](file:///assets/images/my-avatar.png) | Replace with your avatar or picture |
| **Education & Experience** | [`index.html`](file:///index.html) | Update college name, degree, CGPA, and work experience |
| **Technical Skills** | [`index.html`](file:///index.html) | Add your programming languages, frameworks, and databases |
| **Projects & Works** | [`index.html`](file:///index.html) | Replace project titles, descriptions, and technology tags |
| **Project Screenshots** | [`assets/images/`](file:///assets/images/) | Place your screenshots in `assets/images/` and update `img src` |
| **Articles / Blog** | [`index.html`](file:///index.html) | Update post titles, categories, summaries, and dates |

After editing, simply push your changes:
```bash
git add .
git commit -m "Personalize portfolio"
git push origin main
```
Your live site will update automatically!

---

## ❓ Frequently Asked Questions (FAQ)

<details>
<summary><strong>Q: What does "error: remote origin already exists" mean?</strong></summary>

It means you already have a remote configured (from `git clone`). Instead of `git remote add origin`, use:
```bash
git remote set-url origin https://github.com/<YOUR-USERNAME>/<YOUR-REPO-NAME>.git
```
</details>

<details>
<summary><strong>Q: Why does GitHub Actions show "HttpError: Not Found - get a pages site"?</strong></summary>

You haven't set the Pages build source to **GitHub Actions** yet. Go to **Settings** ➔ **Pages** ➔ under **Source** select **GitHub Actions**, then re-run the workflow.
</details>

<details>
<summary><strong>Q: Are stylesheets or images missing when hosted?</strong></summary>

No! All paths in this project use relative links (`./assets/...`), which works seamlessly on both `username.github.io` and subfolder paths like `username.github.io/repo-name/`.
</details>

---

<p align="center">
  Maintained by <strong>Aditya Deore</strong> &bull; PCCOE Pune<br>
  <sub>For First Year &amp; Student GitHub Sessions</sub>
</p>
