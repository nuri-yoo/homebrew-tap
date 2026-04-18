class BranchWatch < Formula
  desc "Track branch and fork sync status across your GitHub repositories"
  homepage "https://github.com/nuri-yoo/branch-watch"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a52bf4c5ba783f9afbb6c75f447b8ba3eac019c0028b9f73de9beb3dbf564e1a"
    end
    on_intel do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c1881dfcf140c0fc4511cec1cb9e8891317fd7c7409ae4d69256bea0c63d23fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d05d639721bf7e917964996bca933de2c786cfea007933a16612eb313b866794"
    end
    on_intel do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "711426d275df9ddee1a2672b9fb713dee7dbfe7529842b70e0d64b3ffaedd930"
    end
  end

  def install
    bin.install "bw"
  end

  test do
    assert_match "branch-watch", shell_output("#{bin}/bw --help")
  end
end
