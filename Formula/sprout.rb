# Generated with JReleaser 1.13.1 at 2026-02-21T14:03:35.790807892Z

class Sprout < Formula
  desc "Sprout CLI scaffolding tool"
  homepage "https://github.com/AmineSidki/sprout-releases"
  version "1.6.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.6.6/sprout-osx-aarch_64.zip"
    sha256 "275a572d6387d02e25896c7f4deca59df7cef43653c25b335bd101e75d53eef1"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/AmineSidki/sprout-releases/releases/download/v1.6.6/sprout-osx-x86_64.zip"
    sha256 "0fb07a36d8728539aac039d01e5f444b215e5f1b55d4f17cf9d94db35b02e93d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/sprout" => "sprout"
  end

  test do
    output = shell_output("#{bin}/sprout --version")
    assert_match "1.6.6", output
  end
end
