# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Howbob < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.6"

  on_macos do
    url "https://github.com/gkwa/howbob/releases/download/v0.0.6/howbob_Darwin_x86_64.tar.gz"
    sha256 "2b86e5b65a5f58909e6ef8a981a2aa81a051febb853f269e9516a05f5ff91677"

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
      url "https://github.com/gkwa/howbob/releases/download/v0.0.6/howbob_Linux_x86_64.tar.gz"
      sha256 "0821b5c13fba244ec1aea296a082db7c155635dff837dce9ed24f2ca4acb57a8"

      def install
        bin.install "howbob"
      end
    end
  end
end
