# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cakepalm < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.7"

  on_macos do
    url "https://github.com/gkwa/cakepalm/releases/download/v0.0.7/cakepalm_Darwin_x86_64.tar.gz"
    sha256 "610045b468fe6125fc1e399ad0dfe02d6cd209b9f2d1fcc9378cd358d1b892c2"

    def install
      bin.install "cakepalm"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Cakepalm
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gkwa/cakepalm/releases/download/v0.0.7/cakepalm_Linux_x86_64.tar.gz"
      sha256 "cc357a2f963c42a311aabe524ee718c80da3d3e0abd130202c915bbc01fd3ad4"

      def install
        bin.install "cakepalm"
      end
    end
  end
end
