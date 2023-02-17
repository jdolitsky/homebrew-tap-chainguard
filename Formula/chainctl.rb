# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.76"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.76/chainctl_darwin_x86_64"
      sha256 "97a9503cac917f53f2564627da85a3e9f7a8e4310e9756900e9d5800442cfdf9"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.76/chainctl_darwin_arm64"
      sha256 "baaa9df81434136612b73691daf1d428e4057f425097eee809bccd91800e58ae"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.76/chainctl_linux_x86_64"
      sha256 "9aa33857490160d2d32c4bb7b6be1d2e05ad772702119c0d17aa09495bffdea1"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.76/chainctl_linux_arm64"
      sha256 "56ae5ed74797881096990e1c807c7d92276c323f2d4c54c2be84ca4fbab5dbf1"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
