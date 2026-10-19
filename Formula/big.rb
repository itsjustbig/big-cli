class Big < Formula
  desc "Manage your big (itsjustbig.com) Instagram DM inbox and automations"
  homepage "https://itsjustbig.com"
  version "2.6.0"

  on_macos do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.6.0/big-darwin-arm64.tar.gz"
      sha256 "6d9a7e158fd07062af4f5bf0c82888beed692f17d4c67a1d35902019c03e7d55"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.6.0/big-darwin-x64.tar.gz"
      sha256 "d001f91dec7461512fa554672f93333c4394b10a868a13aa34a6f74ba6a1baf0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.6.0/big-linux-arm64.tar.gz"
      sha256 "bba61bdb4141c1ea2c6e38043c7e3cb79481a535bd55fe2d98b9357300c5de00"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.6.0/big-linux-x64.tar.gz"
      sha256 "f85242e892f246c7339347426635ee45da265c31c5f7cd134e6349afb17ab42f"
    end
  end

  def install
    bin.install "big"
  end

  test do
    assert_match "big", shell_output("#{bin}/big --help")
  end
end
