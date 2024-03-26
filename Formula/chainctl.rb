# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.255"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.255/chainctl_darwin_x86_64"
      sha256 "7481e94e93f25e5359358c27d1ccfc4434ea406b2525aa8124d83d2057450f7d"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.255/chainctl_darwin_arm64"
      sha256 "2d6242f992c2524ad63708131dfa483de03c30042badda64f2e4a2959349c3d6"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.255/chainctl_linux_x86_64"
      sha256 "f022dd2cadc60afb8112a960108a19625a994fbfa3d7145f83f95d417d34c9cf"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.255/chainctl_linux_arm64"
      sha256 "87dbab5e6402867b2f502105d4f923de1f1161c437ae0e9088df0fe49d81b2f8"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
