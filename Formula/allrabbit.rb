# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Allrabbit < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/allrabbit"
  version "0.0.2"

  on_macos do
    url "https://github.com/gkwa/allrabbit/releases/download/v0.0.2/allrabbit_Darwin_x86_64.tar.gz"
    sha256 "bffbc8e2cd657fc006568ee344c09d0df866b0e129710886a916ecbda08901c4"

    def install
      bin.install "allrabbit"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Allrabbit
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/allrabbit/releases/download/v0.0.2/allrabbit_Linux_x86_64.tar.gz"
        sha256 "987d3961998592ea16239c49769696d8d06b96bac18d4627aaf7d638bce821f4"

        def install
          bin.install "allrabbit"
        end
      end
    end
  end
end
