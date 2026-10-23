class DevoCli < Formula
  desc "Devolutions CLI for RDM, Devolutions Cloud and Devolutions Server workspaces"
  homepage "https://devolutions.net"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://cdn.devolutions.net/download/devo-cli-osx-arm64-2026.3.2.0.tar.gz"
      sha256 "5f4322e182ef41e17128474ec570faddb58d7e94b283753223d196914ab85491"
    end
    on_intel do
      url "https://cdn.devolutions.net/download/devo-cli-osx-x64-2026.3.2.0.tar.gz"
      sha256 "5617840502ff86fec01ed7908c7eec9280f5a3463fee65aead8f51910244fb50"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.devolutions.net/download/devo-cli-linux-arm64-2026.3.2.0.tar.gz"
      sha256 "0e770d11b61165ea8adc2c2a801d9b26a4c7597223de287c45b1cecdad8a09fe"
    end
    on_intel do
      url "https://cdn.devolutions.net/download/devo-cli-linux-x64-2026.3.2.0.tar.gz"
      sha256 "b35e248dcefa7a78f3737f559558d7d92db6a52ef71858527123702fe2d05868"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"devo"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devo --version")
    refute_empty shell_output("#{bin}/devo generate passphrase").strip
  end
end
