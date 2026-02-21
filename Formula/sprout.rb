# Generated with JReleaser 1.13.1 at 2026-02-21T12:55:23.27212979Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.6.1/sprout-osx-x86_64.zip"
  version "1.6.1"
  sha256 "3c3eb9ac62d3a543caf56a720d3fbb11968facf0cc6ed55a906ebfcfd528c6fe"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.6.1", output
  end
end
