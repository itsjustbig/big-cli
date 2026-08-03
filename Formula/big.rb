class Big < Formula
  desc "Manage your big (itsjustbig.com) Instagram DM inbox and automations"
  homepage "https://itsjustbig.com"
  version "1.2.0"

  on_macos do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.2.0/big-darwin-arm64.tar.gz"
      sha256 "a251e32d1a96108f929a7bcaae956b85ff7630bf8f48adac02db1400ca05c077"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.2.0/big-darwin-x64.tar.gz"
      sha256 "c68ee307fc0692d2eb1051b78e832a443472cdfbfb74599baefc67cbc244bb98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.2.0/big-linux-arm64.tar.gz"
      sha256 "af48e832420d64a4ec9e26794a1a28f4620955cb372ce42ac54e2e8299f838f7"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v1.2.0/big-linux-x64.tar.gz"
      sha256 "70b2667b177cbc370e69c964c2bc3b6fdc25354ffe033a961b540400da7cf5d4"
    end
  end

  def install
    bin.install "big"
  end

  test do
    assert_match "big", shell_output("#{bin}/big --help")
  end
end
