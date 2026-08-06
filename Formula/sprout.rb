# Generated with JReleaser 1.13.1 at 2026-08-06T23:38:07.739470947Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.9.8/sprout-1.9.8.zip"
  version "1.9.8"
  sha256 "07969abc9b246df83edb867f38fcd5477452b2df242835adec79f0c67f93928e"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.9.8", output
  end
end
