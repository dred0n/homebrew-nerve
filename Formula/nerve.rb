class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve-releases"
  url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.18/nerve-macos-aarch64.tar.gz"
  version "0.10.18"
  sha256 "ff7be9deb600a810eb873c6251bf92784f2e7837564d0d5cb7536f67359eec9e"
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
