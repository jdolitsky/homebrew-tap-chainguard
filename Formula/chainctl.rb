# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.373"

  on_macos do
    on_intel do
      url "https://dl.enforce.dev/chainctl/0.1.373/chainctl_darwin_x86_64"
      sha256 "1b0d665dcaa2330312c69589b372dbf9e7cdb231785053c34a9e50462609bf88"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    on_arm do
      url "https://dl.enforce.dev/chainctl/0.1.373/chainctl_darwin_arm64"
      sha256 "52100d509ffaf6be4f2fe79d3992e80a16a287a4cf18d4ce4de2129e72f7ed0e"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.373/chainctl_linux_x86_64"
        sha256 "b0d91ed0e0cda2462c6df277154256760625003d968e749df9c3cb4f3b9c0083"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.373/chainctl_linux_arm64"
        sha256 "aa6a960767b77bf0de0d7c1109c4d449e555692d61cc8c83a9bcdda16a6bd9f8"

        def install
          bin.install "chainctl_linux_arm64" => "chainctl"
        end
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
