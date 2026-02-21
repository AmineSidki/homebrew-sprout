# Generated with JReleaser 1.13.1 at 2026-02-21T10:58:10.15150307Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.6/sprout-osx-x86_64.zip"
  version "1.6"
  sha256 "a00b1e1d80f5422b22856ee206e99b15599699e7201df47af0b95c70bcf3e0ee"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.6", output
  end
end
