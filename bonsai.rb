class Bonsai < Formula
  desc "Your bonsai tool description"
  homepage "https://github.com/abhinavramkumar/bonsai"
  version "0.1.2"
  license "MIT"  # update to your actual license

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhinavramkumar/bonsai/releases/download/v0.1.2/bonsai-darwin-arm64"
      sha256 "fb6e95689a0d43aa0dcecd31c40bde8b20ee2205f1f69863eb9c8f9d00e6ca6d"
    else
      url "https://github.com/abhinavramkumar/bonsai/releases/download/v0.1.2/bonsai-darwin-x86_64"
      sha256 "eaec9f20de9139f5244d87fb7a560b96b6d00f40b0c1df6fab93973d2a8c85f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/abhinavramkumar/bonsai/releases/download/v0.1.2/bonsai-linux-arm64"
      sha256 "f85370e31e0b7943a02408d37a122197be8fc6ea21636c26b6424b006157e0aa"
    else
      url "https://github.com/abhinavramkumar/bonsai/releases/download/v0.1.2/bonsai-linux-x86_64"
      sha256 "ff32e4b7364a12cb47f7ad52d70daa3cc60240256e208d4811cf8997bd72f7eb"
    end
  end

  def install
    bin.install Dir["bonsai-*"].first => "bonsai"
  end

  test do
    system "#{bin}/bonsai", "--version"
  end
end
