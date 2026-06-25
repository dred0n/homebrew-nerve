class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve"
  version "0.10.27"
  license "MIT"

  depends_on "uv"
  depends_on "portaudio"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.27/nerve-macos-aarch64.tar.gz"
      sha256 "9220e8826101a429592932ca77c5c44a126b41fd9f31c6c154579caca0728b1c"

      def install
        bin.install "nerve-macos-aarch64" => "nerve"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.27/nerve-linux-x86_64.tar.gz"
      sha256 "b9cb2e80833492854f538cda79cc4b727a0d6d6fa73865dcfe4636eb51e14938"

      def install
        bin.install "nerve-linux-x86_64" => "nerve"
      end
    end
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
  end
end
