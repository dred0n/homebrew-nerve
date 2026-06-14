class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve"
  version "0.10.22"
  license "MIT"

  depends_on "uv"
  depends_on "portaudio"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.22/nerve-macos-aarch64.tar.gz"
      sha256 "69c70b823b7aa7b8b4fcfd32047ee6cdcd91297bbd4d2d4530899d3cfef03b44"

      def install
        bin.install "nerve-macos-aarch64" => "nerve"
      end
    end
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
  end
end
