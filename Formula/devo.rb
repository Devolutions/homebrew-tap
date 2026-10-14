class Devo < Formula
  desc "Devolutions CLI for RDM, Devolutions Cloud and Devolutions Server workspaces"
  homepage "https://devolutions.net"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://cdn.devolutions.net/download/devo-cli-osx-arm64-2026.3.1.0.tar.gz"
      sha256 "2cc7fcf777a617e19aeb1de69649917c99e3e9c40ac0e1be21347d6de295567a"
    end
    on_intel do
      url "https://cdn.devolutions.net/download/devo-cli-osx-x64-2026.3.1.0.tar.gz"
      sha256 "cdae25dcf005e9dc6f131f388240a9330c62c0d2a77f71772267274e5cb90930"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.devolutions.net/download/devo-cli-linux-arm64-2026.3.1.0.tar.gz"
      sha256 "27e8bbae1eeafef7e1debb3510d183a6c7df88fa7955f29535f41e8f7fde119e"
    end
    on_intel do
      url "https://cdn.devolutions.net/download/devo-cli-linux-x64-2026.3.1.0.tar.gz"
      sha256 "dc3d4f5e6d6e1b5470238bf2caa38f3fae9d5dd7e239542c3bfa389a971038df"
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
