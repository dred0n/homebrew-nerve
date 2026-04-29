class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.3/nerve-macos-aarch64.tar.gz"
      sha256 "8d90e04a46d005b9990801b53895c4b57717af25b2fffba893dcae2c87189f29"

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
