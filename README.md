# teleport-build

[![Build Status](https://github.com/immfly/teleport-build/actions/workflows/build.yml/badge.svg)](https://github.com/immfly/teleport-build/actions)

## Overview

**teleport-build** is an automation repository for building specific versions of the [Teleport](https://github.com/gravitational/teleport) binaries. When you create or push a tag to this repository, it fetches the matching tag from the Teleport upstream repository, builds the binaries, and publishes them as assets in a GitHub release.

This project is designed to streamline the process of producing reproducible Teleport builds for internal use, distribution, or compliance needs.

---

## How It Works

1. **Tag Trigger:**  
   When a new Git tag is pushed to `immfly/teleport-build`, a GitHub Actions workflow is triggered.

2. **Version Sync:**  
   The workflow uses the tag name to clone the upstream [`gravitational/teleport`](https://github.com/gravitational/teleport) repository at the exact matching tag.

3. **Build Process:**  
   The Teleport source is built using its official build process, producing the standard binaries (`teleport`, `tsh`, `tctl`, etc.).

4. **Release & Assets:**  
   The resulting binaries are attached as assets to a GitHub release that matches the tag in this repository.

---

## Usage

### To Build a Specific Teleport Version

1. **Create a Tag:**  
   Tag this repository with a version that exists in the upstream Teleport repo (e.g., `v16.0.2`).

   ```sh
   git tag v16.0.2
   git push origin v16.0.2
   ```

2. **Automated Build & Release:**  
   The workflow will automatically:
   - Checkout `gravitational/teleport` at `v16.0.2`
   - Build the binaries
   - Create (or update) a GitHub Release at the same tag
   - Attach the binaries as release assets

3. **Download Binaries:**  
   Go to the [Releases](https://github.com/immfly/teleport-build/releases) page and download the assets for your desired version.

---

## Why Use This Repository?

- **Reproducible Builds:** Always get exactly the binaries for the Teleport version you need, built from source.
- **Automated Release Pipeline:** No manual steps required—just tag and push.
- **Internal Distribution:** Easily share builds across your organization or infrastructure.
- **Audit & Compliance:** Maintain a history of built releases for traceability.

---

## Contributing

If you need to add support for new platforms, architectures, or custom build flags, feel free to open a pull request or issue.

---

## License

This repository contains only scripts and workflow files. The built Teleport binaries are subject to the original [Teleport Licensing](https://github.com/gravitational/teleport/blob/master/LICENSE) as published by Gravitational.

---

## Related Links

- [Teleport Upstream Repository](https://github.com/gravitational/teleport)
- [Teleport Licensing](https://github.com/gravitational/teleport/blob/master/LICENSE)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)

