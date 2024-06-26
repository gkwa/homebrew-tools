# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cautiouslyshould < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/cautiouslyshould"
  version "0.0.2"

  on_macos do
    url "https://github.com/taylormonacelli/cautiouslyshould/releases/download/v0.0.2/cautiouslyshould_Darwin_x86_64.tar.gz"
    sha256 "fcd71f4cf9891d70a15e6691fe339df02e79f77f2f855bbe1d3cafe894581010"

    def install
      bin.install "cautiouslyshould"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Cautiouslyshould
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/taylormonacelli/cautiouslyshould/releases/download/v0.0.2/cautiouslyshould_Linux_x86_64.tar.gz"
      sha256 "d0912b87f24c04a3ca94dee8dda3fe65116d7c5794550c8670c0acd7a56abe83"

      def install
        bin.install "cautiouslyshould"
      end
    end
  end
end
