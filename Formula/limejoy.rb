# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Limejoy < Formula
  desc ""
  homepage "https://github.com/gkwa/limejoy"
  version "0.0.1"

  on_macos do
    url "https://github.com/gkwa/limejoy/releases/download/v0.0.1/limejoy_Darwin_x86_64.tar.gz"
    sha256 "d66c04ac2258bcb5788b1213ec6465aa047381e3aa70398ad795833a898569fa"

    def install
      bin.install "limejoy"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Limejoy
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/limejoy/releases/download/v0.0.1/limejoy_Linux_x86_64.tar.gz"
        sha256 "e8418e408c4608b46d41394bf93b75db97f8b23787bf5d2810bdd9c0b9756825"

        def install
          bin.install "limejoy"
        end
      end
    end
  end
end
