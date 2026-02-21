# Generated with JReleaser 1.13.1 at 2026-02-21T12:01:06.03770972Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.6/sprout-osx-x86_64.zip"
  version "1.6"
  sha256 "4a6a7e38e3da0a7941c1ab36ed034bbdae29cf2138dcf95e7b90404701a31cad"
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
