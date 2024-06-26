# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Howbob < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.7"

  on_macos do
    url "https://github.com/gkwa/howbob/releases/download/v0.0.7/howbob_Darwin_x86_64.tar.gz"
    sha256 "f579dfc9799a6852c7ebd36ce4359b627e72ee2881f1aa62c690ae7ac7a1f876"

    def install
      bin.install "howbob"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Howbob
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gkwa/howbob/releases/download/v0.0.7/howbob_Linux_x86_64.tar.gz"
      sha256 "04897251619ca799bb5b83311a348d55e13d2c8d8673eb5671389d876d535a64"

      def install
        bin.install "howbob"
      end
    end
  end
end
