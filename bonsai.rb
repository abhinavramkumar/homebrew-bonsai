class Bonsai < Formula
  desc "One command to work on another branch—separate folder, deps, and editor. No stash, no conflict."
  homepage "https://github.com/abhinavramkumar/bonsai"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhinavramkumar/bonsai/releases/download/v0.1.12/bonsai-darwin-arm64"
      sha256 "fa2b8769d082fe5479964c9039ffcb3047a528f3debee535adfb00f19cc4e094"
    else
      url "https://github.com/abhinavramkumar/bonsai/releases/download/v0.1.12/bonsai-darwin-x86_64"
      sha256 "caf6c19ff6abb642103b8473a06e66cb2a5d3c7127a8f704f170bad116af9f7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/abhinavramkumar/bonsai/releases/download/v0.1.12/bonsai-linux-arm64"
      sha256 "f6faf2b7bff18d12c5594274b71824a568c18b128effe09c6d9c2fa43cd59b1e"
    else
      url "https://github.com/abhinavramkumar/bonsai/releases/download/v0.1.12/bonsai-linux-x86_64"
      sha256 "6f8e00cb51502696c7c30f09c551a42cbb74d684d66cc1854c295bfe86d44c90"
    end
  end

  def install
    bin.install Dir["bonsai-*"].first => "bonsai"
  end

  test do
    system "#{bin}/bonsai", "--version"
  end
end
