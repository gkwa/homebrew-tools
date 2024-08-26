# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nearwait < Formula
  desc ""
  homepage "https://github.com/gkwa/nearwait"
  version "0.0.5"

  on_macos do
    url "https://github.com/gkwa/nearwait/releases/download/v0.0.5/nearwait_Darwin_x86_64.tar.gz"
    sha256 "7c7265b2e5cc78ccabbcfad01ec00df83a18dea9c49cca0662fa275c3b8ad9d2"

    def install
      bin.install "nearwait"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Nearwait
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/nearwait/releases/download/v0.0.5/nearwait_Linux_x86_64.tar.gz"
        sha256 "b45e022b1f0d5370e69ef9a8b4b84ef5d93cf0df7e24ccda22a0208dc4d3e115"

        def install
          bin.install "nearwait"
        end
      end
    end
  end
end
