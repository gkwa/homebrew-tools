# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ourlock < Formula
  desc ""
  homepage "https://github.com/gkwa/ourlock"
  version "0.0.1"

  on_macos do
    url "https://github.com/gkwa/ourlock/releases/download/v0.0.1/ourlock_Darwin_x86_64.tar.gz"
    sha256 "bf7dfc3884b71c512005cacba067049d90546e1bbaaf50005242486f73a56dc8"

    def install
      bin.install "ourlock"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Ourlock
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/ourlock/releases/download/v0.0.1/ourlock_Linux_x86_64.tar.gz"
        sha256 "8e827f725ac72c565c5cfc34665292a841b4bbd408b02e19c1a06ec986822525"

        def install
          bin.install "ourlock"
        end
      end
    end
  end
end