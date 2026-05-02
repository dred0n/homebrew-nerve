class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve"
  version "0.10.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.4/nerve-macos-aarch64.tar.gz"
      sha256 "0f7909e1dd885471ddb892587b00bbc8004c04971b06f893b6f35929bda1b252"

      def install
        bin.install "nerve-macos-aarch64" => "nerve"
      end
    end

    on_intel do
      def install
        odie "Nerve Homebrew binary is currently available for Apple Silicon Macs only"
      end
    end
  end

  on_linux do
    def install
      odie "Nerve Homebrew binary is currently available for Apple Silicon Macs only"
    end
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
  end
end
