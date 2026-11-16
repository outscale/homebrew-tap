# Outscale Brew Formulas

[![Project Incubating](https://docs.outscale.com/fr/userguide/_images/Project-Incubating-blue.svg)](https://docs.outscale.com/en/userguide/Open-Source-Projects.html) [![](https://dcbadge.limes.pink/api/server/HUVtY5gT6s?style=flat\&theme=default-inverted)](https://discord.gg/HUVtY5gT6s)

---

## 📦 Available Projects

<!-- BEGIN PROJECTS -->
| Project | Description | Repository | Install |
| --- | --- | --- | --- |
| [frieza](https://github.com/outscale/frieza) | Tool to cleanup your cloud resources | https://github.com/outscale/frieza | `brew install outscale/tap/frieza` |
| [kafkadumper](https://github.com/outscale/KafkaDumper) | CLI tool to create snapshots of Kafka topics at a specific point in time | https://github.com/outscale/KafkaDumper | `brew install outscale/tap/kafkadumper` |
| [oapi-cli](https://github.com/outscale/oapi-cli) | Official Outscale CLI providing connectors to Outscale API | https://github.com/outscale/oapi-cli | `brew install outscale/tap/oapi-cli` |
| [osc-logs](https://github.com/outscale/osc-logs) | Stream the Outscale API call logs for analytics and long-term storage | https://github.com/outscale/osc-logs | `brew install outscale/tap/osc-logs` |
| [osc-tui](https://github.com/outscale/osc-tui) | Outscale TUI providing connectors to Outscale API | https://github.com/outscale/osc-tui | `brew install outscale/tap/osc-tui` |
<!-- END PROJECTS -->

> [!NOTE]
> This table is generated from `Formula/*.rb` by `./scripts/update-readme.sh` — do not edit it by hand.
> CI fails when the table and the formulae disagree. See [AGENTS.md](./AGENTS.md) for the update workflow.

---

## 🌐 Links

* Documentation: [https://docs.outscale.com/en/](https://docs.outscale.com/en/)
* Tap URL: `outscale/tap`
* Community: Join us on [Discord](https://discord.gg/HUVtY5gT6s)

---

## 📄 Table of Contents

* [Available Projects](#-available-projects)
* [Overview](#-overview)
* [Requirements](#-requirements)
* [Installation](#-installation)
* [Usage](#-usage)
* [Maintainers: Updating Python Formulae](#-maintainers-updating-python-formulae)
* [Contributing](#-contributing)
* [License](#-license)

---

## 🧭 Overview

**Outscale Brew Formulas** is the official Homebrew tap for Outscale tools and utilities.
It lets you install Outscale software via `brew` on macOS and Linux.

**Highlights**

* Simple installation with `brew tap outscale/tap`
* Reproducible builds with vendored Python resources
* Central place to discover Outscale CLI tools

---

## ✅ Requirements

* macOS or Linux
* [Homebrew](https://brew.sh/) installed and in your `PATH`
* (Optional) Developer tools for building from source

---

## ⚙ Installation

```bash
brew tap outscale/tap
```

You can then install any formula from this tap, for example:

```bash
brew install outscale/tap/<formula-name>
# e.g.
# brew install outscale/tap/oapi-cli
```

---

## 🚀 Usage

List available formulas from the tap:

```bash
brew search outscale/tap/
```

Upgrade installed formulas:

```bash
brew upgrade outscale/tap/<formula-name>
```

Reinstall from source (useful while developing a formula):

```bash
brew reinstall --build-from-source ./<formula-file>.rb
```

---

## 🔧 Maintainers: Updating Python Formulae

When a packaged Python project releases a new version, update the corresponding formula:

1. **Get the new version and file URL on PyPI**

   * Go to the project’s page on PyPI (e.g., `https://pypi.org/project/<pkg>/<version>/#files`)
   * Copy the **source tarball** URL and its **SHA256**.

2. **Edit the formula**

   * Update the `url` and `sha256` fields in `./<formula>.rb` to match the new PyPI release.

3. **Refresh vendored resources**

   * From the repository root, run:

     ```bash
     brew update-python-resources ./oapi-cli.rb
     ```

     Replace `oapi-cli.rb` with the formula you’re maintaining.

4. **Test locally**

   ```bash
   brew reinstall --build-from-source ./oapi-cli.rb
   brew audit --new --strict ./oapi-cli.rb
   brew test ./oapi-cli.rb
   ```

5. **Open a PR**

   * Include a short changelog and the upstream release link.

---

## 📜 License

**Outscale Brew Formulas** is released under the BSD-3-Clause license.

© 2025 Outscale SAS

See [LICENSE](./LICENSE) for full details.

---

## 🤝 Contributing

We welcome contributions!

Please read our [Contributing Guidelines](CONTRIBUTING.md) and [Code of Conduct](CODE_OF_CONDUCT.md) before submitting a pull request.
