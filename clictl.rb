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
      sha256 "7d12659b8ce3348f6c62eb2a410b92e6187f8c183ae755abd5bf03039d1ba13e" # Updated automatically by release workflow
    end

    on_intel do
      url "https://download.clictl.dev/releases/v#{version}/clictl-darwin-amd64.tar.gz"
      sha256 "25d2572b0a2ca403010852b316a66cb379879cf5d1ccd4a9a466533ca7b65f4b" # Updated automatically by release workflow
    end
  end

  on_linux do
    on_arm do
      url "https://download.clictl.dev/releases/v#{version}/clictl-linux-arm64.tar.gz"
      sha256 "74027ffcf3216125f3de448f5f86b24d79e66d61c758d2a4fedb8159f9f461f3" # Updated automatically by release workflow
    end

    on_intel do
      url "https://download.clictl.dev/releases/v#{version}/clictl-linux-amd64.tar.gz"
      sha256 "de6f22a2b320a2e08f8854a17b7a57b307eeed4052fb5df0a70a348cba869f4d" # Updated automatically by release workflow
    end
  end

  def install
    bin.install "clictl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clictl version")
  end
end
