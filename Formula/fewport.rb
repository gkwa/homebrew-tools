# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fewport < Formula
  desc ""
  homepage "https://github.com/gkwa/fewport"
  version "0.0.5"

  on_macos do
    url "https://github.com/gkwa/fewport/releases/download/v0.0.5/fewport_Darwin_x86_64.tar.gz"
    sha256 "70c8971033cef72e35f7032fa5e06bc2079899f8ebb22bf678c69a027117a850"

    def install
      bin.install "fewport"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Fewport
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/fewport/releases/download/v0.0.5/fewport_Linux_x86_64.tar.gz"
        sha256 "c896b23a6fc0206d986bde5210dd79ff7b2ba22d4bcec421c2083d6c43d80e62"

        def install
          bin.install "fewport"
        end
      end
    end
  end
end
