# Generated with JReleaser 1.13.1 at 2026-06-30T16:17:50.380694904Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.9.4/sprout-1.9.4.zip"
  version "1.9.4"
  sha256 "83f9c25ed21ece09052b9d041fe8e6f8e76b0294c23791ba106f1c53d11d9dc7"
  license "MIT"

  depends_on "openjdk@17"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.9.4", output
  end
end
