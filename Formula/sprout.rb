# Generated with JReleaser 1.13.1 at 2026-03-21T18:30:58.887710094Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.8.1/sprout-1.8.1.zip"
  version "1.8.1"
  sha256 "d0c537049217afbff265c43342da5a874249ae9292acd2eea5cd74379f22bb0a"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.8.1", output
  end
end
