# Generated with JReleaser 1.13.1 at 2026-06-28T13:19:17.763920578Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.9/sprout-1.9.zip"
  version "1.9"
  sha256 "20cd00ba585382f4afeeb9583601897ad33d36d31a43f316b24a7fde2b582975"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.9", output
  end
end
