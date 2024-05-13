# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Americanford < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/americanford"
  version "0.0.2"

  on_macos do
    url "https://github.com/gkwa/americanford/releases/download/v0.0.2/americanford_Darwin_x86_64.tar.gz"
    sha256 "f02095b0fad395e147bb4c02a314267baf9f820c34495dd508cc77d0911c1da2"

    def install
      bin.install "americanford"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Americanford
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/americanford/releases/download/v0.0.2/americanford_Linux_x86_64.tar.gz"
        sha256 "8b44d13f65598a841ed30824f36af91fc79fcd3411c12c4bb88c53dcf3f3fdfc"

        def install
          bin.install "americanford"
        end
      end
    end
  end
end