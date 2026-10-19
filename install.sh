#!/usr/bin/env bash
# big CLI installer. Downloads the right prebuilt binary from the latest GitHub
# release and drops it on your PATH. No Node/bun required.
#
#   curl -fsSL https://raw.githubusercontent.com/D-C-Collectibles/homebrew-big/main/install.sh | bash
#
# Override the install dir with BIG_INSTALL_DIR (default: ~/.local/bin).
set -euo pipefail

REPO="D-C-Collectibles/homebrew-big"
INSTALL_DIR="${BIG_INSTALL_DIR:-$HOME/.local/bin}"

os="$(uname -s)"; arch="$(uname -m)"
case "$os" in
  Darwin) os="darwin" ;;
  Linux)  os="linux" ;;
  *) echo "Unsupported OS: $os" >&2; exit 1 ;;
esac
case "$arch" in
  arm64|aarch64) arch="arm64" ;;
  x86_64|amd64)  arch="x64" ;;
  *) echo "Unsupported architecture: $arch" >&2; exit 1 ;;
esac

asset="big-$os-$arch.tar.gz"
url="https://github.com/$REPO/releases/latest/download/$asset"
checksums_url="https://github.com/$REPO/releases/latest/download/checksums.txt"

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT
echo "Downloading $asset…"
if ! curl --proto '=https' --tlsv1.2 -fsSL "$url" -o "$tmp/$asset"; then
  echo "Download failed: $url" >&2
  echo "No release for $os-$arch yet? See https://github.com/$REPO/releases" >&2
  exit 1
fi
if ! curl --proto '=https' --tlsv1.2 -fsSL "$checksums_url" -o "$tmp/checksums.txt"; then
  echo "Could not download checksums.txt to verify $asset: $checksums_url" >&2
  exit 1
fi

expected="$(awk -v f="$asset" '$2==f {print $1}' "$tmp/checksums.txt")"
if [ -z "$expected" ]; then
  echo "checksums.txt has no entry for $asset — refusing to install an unverified binary." >&2
  exit 1
fi
if command -v sha256sum >/dev/null 2>&1; then
  actual="$(sha256sum "$tmp/$asset" | awk '{print $1}')"
else
  actual="$(shasum -a 256 "$tmp/$asset" | awk '{print $1}')"
fi
if [ "$actual" != "$expected" ]; then
  echo "Checksum mismatch for $asset (expected $expected, got $actual) — refusing to install." >&2
  exit 1
fi
echo "✓ Verified $asset (sha256 $actual)"

tar -xzf "$tmp/$asset" -C "$tmp"
mkdir -p "$INSTALL_DIR"
install -m 0755 "$tmp/big" "$INSTALL_DIR/big"
echo "✓ Installed big to $INSTALL_DIR/big"

case ":$PATH:" in
  *":$INSTALL_DIR:"*) ;;
  *) echo "Note: $INSTALL_DIR is not on your PATH. Add it, e.g.:"
     echo "  echo 'export PATH=\"$INSTALL_DIR:\$PATH\"' >> ~/.zshrc && exec zsh" ;;
esac
echo "Run 'big login' to get started."
