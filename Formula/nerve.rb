class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve"
  version "0.10.17"
  license "MIT"

  depends_on "uv"
  depends_on "portaudio"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.17/nerve-macos-aarch64.tar.gz"
      sha256 "f83aac619c7bcf7ab02773d8f9b85df50d1df9fce211d753d805f1c39d67e01c"

      def install
        bin.install "nerve-macos-aarch64" => "nerve"
      end
    end
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
  end
end
