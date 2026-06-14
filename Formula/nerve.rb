class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve"
  version "0.10.21"
  license "MIT"

  depends_on "uv"
  depends_on "portaudio"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.21/nerve-macos-aarch64.tar.gz"
      sha256 "1cf4c737886b91f84f5e5c71b0f065e44df4817e5f25dc48a6fde10280010393"

      def install
        bin.install "nerve-macos-aarch64" => "nerve"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.21/nerve-linux-x86_64.tar.gz"
      sha256 "5df6e4cd404d5521603ec0472a12856d12c1b0f9e507b3761b6bb0ded1c8a438"

      def install
        bin.install "nerve-linux-x86_64" => "nerve"
      end
    end
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
  end
end
