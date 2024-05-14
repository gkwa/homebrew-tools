# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gracefulturnip < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/gracefulturnip"
  version "0.0.5"

  on_macos do
    url "https://github.com/gkwa/gracefulturnip/releases/download/v0.0.5/gracefulturnip_Darwin_x86_64.tar.gz"
    sha256 "d9f2c4ad2896ede55cd46970376ee019dd4ad644fa4d2bb87c5a3b578229154e"

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
        url "https://github.com/gkwa/gracefulturnip/releases/download/v0.0.5/gracefulturnip_Linux_x86_64.tar.gz"
        sha256 "bff682ac58348a261714da99525e9edcbb8013ae9028777e11e58a4a184a0a95"

        def install
          bin.install "gracefulturnip"
        end
      end
    end
  end
end
