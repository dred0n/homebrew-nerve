class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve-releases"
  url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.19/nerve-macos-aarch64.tar.gz"
  version "0.10.19"
  sha256 "cc8da2379e64b3b082793fe0cb9199a08a9d4d363b077c1e29285707459156a8"
  license "MIT"

  depends_on "portaudio"
  depends_on "uv"

  def install
    bin.install "nerve-macos-aarch64" => "nerve"
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
  end
end
