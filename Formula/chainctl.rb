# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.281"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.281/chainctl_darwin_x86_64"
      sha256 "6e0838c1427f37ce2beead101ab9c4eb5650ec8132a3f17c772607349bedb78e"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.281/chainctl_darwin_arm64"
      sha256 "4090fac4e93d8b8826ca6eefa943399e91f458c9c657761e9f373572b6053280"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.281/chainctl_linux_x86_64"
      sha256 "eac6a7aa005df676f5d3779c4726148a712ec7d1e0878db955e77cd73cc4ea0e"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.281/chainctl_linux_arm64"
      sha256 "eb4330f87fda40d5e92eb3cc23d8a743d0e549fb9666e88b1f79d17d8b471a09"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
