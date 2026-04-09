# typed: false
# frozen_string_literal: true

class Clictl < Formula
  desc "A package manager for AI agents"
  license "Apache-2.0"
  homepage "https://clictl.dev"
  version "0.1.0" # Updated automatically by release workflow

  on_macos do
    on_arm do
      url "https://download.clictl.dev/releases/v#{version}/clictl-darwin-arm64.tar.gz"
      sha256 "9623894528f8e26d19f50ccc13e91ead193c58f681c102658c3555b8a9c05146" # Updated automatically by release workflow
    end

    on_intel do
      url "https://download.clictl.dev/releases/v#{version}/clictl-darwin-amd64.tar.gz"
      sha256 "e5478958001e5b78ab1e7f13eaa0c6e6ed9135a38418e79f35c70aec24826bc7" # Updated automatically by release workflow
    end
  end

  on_linux do
    on_arm do
      url "https://download.clictl.dev/releases/v#{version}/clictl-linux-arm64.tar.gz"
      sha256 "5426e5ac87576d183a3838da91fdbbcca9d11dd9279341178b35e6e39a7c6d97" # Updated automatically by release workflow
    end

    on_intel do
      url "https://download.clictl.dev/releases/v#{version}/clictl-linux-amd64.tar.gz"
      sha256 "ae2c8d6e0e3a4671ba9dfbe4dbdc20698e7b4eb00ad3062ab004d5c4d20c374b" # Updated automatically by release workflow
    end
  end

  def install
    bin.install "clictl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clictl version")
  end
end
