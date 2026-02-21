# Generated with JReleaser 1.13.1 at 2026-02-21T13:40:02.370737094Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  version "1.6.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.6.5/sprout-osx-x86_64.zip"
    sha256 "875edbda21545ab2301e7ec0935eb8a627466140bf58c3270912701ab0d05129"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.6.5/sprout-osx-x86_64.zip"
    sha256 "875edbda21545ab2301e7ec0935eb8a627466140bf58c3270912701ab0d05129"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.6.5", output
  end
end
