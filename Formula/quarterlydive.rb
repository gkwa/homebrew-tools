# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Quarterlydive < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.2"

  on_macos do
    url "https://github.com/gkwa/quarterlydive/releases/download/v0.0.2/quarterlydive_Darwin_x86_64.tar.gz"
    sha256 "688d191c902b87af69fdd99556d6ff52410850c9eaf5eac329cca17f38e53fe5"

    def install
      bin.install "quarterlydive"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Quarterlydive
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gkwa/quarterlydive/releases/download/v0.0.2/quarterlydive_Linux_x86_64.tar.gz"
      sha256 "1437ad68ec67d87cffaa644c6b34b8dc14db1e2a15f1fca2b6a10500629c3a10"

      def install
        bin.install "quarterlydive"
      end
    end
  end
end
