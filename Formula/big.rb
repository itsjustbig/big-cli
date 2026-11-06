class Big < Formula
  desc "Manage your big (itsjustbig.com) Instagram DM inbox and automations"
  homepage "https://itsjustbig.com"
  version "2.11.0"

  on_macos do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.11.0/big-darwin-arm64.tar.gz"
      sha256 "b9902bc13d1b886e371266418c9f0013731b6e38e9933244031d5dbe44d723e8"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.11.0/big-darwin-x64.tar.gz"
      sha256 "94130dc829c4932cc36ae0e9527610352cdab756abce40c84c6a39a6d66ae64a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.11.0/big-linux-arm64.tar.gz"
      sha256 "08fa75485a758a77eb094986d587eb9ff888023c203e5303598d335f74f86cd9"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.11.0/big-linux-x64.tar.gz"
      sha256 "d86e57e742901c00192228ac914736b8c19bce1fb960e7c1ae7777a244a69eda"
    end
  end

  def install
    bin.install "big"
  end

  test do
    assert_match "big", shell_output("#{bin}/big --help")
  end
end
