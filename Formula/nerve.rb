class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve"
  version "0.10.30"
  license "MIT"

  depends_on "uv"
  depends_on "portaudio"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.30/nerve-macos-aarch64.tar.gz"
      sha256 "3d74fcaf34040753431f92e1a6b95e4fc69e5043c3c9c4a0bc60688c5759e2c3"

      def install
        bin.install "nerve-macos-aarch64" => "nerve"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.28/nerve-linux-x86_64.tar.gz"
      sha256 "86bf8192df1447e490e7c23feff218064e124e52da3a2571e410bcba092995b9"

      def install
        bin.install "nerve-linux-x86_64" => "nerve"
      end
    end
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
  end
end
