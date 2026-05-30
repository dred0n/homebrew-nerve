class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve-releases"
  url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.20/nerve-macos-aarch64.tar.gz"
  version "0.10.20"
  sha256 "9e795a3ff9350570dd7cb44103be6b9e2fa92e62cb085c6c512cd4cb20c1fc64"
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
