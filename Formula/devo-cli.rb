class DevoCli < Formula
  desc "Devolutions CLI for RDM, Devolutions Cloud and Devolutions Server workspaces"
  homepage "https://devolutions.net"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://cdn.devolutions.net/download/devo-cli-osx-arm64-2026.3.3.0.tar.gz"
      sha256 "3745bf55faf98af75b58446d595cb49cea8a546458037f1c32721a075f62f324"
    end
    on_intel do
      url "https://cdn.devolutions.net/download/devo-cli-osx-x64-2026.3.3.0.tar.gz"
      sha256 "59f9c78bc1073e963b0f24dbfaf88fd67b8427a85bddb8e37dd194bcd5dea840"
    end
  end

  on_linux do
    on_arm do
      url "https://cdn.devolutions.net/download/devo-cli-linux-arm64-2026.3.3.0.tar.gz"
      sha256 "11bc3f0f98c9fb52d99df668cedc21009df6f2e210ea9573ed2cd31bebdad1f9"
    end
    on_intel do
      url "https://cdn.devolutions.net/download/devo-cli-linux-x64-2026.3.3.0.tar.gz"
      sha256 "0a0cc7bef7b9c65d912faee7811a69942713969653bf8f104611a419367c750c"
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
