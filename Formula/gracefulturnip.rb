# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gracefulturnip < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/gracefulturnip"
  version "0.0.4"

  on_macos do
    url "https://github.com/gkwa/gracefulturnip/releases/download/v0.0.4/gracefulturnip_Darwin_x86_64.tar.gz"
    sha256 "a55d67f0cbe15e1ef82175341f3ab1003130ca114ab8664f4dadd905074a74b2"

    def install
      bin.install "gracefulturnip"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Gracefulturnip
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/gracefulturnip/releases/download/v0.0.4/gracefulturnip_Linux_x86_64.tar.gz"
        sha256 "0a54094faaf539a7aaf067759e3abacdd191a2d2c9d56014063a136baa5c5708"

        def install
          bin.install "gracefulturnip"
        end
      end
    end
  end
end
