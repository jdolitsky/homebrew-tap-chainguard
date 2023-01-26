class Apko < Formula
  desc "Build OCI images using APK directly without Dockerfile"
  homepage "https://github.com/chainguard-dev/apko"
  version "0.7.0-rc.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdolitsky/apko/releases/download/v0.7.0-rc.3/apko_0.7.0-rc.3_darwin_arm64.tar.gz"
      sha256 "6efe3db0206acb8416eb8d2d1aa7e3884ba71d80968eda49c27403fdf2d1d8f7"

      def install
        bin.install "apko"
      end
    end
  end

  test do
    system "#{bin}/apko", "version"
  end
end
