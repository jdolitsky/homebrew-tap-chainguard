# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.129"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.129/chainctl_darwin_x86_64"
      sha256 "5e4e0197f49472ba878fbc34a74ab738b2863482ce4fbcf9944b99ecbf0fffa6"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.129/chainctl_darwin_arm64"
      sha256 "bf6a3d8c57d485540859cf94855b7f1fea300b20809eaab45549ed7f9f64a23f"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.129/chainctl_linux_x86_64"
      sha256 "7d49d10189d94cf0df5f4613154ce2cbb624e86a8a5053f0873b4149517dd484"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.129/chainctl_linux_arm64"
      sha256 "3995112f247cee6302be9543c6d50f0693a2e07eb8f07b31d48eae4ceed04cad"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
