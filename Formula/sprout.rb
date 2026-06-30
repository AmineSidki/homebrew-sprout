# Generated with JReleaser 1.13.1 at 2026-06-30T17:43:04.88970818Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.9.5/sprout-1.9.5.zip"
  version "1.9.5"
  sha256 "808f62b00957e09a7fbc9deab5cf7bed01f515f348f0ec30ce2b6c7416a90998"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.9.5", output
  end
end
