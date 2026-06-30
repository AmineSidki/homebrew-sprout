# Generated with JReleaser 1.13.1 at 2026-06-30T18:32:49.588981052Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.9.7/sprout-1.9.7.zip"
  version "1.9.7"
  sha256 "14b977894966e10732bf55297518f6cf6b3e710a9bb7ba94569173a4b10b3c2d"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.9.7", output
  end
end
