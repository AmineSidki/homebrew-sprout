# Generated with JReleaser 1.13.1 at 2026-02-21T12:19:39.898067499Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.6.1/sprout-osx-x86_64.zip"
  version "1.6.1"
  sha256 "73f9858078593a90a4458ac3864cd3e005806e0d0c6bfa51065bcc9ec5b35e0d"
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
