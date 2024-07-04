# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Limejoy < Formula
  desc ""
  homepage "https://github.com/gkwa/limejoy"
  version "0.0.4"

  on_macos do
    url "https://github.com/gkwa/limejoy/releases/download/v0.0.4/limejoy_Darwin_x86_64.tar.gz"
    sha256 "2ea74deb8d0253123479a7e25734cc855b7c7f0ff9055c9ede5b7d2ee102bd4d"

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
        url "https://github.com/gkwa/limejoy/releases/download/v0.0.4/limejoy_Linux_x86_64.tar.gz"
        sha256 "6f0590af4b4950013fe69b52ab968c388b3fb2a736a4d2714163fbf31344fcda"

        def install
          bin.install "limejoy"
        end
      end
    end
  end
end
