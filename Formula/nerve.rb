class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve"
  version "0.10.23"
  license "MIT"

  depends_on "uv"
  depends_on "portaudio"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.23/nerve-macos-aarch64.tar.gz"
      sha256 "f3074b7476ed79e376d94fe1fc40094d5da679e0c172588bbdd28df0abcd9f83"

      def install
        bin.install "nerve-macos-aarch64" => "nerve"
      end
    end
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
  end
end
