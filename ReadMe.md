# IOx Node.js ARM64 Boilerplate

This repository contains a minimal IOx-compatible Node.js application targeting ARM64 architecture. It includes all required metadata and packaging files to build and deploy to Cisco IOx platforms.

## 🛠️ Build Docker Image

```bash
docker build -t sample-node-arm64:1.0 .
```

## 📦 Save Docker Image as Tar (Docker format)

```bash
docker save -o sample-node-arm64.tar sample-node-arm64:1.0
```

> ⚠️ Note: Ensure the image is saved in **Docker v2 format**, not OCI.  
> This workflow was verified using Docker 24 on macOS ARM64.

## 📁 Package as IOx App

```bash
ioxclient docker package sample-node-arm64.tar .
```

Or use auto mode if labels are embedded:

```bash
ioxclient docker package --auto sample-node-arm64.tar .
```

## 📂 Contents

- `Dockerfile`: ARM64 Node.js base with IOx labels
- `index.js`: Sample app entry point
- `package.json`: Minimal Node.js metadata
- `package.yaml`: IOx descriptor for packaging

## ✅ Verified Environment

This workflow was successfully tested with:

- **Docker**: `24.0.2`, build `cb74dfc`
- **ioxclient**: `1.17.0.0`
- **macOS**: Darwin Kernel Version `24.6.0` (ARM64)

## 🧪 Tested With

- Docker v20+ (Linux/macOS)
- Cisco IOx SDK / ioxclient
- macOS ARM64 (Sonoma)

## 📌 Notes

- The Docker image must be in **Docker format**, not OCI.
- The project directory must contain a valid `package.yaml` or `manifest.json`.
- IOx labels must be embedded in the Dockerfile if using `--auto`.
