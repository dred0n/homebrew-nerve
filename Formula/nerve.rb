class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve"
  version "0.10.26"
  license "MIT"

  depends_on "uv"
  depends_on "portaudio"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.26/nerve-macos-aarch64.tar.gz"
      sha256 "755477caf8da8ffa75e9baf34ca81afe43f32a33965d6046e375e23d1653e8bd"

      def install
        bin.install "nerve-macos-aarch64" => "nerve"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.26/nerve-linux-x86_64.tar.gz"
      sha256 "e93691b3bfccd0dec621b3518a09c38de0f7691d7869a714e6aaa897d8521531"

      def install
        bin.install "nerve-linux-x86_64" => "nerve"
      end
    end
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
  end
end
