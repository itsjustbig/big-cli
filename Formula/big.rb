class Big < Formula
  desc "Manage your big (itsjustbig.com) Instagram DM inbox and automations"
  homepage "https://itsjustbig.com"
  version "2.10.0"

  on_macos do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.10.0/big-darwin-arm64.tar.gz"
      sha256 "70a6e79282e5d95f7b7dd64da4003bf7fac0ef39c2706171862ccd9e5335c461"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.10.0/big-darwin-x64.tar.gz"
      sha256 "2a5b9e572106d525e90968a880e09f8b170d830856e0a883a6c6cea128774677"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.10.0/big-linux-arm64.tar.gz"
      sha256 "bb0bec365420893774d7dc5ae3089b83ec9d553950b2cc616d6eb118322db5b6"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.10.0/big-linux-x64.tar.gz"
      sha256 "2cf705c7697e97318217f6dc3d1beb9935c4a90b274235cd5953ab6abef2f583"
    end
  end

  def install
    bin.install "big"
  end

  test do
    assert_match "big", shell_output("#{bin}/big --help")
  end
end
