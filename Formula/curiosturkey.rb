# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Curiosturkey < Formula
  desc ""
  homepage "https://github.com/gkwa/curiosturkey"
  version "0.0.8"

  on_macos do
    url "https://github.com/gkwa/curiosturkey/releases/download/v0.0.8/curiosturkey_Darwin_x86_64.tar.gz"
    sha256 "a24681d7d42a07865f690e20ba4cf39b0b2c30fb852d7760fe37377d1e007887"

    def install
      bin.install "curiosturkey"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Curiosturkey
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/curiosturkey/releases/download/v0.0.8/curiosturkey_Linux_x86_64.tar.gz"
        sha256 "d38e3af82b071c4c4e4541bc07043ef40af8d1327e59f252c882768d91a586d1"

        def install
          bin.install "curiosturkey"
        end
      end
    end
  end
end
