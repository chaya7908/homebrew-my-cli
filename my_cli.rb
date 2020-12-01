require "language/node"

class MyCli < Formula
  desc "chaya7908 cli"
  homepage "https://github.com/chaya7908/my-cli"
  url "https://github.com/chaya7908/homebrew-my-cli/archive/tmp.1.tar.gz"
  sha256 "302f2714277113087dc6c21e712e618e8222ce5a3c8712f7d65ff7fa63eb93d9"
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
