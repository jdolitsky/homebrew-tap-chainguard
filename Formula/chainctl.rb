# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.270"

  on_macos do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.270/chainctl_darwin_x86_64"
      sha256 "1b479d9c58a075bbaea317e5a229cf8ec63c140a5e4a86f6e79354488db5d31a"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm?
      url "https://dl.enforce.dev/chainctl/0.1.270/chainctl_darwin_arm64"
      sha256 "4cc5b816a628955632da14cfe59ee75cc76701386922a49d354b8dad85d10ed0"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://dl.enforce.dev/chainctl/0.1.270/chainctl_linux_x86_64"
      sha256 "352296fdf64f30cd35ee10edfc1c917a58dd1ad350a6ffc560975a7747ef7542"

      def install
        bin.install "chainctl_linux_x86_64" => "chainctl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://dl.enforce.dev/chainctl/0.1.270/chainctl_linux_arm64"
      sha256 "e25eb6413ed44efcbb4a9dc38c481f9220133c3a277d46c755ddeac2c4788e10"

      def install
        bin.install "chainctl_linux_arm64" => "chainctl"
      end
    end
  end

  test do
    system "#{bin}/chainctl", "version"
  end
end
