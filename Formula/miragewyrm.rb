# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Miragewyrm < Formula
  desc ""
  homepage "https://github.com/gkwa/miragewyrm"
  version "0.0.1"

  on_macos do
    url "https://github.com/gkwa/miragewyrm/releases/download/v0.0.1/miragewyrm_Darwin_x86_64.tar.gz"
    sha256 "998a0ee107b75839828241b34c0f821276ae68ffed2dbd0629377f6aded8177e"

    def install
      bin.install "miragewyrm"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Miragewyrm
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/miragewyrm/releases/download/v0.0.1/miragewyrm_Linux_x86_64.tar.gz"
        sha256 "2d7ce7880913d36beacdf4fd7fb79201dc8e385b9929fd63da05118132d73ea7"

        def install
          bin.install "miragewyrm"
        end
      end
    end
  end
end
