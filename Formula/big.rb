class Big < Formula
  desc "Manage your big (itsjustbig.com) Instagram DM inbox and automations"
  homepage "https://itsjustbig.com"
  version "2.8.0"

  on_macos do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.8.0/big-darwin-arm64.tar.gz"
      sha256 "06d8bae0e05d37574274b1eeea3c0382de064706df70b007a70ad53571bb138f"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.8.0/big-darwin-x64.tar.gz"
      sha256 "144bdc48a7941ecb1915d644ea9fabd01ee5a1f5722c432f6a92b4f6a0497f2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.8.0/big-linux-arm64.tar.gz"
      sha256 "c006e84a0bf3d334b537aaee12310dcba70d1b3869a359440c7ab9932f29d17c"
    end
    on_intel do
      url "https://github.com/D-C-Collectibles/homebrew-big/releases/download/cli-v2.8.0/big-linux-x64.tar.gz"
      sha256 "80c8f09cc44ff39f081273f27e0d639909b86c56e6949cf9dac10637031730c9"
    end
  end

  def install
    bin.install "big"
  end

  test do
    assert_match "big", shell_output("#{bin}/big --help")
  end
end
