# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Melange < Formula
  desc "Build apk packages using declarative pipelines"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.18.0"

  on_macos do
    on_intel do
      url "https://github.com/chainguard-dev/melange/releases/download/v0.18.0/melange_0.18.0_darwin_amd64.tar.gz"
      sha256 "a3ba17c0ad93d13df252ff3c2bcec0488c558924cfcc91d16fcc8bf1d1b2cb71"

      def install
        bin.install "melange" => "melange"
      end
    end
    on_arm do
      url "https://github.com/chainguard-dev/melange/releases/download/v0.18.0/melange_0.18.0_darwin_arm64.tar.gz"
      sha256 "09c5662e2e5944d1570e6eb83095fc335bc867c1ea38241efefb3423ccd45634"

      def install
        bin.install "melange" => "melange"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chainguard-dev/melange/releases/download/v0.18.0/melange_0.18.0_linux_amd64.tar.gz"
        sha256 "85f442ba3ef6426481565634bbd44734940a6b2b3c2897e6f70916b17f12dbc7"

        def install
          bin.install "melange" => "melange"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chainguard-dev/melange/releases/download/v0.18.0/melange_0.18.0_linux_arm64.tar.gz"
        sha256 "cabafd236c37ee2c543390c1a61d2ca417d77b19332e9d441309ddbcbbd78056"

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
