# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Itmetrics < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.12"

  on_macos do
    url "https://github.com/gkwa/itmetrics/releases/download/v0.0.12/itmetrics_Darwin_x86_64.tar.gz"
    sha256 "84b873125b222f34f439d0947f851acd3a9eccd092d043de190c750bb042b6d5"

    def install
      bin.install "itmetrics"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Itmetrics
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gkwa/itmetrics/releases/download/v0.0.12/itmetrics_Linux_x86_64.tar.gz"
      sha256 "769a3d62ca070ed0ae87ce06c22cb80b73b9b4bfd61ebcc348f34665b8e8c6d0"

      def install
        bin.install "itmetrics"
      end
    end
  end
end
