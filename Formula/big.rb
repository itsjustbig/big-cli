class Big < Formula
  desc "Manage your big (itsjustbig.com) Instagram DM inbox and automations"
  homepage "https://itsjustbig.com"
  version "1.4.0"

  on_macos do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.4.0/big-darwin-arm64.tar.gz"
      sha256 "70156fb83acce5fd3842c1eb340229d4a568f084cf665a2103c02f02108fa526"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.4.0/big-darwin-x64.tar.gz"
      sha256 "add636cefe2f36fa493054d118341ee2533ebdc2efd3c12a477a3e4499fec461"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.4.0/big-linux-arm64.tar.gz"
      sha256 "8b23a4be2ed937b23e774c7fdf6495364d979b916d29420daa02ad2a847d3d6f"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.4.0/big-linux-x64.tar.gz"
      sha256 "e2475889ac6f29d6274e8e5d1c625cc53d446ce4024a9512182232c4e36460ec"
    end
  end

  def install
    bin.install "big"
  end

  test do
    assert_match "big", shell_output("#{bin}/big --help")
  end
end
