class Melange < Formula
  desc "Build APKs from source code"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.3.0-rc.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdolitsky/melange/releases/download/v0.3.0-rc.2/melange_0.3.0-rc.2_darwin_arm64.tar.gz"
      sha256 "ba9be4f6054d822ff5c0e5aa9367f0b0f4dcf3e8e9d123f45998f6e85c870d25"

      def install
        bin.install "melange"
      end
    end
  end

  test do
    system "#{bin}/melange", "version"
  end
end
