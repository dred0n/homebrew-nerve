class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve"
  version "0.10.25"
  license "MIT"

  depends_on "uv"
  depends_on "portaudio"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.25/nerve-macos-aarch64.tar.gz"
      sha256 "5f763b3010e6eec634a4175ad03a4f2ac156e8c0fc23992609baa1df53cbcb80"

      def install
        bin.install "nerve-macos-aarch64" => "nerve"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.25/nerve-linux-x86_64.tar.gz"
      sha256 "505384eb4faa5c6addaaf732570de306149366b2b0f16309bc151737adc4e4bc"

      def install
        bin.install "nerve-linux-x86_64" => "nerve"
      end
    end
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
  end
end
