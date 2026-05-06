class Nerve < Formula
  desc "AI coding agent powered by Claude and ChatGPT"
  homepage "https://github.com/dred0n/nerve"
  version "0.10.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dred0n/nerve-releases/releases/download/v0.10.7/nerve-macos-aarch64.tar.gz"
      sha256 "306ab9db7a1683f148e44b1b2988058ec5bf3b2ca1319718265f9c866a00b51d"

      def install
        bin.install "nerve-macos-aarch64" => "nerve"
      end
    end
  end

  test do
    assert_match "nerve", shell_output("#{bin}/nerve --version")
  end
end
