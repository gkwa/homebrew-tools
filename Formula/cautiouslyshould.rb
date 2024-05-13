# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cautiouslyshould < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/cautiouslyshould"
  version "0.0.1"

  on_macos do
    url "https://github.com/taylormonacelli/cautiouslyshould/releases/download/v0.0.1/cautiouslyshould_Darwin_x86_64.tar.gz"
    sha256 "1bd3abad2ec7b30a0e666ef8c63874eab35da27969605a7fa36336b1594fc0d4"

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
      url "https://github.com/taylormonacelli/cautiouslyshould/releases/download/v0.0.1/cautiouslyshould_Linux_x86_64.tar.gz"
      sha256 "ab1aa952c24b1fb16ada37b37205a6ec99dc71510a3bf5ca6e550185594a5bec"

      def install
        bin.install "cautiouslyshould"
      end
    end
  end
end
