# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Littlewill < Formula
  desc ""
  homepage "https://github.com/gkwa/littlewill"
  version "0.0.7"

  on_macos do
    url "https://github.com/gkwa/littlewill/releases/download/v0.0.7/littlewill_Darwin_x86_64.tar.gz"
    sha256 "e7fd1b12314d8e5e1c20d4066dfca2356c261eb1f5690f2ca23512eae4c121f2"

    def install
      bin.install "littlewill"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Littlewill
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gkwa/littlewill/releases/download/v0.0.7/littlewill_Linux_x86_64.tar.gz"
        sha256 "4912a71aeb495f1937d5aad3353f490b849dd1430b982797a64c0369297ad6ad"

        def install
          bin.install "littlewill"
        end
      end
    end
  end
end
