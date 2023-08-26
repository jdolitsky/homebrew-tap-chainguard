# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.160"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.160/chainctl_darwin_x86_64"
      sha256 "1db2eae10b587a2352e1dbd8a18c4cd0776668a973f0983731f9c68a16ca47b3"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.160/chainctl_darwin_arm64"
      sha256 "92f6f38d053b3779dbb3f0c7b2adcc50ef66ca30f5ce727594ef67c5f9c7dbd5"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.160/chainctl_linux_x86_64"
      sha256 "22cb0512b3896fa67816d6ce3e126ada299cb5f26c301a3a3f46544fc3ba5517"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.160/chainctl_linux_arm64"
      sha256 "c6f80317f38d0c6d0cd3201fead45f1e52d6a2dc3649678bf746f9b3b145ce68"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
