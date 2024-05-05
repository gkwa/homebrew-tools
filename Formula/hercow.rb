# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hercow < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.10"

  on_macos do
    url "https://github.com/gkwa/hercow/releases/download/v0.0.10/hercow_Darwin_x86_64.tar.gz"
    sha256 "136b6a98c6da8a3ead278478139b54ccdd4e48a79f3dc6256f901c114f67aecd"

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
      url "https://github.com/gkwa/hercow/releases/download/v0.0.10/hercow_Linux_x86_64.tar.gz"
      sha256 "988c150065428e35a3669da36dead2c9d83a0a52733c5c49c9a2f3b1965604e2"

      def install
        bin.install "hercow"
      end
    end
  end
end
