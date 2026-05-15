class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve"
  version "0.10.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.15/nerve-macos-aarch64.tar.gz"
      sha256 "c4cdd34d9a4a179d97251e8486ee7639177d6dfe23a1bfc53bf5d5cb160a9b1e"

      def install
        bin.install "nerve-macos-aarch64" => "nerve"
      end
    end
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
  end
end
