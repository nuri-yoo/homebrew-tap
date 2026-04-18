class BranchWatch < Formula
  desc "Track branch and fork sync status across your GitHub repositories"
  homepage "https://github.com/nuri-yoo/branch-watch"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_AARCH64_MACOS"
    end
    on_intel do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_X86_64_MACOS"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_AARCH64_LINUX"
    end
    on_intel do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_X86_64_LINUX"
    end
  end

  def install
    bin.install "bw"
  end

  test do
    assert_match "branch-watch", shell_output("#{bin}/bw --help")
  end
end
