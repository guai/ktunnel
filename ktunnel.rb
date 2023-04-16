# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ktunnel < Formula
  desc "Network tunneling tool for kubernetes."
  homepage "https://github.com/omrikiei/ktunnel"
  version "1.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/omrikiei/ktunnel/releases/download/v1.5.1/ktunnel_1.5.1_Darwin_arm64.tar.gz"
      sha256 "b2df73553975d908934598c2fe89104ad29e326c94bbebbbed5f1db94c5727a2"

      def install
        bin.install "ktunnel"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/omrikiei/ktunnel/releases/download/v1.5.1/ktunnel_1.5.1_Darwin_x86_64.tar.gz"
      sha256 "0a105f82028a64eedef48c24564fb965840683e579fdadfab09a98df233d4c5d"

      def install
        bin.install "ktunnel"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/omrikiei/ktunnel/releases/download/v1.5.1/ktunnel_1.5.1_Linux_x86_64.tar.gz"
      sha256 "bb1135d92e007f1916441b7ebbf50ad62b78b7b8c2d314e91128fcad8ae5f7c4"

      def install
        bin.install "ktunnel"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/omrikiei/ktunnel/releases/download/v1.5.1/ktunnel_1.5.1_Linux_arm64.tar.gz"
      sha256 "d5a0398e9bde8a8073adb5df7ea75cb10684beead86023964fda25f25cc6eb3d"

      def install
        bin.install "ktunnel"
      end
    end
  end

  head "https://github.com/omrikiei/ktunnel.git"

  test do
    system "#{bin}/program version"
  end
end
