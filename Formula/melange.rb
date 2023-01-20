class Melange < Formula
  desc "Build APKs from source code"
  homepage "https://github.com/chainguard-dev/melange"
  version "0.3.0-rc.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jdolitsky/melange/releases/download/v0.3.0-rc.1/melange_0.3.0-rc.1_darwin_arm64.tar.gz"
      sha256 "76ed3a98a3223796b86de45c96a1bb2f93b0c69378786bd2bcb51d22714fd7ae"

      def install
        bin.install "melange"
      end
    end
  end

  test do
    system "#{bin}/melange", "version"
  end
end
