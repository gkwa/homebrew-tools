# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mysite6 < Formula
  desc ""
  homepage "https://github.com/taylormonacelli/homebrew-tools"
  version "0.0.2"

  on_macos do
    url "https://github.com/taylormonacelli/mysite6/releases/download/v0.0.2/mysite6_Darwin_x86_64.tar.gz"
    sha256 "ba0aa7aa34593b24117c810008a3e69a8766e0a6f1f92ed48a326ef7e61cae5e"

    def install
      bin.install "mysite6"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Mysite6
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/taylormonacelli/mysite6/releases/download/v0.0.2/mysite6_Linux_x86_64.tar.gz"
      sha256 "42d2eb968ca2effb32fd05bda8b85e15e69d5b88bc276fe4efe83e113473c666"

      def install
        bin.install "mysite6"
      end
    end
  end
end
