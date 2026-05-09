class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve"
  version "0.10.9"
  license "MIT"

  depends_on "dred0n/shadom/shadom"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.9/nerve-macos-aarch64.tar.gz"
      sha256 "04aceb492f54938dcfdfab99420da5abe58886e5dabd840b74192b684f144c52"

      def install
        bin.install "nerve-macos-aarch64" => "nerve"
      end
    end
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
    assert_match "shadom", shell_output("#{Formula["dred0n/shadom/shadom"].opt_bin}/shadom --version")
  end
end
