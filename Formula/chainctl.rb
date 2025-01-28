# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.2.32"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.2.32/chainctl_darwin_x86_64"
      sha256 "ef0dd33f1b0c12bad4681fe3e002b5891542b76e4a04541514dfa64945e94f02"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.2.32/chainctl_darwin_arm64"
      sha256 "53b3c2d94d50fc2b4403ea368fadac1429250ee4839be430251827e5a7131f02"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.32/chainctl_linux_x86_64"
        sha256 "66f8ee12b7de5d9a50013f403e568fffbb26f7a744c55a20bc66e7e5a7e4f515"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.32/chainctl_linux_arm64"
        sha256 "951dba47ad0390caa787685dc4b4b9855ca9552c33eff594f67aa7c6a1f8686d"

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
