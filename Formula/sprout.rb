# Generated with JReleaser 1.13.1 at 2026-03-21T17:19:33.83461869Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.8/sprout-1.8.zip"
  version "1.8"
  sha256 "22dd245822b7c072d209349052bbe422d0383252316c344a3fe56a75cd62b9dd"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.8", output
  end
end
