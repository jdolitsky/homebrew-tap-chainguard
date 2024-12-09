# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Melange < Formula
  desc "Build apk packages using declarative pipelines"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.17.4"

  on_macos do
    on_intel do
      url "https://github.com/chainguard-dev/melange/releases/download/v0.17.4/melange_0.17.4_darwin_amd64.tar.gz"
      sha256 "41a9c7df8e76aaf247458126379b7f2ca7dc06b0e300a6ba220a7ac006b28b07"

      def install
        bin.install "melange" => "melange"
      end
    end
    on_arm do
      url "https://github.com/chainguard-dev/melange/releases/download/v0.17.4/melange_0.17.4_darwin_arm64.tar.gz"
      sha256 "ded29cde16f91dcb5ade082e75acc00e3ac6085fe211ecfc0ff70e2d6e267a69"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chainguard-dev/melange/releases/download/v0.17.4/melange_0.17.4_linux_amd64.tar.gz"
        sha256 "f97f973745cade6222ee84a4122c9bedafcdb69e7a0725435c56c7c48f4dac0f"

        def install
          bin.install "melange" => "melange"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chainguard-dev/melange/releases/download/v0.17.4/melange_0.17.4_linux_arm64.tar.gz"
        sha256 "f7015411b0a08f589e646337e8554e98e0dfa2127c0494a6764827ff651b2149"

        def install
          bin.install "melange" => "melange"
        end
      end
    end
  end

  test do
    system "#{bin}/melange", "version"
  end
end
