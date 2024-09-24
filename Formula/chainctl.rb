# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.384"

  on_macos do
    on_intel do
      url "https://dl.enforce.dev/chainctl/0.1.384/chainctl_darwin_x86_64"
      sha256 "93ea5e5822be95b4d8ee435ade96be9d2648d3c2c083f885c0b0974c8f1df7f8"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    on_arm do
      url "https://dl.enforce.dev/chainctl/0.1.384/chainctl_darwin_arm64"
      sha256 "b4bb4e926332f5d452b8f0887a9a96672fc31ecaa09a619bf91201acf3e12023"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.384/chainctl_linux_x86_64"
        sha256 "e11101e91e3170dd4800c45cf3a498aec3c50ddf9c735714f3d18c0fc9c60ecd"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.384/chainctl_linux_arm64"
        sha256 "78a2525bcedcee4712930e33d278d20bda432802bbe7bfe548cf0a3b25d4bdf3"

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
