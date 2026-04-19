class BranchWatch < Formula
  desc "Track branch and fork sync status across your GitHub repositories"
  homepage "https://github.com/nuri-yoo/branch-watch"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a497776b8c1ece2100a634803a4b4f51afaa2eb8f61ed01b0bf12771b2a1444c"
    end
    on_intel do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "210c812a5c95f1d3287a2b0dfdf37c20faea071c25f81ad8b6766d7c6165872a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c33ad298e60a9690a7ce54da811460ef6ba68fbcd525937c530a50279c0c36e2"
    end
    on_intel do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78bf84a893c39c3244adff4bfaf5133c1d7899b6891813c35210604190d82430"
    end
  end

  def install
    bin.install "bw"
  end

  test do
    assert_match "branch-watch", shell_output("#{bin}/bw --help")
  end
end
