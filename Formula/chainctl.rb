# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.405"

  on_macos do
    on_intel do
      url "https://dl.enforce.dev/chainctl/0.1.405/chainctl_darwin_x86_64"
      sha256 "c13e461bb5c81576f250e61a04dec1e492b57c75834742ad30e687daf8755305"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    on_arm do
      url "https://dl.enforce.dev/chainctl/0.1.405/chainctl_darwin_arm64"
      sha256 "6b2f139f68f0d7a453340d4fe29de24868556c7b4491ea6caea6b65b6fe66996"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.405/chainctl_linux_x86_64"
        sha256 "b01fa7389b0df75d263ed65b7340c97e5c42fe3afb6e2b822a3da8a307ad4943"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.405/chainctl_linux_arm64"
        sha256 "e9cd1d7d50cb84a358e0c701b03b022f19e395f82d38e8eaf08549a42f40bcd6"

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
