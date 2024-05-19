# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Eachdodge < Formula
  desc ""
  homepage "https://github.com/gkwa/eachdodge"
  version "0.0.1"
  depends_on :linux

  on_intel do
    if Hardware::CPU.is_64_bit?
      url "https://github.com/gkwa/eachdodge/releases/download/v0.0.1/eachdodge_Linux_x86_64.tar.gz"
      sha256 "dcbefac618e1e13ec0ee97b2027354b11b5b9fad81e128c6f1b5f8c85d89254c"

      def install
        bin.install "eachdodge"
      end
    end
  end
end
