# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.2.27"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.2.27/chainctl_darwin_x86_64"
      sha256 "e26cfe4e024f12a9eea4063c57e60642ab442ac3deb69b4f571dceb47cbd3a78"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.2.27/chainctl_darwin_arm64"
      sha256 "916a38d57bb39cb4b2edfb5996982138e51ccb43e9cef473315e3f2b24f7f7d8"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.27/chainctl_linux_x86_64"
        sha256 "5b7f4febd618de845869d2f85a04c21537285672276cc95b1477b314372f92d5"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.2.27/chainctl_linux_arm64"
        sha256 "ba30698493b8de353a05ef7ab03f06cd745ccb9f28044af7392a0ca27b3af7a9"

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
