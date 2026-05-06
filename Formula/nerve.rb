class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve-releases"
  version "0.10.6"
  license "MIT"

  depends_on "dred0n/shadom/shadom"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.6/nerve-macos-aarch64.tar.gz"
      sha256 "cf508042ff1f3f8b3f64c5c061e2b7adb4d1e80506f1c4547308094127112000"

      def install
        bin.install "nerve-macos-aarch64" => "nerve"
      end
    end
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
    assert_match "agent-first browser automation CLI", shell_output("#{Formula["dred0n/shadom/shadom"].opt_bin}/shadom --help")
  end
end
