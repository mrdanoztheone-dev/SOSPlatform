# SOS Platform

SOS Platform is an offline-first diagnostics platform designed to simplify technical investigations while keeping evidence reproducible, portable and AI-assisted.

The project focuses on SQL Server and Windows diagnostics, combining structured evidence collection, guided investigations and reusable playbooks.

---

## Vision

Rather than connecting AI directly to production systems, SOS Platform works from collected evidence.

Diagnostics become:

- Reproducible
- Shareable
- Explainable
- Reusable

---

## Current Topics

- Architecture
- Investigation Workbench
- Query Store investigations
- AI-assisted analysis
- Playbooks
- Performance engineering

---

## Development Journal

This repository also serves as the public development journal for SOS Platform.

As the project evolves, architecture articles, technical notes and design decisions will be published here.

## Publish an update

The site uses ordinary Jekyll posts. To start a weekly update from PowerShell:

```powershell
.\scripts\New-ProjectPost.ps1 -Title "A faster Studio workspace" -Summary "Workspace navigation and shutdown are now much quicker and more predictable."
```

To include a screenshot, pass its path:

```powershell
.\scripts\New-ProjectPost.ps1 -Title "Workbench progress" -Summary "A look at the current Workbench." -ImagePath "C:\Screenshots\workbench.png"
```

The helper creates a dated Markdown file in `_posts`, copies an optional image into `assets/updates`, and prints the file to edit. Write the story below the generated introduction, then commit and push to `main`. GitHub Pages publishes it and the home page plus [Updates](updates.md) archive list it automatically.

For a post created by hand, copy [`_drafts/update-template.md`](_drafts/update-template.md) to `_posts/YYYY-MM-DD-short-title.md` and replace the example values. The `image` field is optional.

---

© SOS Platform
