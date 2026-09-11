class Big < Formula
  desc "Manage your big (itsjustbig.com) Instagram DM inbox and automations"
  homepage "https://itsjustbig.com"
  version "2.0.0"

  on_macos do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.0.0/big-darwin-arm64.tar.gz"
      sha256 "ccf5cc4d08895d1cea8dd8972155a6d59252d5252ebbf9745f325b119547c4ff"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.0.0/big-darwin-x64.tar.gz"
      sha256 "af4fae2382deed90f43085250357d700f803646046f3023a26c5e0718556c714"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.0.0/big-linux-arm64.tar.gz"
      sha256 "54b78ea09bf012c844948e72703b19f83005ba376be3396df98e11ca75805290"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.0.0/big-linux-x64.tar.gz"
      sha256 "e06ba49ab4571344c60746239f7f314061bee1da0bb5c62a37351b398e133e22"
    end
  end

  def install
    bin.install "big"
  end

  test do
    assert_match "big", shell_output("#{bin}/big --help")
  end
end
