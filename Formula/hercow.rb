# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hercow < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.22"

  on_macos do
    url "https://github.com/gkwa/hercow/releases/download/v0.0.22/hercow_Darwin_x86_64.tar.gz"
    sha256 "9cb44c0e3bb0e66250ba432e63211a90dd8bb8bbc8b6a149a941b9eff37b86f8"

    def install
      bin.install "hercow"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Hercow
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gkwa/hercow/releases/download/v0.0.22/hercow_Linux_x86_64.tar.gz"
      sha256 "7bcbadea60c799fcf040f1d5bde392feb3ad466f7435c40bd00d6cf7aaac2237"

      def install
        bin.install "hercow"
      end
    end
  end
end
