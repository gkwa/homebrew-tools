# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Alwayswin < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.1"

  on_macos do
    url "https://github.com/taylormonacelli/alwayswin/releases/download/v0.0.1/alwayswin_Darwin_x86_64.tar.gz"
    sha256 "bfb268adf1faaf6d9c993917cc3036dff8afb3f1bc5fdd0a3a06a132abc93021"

    def install
      bin.install "alwayswin"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Alwayswin
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/taylormonacelli/alwayswin/releases/download/v0.0.1/alwayswin_Linux_x86_64.tar.gz"
      sha256 "cce121108c4fb3a854878094690fbb782134a00daf1d7332ba77db08dd07dbab"

      def install
        bin.install "alwayswin"
      end
    end
  end
end
