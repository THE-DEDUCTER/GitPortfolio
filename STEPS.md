# 🚀 Quickstart Guide: Hosting on GitHub Pages via Actions

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Active-success?logo=github&style=for-the-badge)](https://pages.github.com/)
[![GitHub Actions](https://img.shields.io/badge/GitHub%20Actions-Automated%20CI%2FCD-2088FF?logo=githubactions&logoColor=white&style=for-the-badge)](https://github.com/features/actions)
[![Hosting](https://img.shields.io/badge/Hosting-100%25%20Free-brightgreen?style=for-the-badge)](#)
[![Zero Config](https://img.shields.io/badge/Setup-Zero%20Config-orange?style=for-the-badge)](#)

> [!NOTE]
> This repository is pre-configured with an automated GitHub Actions CI/CD workflow located at [`.github/workflows/deploy.yml`](file:///.github/workflows/deploy.yml). Any student or peer who forks or clones this repo can host their own copy in **less than 60 seconds**!

---

## 🗺️ How It Works (Deployment Flow)

```mermaid
graph LR
    A[Push to main / Fork] --> B[GitHub Actions Triggered]
    B --> C[Package Assets & HTML]
    C --> D[Deploy to GitHub Pages]
    D --> E["Live Website! (username.github.io)"]
    style A fill:#1e293b,stroke:#3b82f6,stroke-width:2px,color:#fff
    style B fill:#1e293b,stroke:#f59e0b,stroke-width:2px,color:#fff
    style C fill:#1e293b,stroke:#8b5cf6,stroke-width:2px,color:#fff
    style D fill:#1e293b,stroke:#10b981,stroke-width:2px,color:#fff
    style E fill:#064e3b,stroke:#34d399,stroke-width:2px,color:#fff
```

---

## 📋 Step-by-Step Instructions

### Step 1: Open Your Repository on GitHub
1. Open your web browser and navigate to your repository:
   ```text
   https://github.com/<YOUR-USERNAME>/<YOUR-REPOSITORY-NAME>
   ```

---

### Step 2: Set GitHub Pages Source to "GitHub Actions"

> [!IMPORTANT]
> This one-time setting tells GitHub to use the automated workflow in this repo rather than building from a legacy branch.

1. Click on the **⚙️ Settings** tab at the top right of your repository.
2. In the left navigation sidebar, scroll down to the **Code and automation** section.
3. Click on **Pages** (`/settings/pages`).
4. Under **Build and deployment**:
   - Locate the **Source** dropdown.
   - Change it from `Deploy from a branch` to **`GitHub Actions`**.

| Setting | Selection |
| :--- | :--- |
| **Build and deployment Source** | **GitHub Actions** ⚡ |

*(No save button is required; GitHub updates this instantly)*

---

### Step 3: Trigger Your Deployment

You can deploy using either of two methods:

#### ⚡ Method A: Automatic Deployment (Recommended)
Simply push any commit to the `main` branch. GitHub Actions will detect the push and automatically start the deployment job.

```bash
git add .
git commit -m "Update portfolio details"
git push origin main
```

#### 🖱️ Method B: Manual 1-Click Trigger via GitHub UI
1. Click on the **Actions** tab at the top of your repository.
2. In the left sidebar list of workflows, click **Deploy to GitHub Pages**.
3. On the right side, click the **Run workflow** dropdown button.
4. Ensure the branch selected is `main`, and click the green **Run workflow** button.

---

### Step 4: Access Your Live Website! 🌐

1. Stay on the **Actions** tab to watch your deployment in real-time *(typically takes ~30–45 seconds)*.
2. Once the job finishes with a green checkmark (✅ **Success**), click on the completed run.
3. In the summary page, your live URL will be displayed in the **deploy** step.
4. Your website is globally accessible at:

```text
https://<YOUR-USERNAME>.github.io/<YOUR-REPOSITORY-NAME>/
```

> [!TIP]
> You can also always find your live link under **Settings** ➔ **Pages** at any time.

---

## 🎨 How to Customize This Portfolio For Yourself

If you're using this project for your own portfolio:

| What to Change | File Location | Description |
| :--- | :--- | :--- |
| **Personal Info & Bio** | [`index.html`](file:///index.html) | Name, phone, email, birthday, location, and About Me intro |
| **Profile Picture** | [`assets/images/my-avatar.png`](file:///assets/images/my-avatar.png) | Replace with your photo / avatar |
| **Education & Experience** | [`index.html`](file:///index.html) | College details, CGPA, leadership roles, and company/org |
| **Skills & Tech Stack** | [`index.html`](file:///index.html) | Add your languages, frameworks, libraries, and tools |
| **Projects** | [`index.html`](file:///index.html) | Add your titles, descriptions, tech pills, and live demo links |
| **Project Images** | [`assets/images/`](file:///assets/images/) | Add screenshots or covers for your projects |
| **Blog Articles** | [`index.html`](file:///index.html) | Customize blog post titles, categories, and dates |

Once you've made your changes, commit and push:
```bash
git add .
git commit -m "Personalized portfolio details"
git push origin main
```
Your live site will update automatically in seconds!

---

## ❓ Troubleshooting & FAQs

<details>
<summary><strong>Q: Why did my action show "HttpError: Not Found - get a pages site"?</strong></summary>

This means GitHub Pages source was not yet switched to **GitHub Actions** in repository settings. Go to **Settings** ➔ **Pages** ➔ set **Source** to **GitHub Actions**, then re-run the workflow under the **Actions** tab.
</details>

<details>
<summary><strong>Q: Are images or styles broken on GitHub Pages?</strong></summary>

All paths in this repository use relative paths (e.g., `./assets/css/style.css` and `./assets/images/...`), which work across both root user pages (`username.github.io`) and sub-folder repository pages (`username.github.io/repo-name/`).
</details>

<details>
<summary><strong>Q: Can I use a custom domain?</strong></summary>

Yes! In **Settings** ➔ **Pages** ➔ **Custom domain**, enter your domain name (e.g. `yourname.dev`) and add a CNAME record in your DNS settings.
</details>

---

<p align="center">
  Crafted with ❤️ by <strong>Aditya Deore</strong><br>
  <sub>B.Tech Information Technology &bull; PCCOE Pune</sub>
</p>
