require "language/node"

class MyCli < Formula
  desc "chaya7908 cli"
  homepage "https://github.com/chaya7908/my-cli"
  url "https://github.com/chaya7908/homebrew-my-cli/archive/1.0.0.tar.gz"
  sha256 "a2608ef12ed238be682886892d482644c351b77f"
  license "MIT"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
