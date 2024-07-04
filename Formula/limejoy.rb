# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Limejoy < Formula
  desc ""
  homepage "https://github.com/gkwa/limejoy"
  version "0.0.5"

  on_macos do
    url "https://github.com/gkwa/limejoy/releases/download/v0.0.5/limejoy_Darwin_x86_64.tar.gz"
    sha256 "0d1e7a14252f052bdb96710efb5b39937222174b31c12ce9f7014218f35753df"

    def install
      bin.install "limejoy"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Limejoy
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/limejoy/releases/download/v0.0.5/limejoy_Linux_x86_64.tar.gz"
        sha256 "8f8f0843890a1b0dd67d4d4bf75951d7f2b9b42b91459a7af83a45a112593cbf"

        def install
          bin.install "limejoy"
        end
      end
    end
  end
end
