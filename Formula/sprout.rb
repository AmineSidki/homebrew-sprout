# Generated with JReleaser 1.13.1 at 2026-02-19T00:22:03.716747627Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.4.6/sprout-osx-x86_64.zip"
  version "1.4.6"
  sha256 "25b5322b28728c7712a7d879677a81729606dc5c6e601756c2cc33eef5c4bda0"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.4.6", output
  end
end
