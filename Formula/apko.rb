class Apko < Formula
  desc "Build OCI images using APK directly without Dockerfile"
  homepage "https://github.com/chainguard-dev/apko"
  version "0.7.0-rc.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdolitsky/apko/releases/download/v0.7.0-rc.1/apko_0.7.0-rc.1_darwin_arm64.tar.gz"
      sha256 "2b5e24044c5eb9958d7cd2007b79f828773eb07b4427a586af3310f23decec54"

      def install
        bin.install "apko"
      end
    end
  end

  test do
    system "#{bin}/apko", "version"
  end
end
