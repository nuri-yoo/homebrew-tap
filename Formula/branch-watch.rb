class BranchWatch < Formula
  desc "Track branch and fork sync status across your GitHub repositories"
  homepage "https://github.com/nuri-yoo/branch-watch"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0671ee533597019edac69a56abc388dae80d62c7fca6d35426825dafe80fadfe"
    end
    on_intel do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bd1fa5210ac46be9357b695f18cb5590c55eb7852fd407458da91431ba11cc42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64105474bf6b4cdbc179f409f3399de054aa203078809e522d19f2219c7cc938"
    end
    on_intel do
      url "https://github.com/nuri-yoo/branch-watch/releases/download/v#{version}/branch-watch-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc2fb118bd3fbfa76461ef64290b2707adf5eff5e539773cadea9c5892c48046"
    end
  end

  def install
    bin.install "bw"
  end

  test do
    assert_match "branch-watch", shell_output("#{bin}/bw --help")
  end
end
