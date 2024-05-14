# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gracefulturnip < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/gracefulturnip"
  version "0.0.3"

  on_macos do
    url "https://github.com/gkwa/gracefulturnip/releases/download/v0.0.3/gracefulturnip_Darwin_x86_64.tar.gz"
    sha256 "f2586762f1eec4a51e3465b867bbfc43588300744eb672d98131a668a73b91f9"

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
        url "https://github.com/gkwa/gracefulturnip/releases/download/v0.0.3/gracefulturnip_Linux_x86_64.tar.gz"
        sha256 "4068ba7192e8b5f0587691765e584fa6d67f7ebf3aa06dfddfa9b241e61b051c"

        def install
          bin.install "gracefulturnip"
        end
      end
    end
  end
end
