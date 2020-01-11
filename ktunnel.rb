# This file was generated by GoReleaser. DO NOT EDIT.
class Ktunnel < Formula
  desc "Network tunneling tool for kubernetes"
  homepage "https://github.com/omrikiei/ktunnel"
  version "1.1.3"
  head "https://github.com/omrikiei/ktunnel.git"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/omrikiei/ktunnel/releases/download/v1.1.3/ktunnel_1.1.3_Darwin_x86_64.tar.gz"
    sha256 "f8e3d47a8a12fdf81e06b900a6389ffa1daf1db23b47fd16da4f9632a11265c7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/omrikiei/ktunnel/releases/download/v1.1.3/ktunnel_1.1.3_Linux_x86_64.tar.gz"
      sha256 "1a726bd68e059e43d47ab0d32124afec66791899568c966061b1125b434793e2"
    end
  end

  def install
    bin.install "ktunnel"
  end

  test do
    system "#{bin}/program"
  end
end
