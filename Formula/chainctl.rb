# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chainctl < Formula
  desc "CLI for the Chainguard Platform"
  homepage "https://chainguard.dev"
  version "0.1.397"

  on_macos do
    on_intel do
      url "https://dl.enforce.dev/chainctl/0.1.397/chainctl_darwin_x86_64"
      sha256 "b07780b85b3afe13d77257168d4bf46c4866f8cb55ba918aef748742b9625e4f"

      def install
        bin.install "chainctl_darwin_x86_64" => "chainctl"
      end
    end
    on_arm do
      url "https://dl.enforce.dev/chainctl/0.1.397/chainctl_darwin_arm64"
      sha256 "74f209e458eabc36bff6008a8b9b8f4c1d11984eac385e78b7c3e05588b12368"

      def install
        bin.install "chainctl_darwin_arm64" => "chainctl"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.397/chainctl_linux_x86_64"
        sha256 "445671eae2804ad8f7398bbcfaff78db0c315ffc70993db16bccb95020c2ff47"

        def install
          bin.install "chainctl_linux_x86_64" => "chainctl"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://dl.enforce.dev/chainctl/0.1.397/chainctl_linux_arm64"
        sha256 "d6c191bdc106bf97975b7e82c2d9a741f506a60d4e72f6520ee36fdc6fac9f1d"

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
