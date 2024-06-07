# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Fragiledonkey < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.11"

  on_macos do
    url "https://github.com/gkwa/fragiledonkey/releases/download/v0.0.11/fragiledonkey_Darwin_x86_64.tar.gz"
    sha256 "5feb182936422e8e3d735d9c72f1984c5a58c4a6800bd6ed8b56f7ce04f19379"

    def install
      bin.install "fragiledonkey"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Fragiledonkey
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/fragiledonkey/releases/download/v0.0.11/fragiledonkey_Linux_x86_64.tar.gz"
        sha256 "a440533b857c3439f540116b0a00dfeef5e46fe6df4afe8e7c2447b36e929634"

        def install
          bin.install "fragiledonkey"
        end
      end
    end
  end
end
