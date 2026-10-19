class Big < Formula
  desc "Manage your big (itsjustbig.com) Instagram DM inbox and automations"
  homepage "https://itsjustbig.com"
  version "2.7.0"

  on_macos do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.7.0/big-darwin-arm64.tar.gz"
      sha256 "2fcd76999e0c2b8b6560f26be169b49b68f3f9747cf54631a34737fcdefd95e2"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.7.0/big-darwin-x64.tar.gz"
      sha256 "733c03f38d99f5531e1421247e09bdaa353ee727d8ba6b0463c78a5aeefb8403"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.7.0/big-linux-arm64.tar.gz"
      sha256 "1dfbc8e32b00d43e9347fb4d315d52a96c51d5e84b60d6cb1ad885045295cf08"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.7.0/big-linux-x64.tar.gz"
      sha256 "cd488f5bbf9f615e5b9b129dc3bcd0abbaec3c163706303a254f8444040ae9cc"
    end
  end

  def install
    bin.install "big"
  end

  test do
    assert_match "big", shell_output("#{bin}/big --help")
  end
end
