class Big < Formula
  desc "Manage your big (itsjustbig.com) Instagram DM inbox and automations"
  homepage "https://itsjustbig.com"
  version "2.9.0"

  on_macos do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.9.0/big-darwin-arm64.tar.gz"
      sha256 "97a7e26da2e5d16b52a59e6b1af154017546bb8244a8747662ab433c5542d007"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.9.0/big-darwin-x64.tar.gz"
      sha256 "bcc9f8db2c46e7accb672b6119421b71a52d1dc6dd745c88a1caed7e825f8fd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.9.0/big-linux-arm64.tar.gz"
      sha256 "d8da712366be0e05ae8fbb1d67c7dae6afc2c60fd4d4d7a106d9cce8337a8453"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.9.0/big-linux-x64.tar.gz"
      sha256 "4c9fd271160319705f0f707c1661f76c48538f81c3530b5be9bd2b4a75b4a692"
    end
  end

  def install
    bin.install "big"
  end

  test do
    assert_match "big", shell_output("#{bin}/big --help")
  end
end
