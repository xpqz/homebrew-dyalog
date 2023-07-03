class DyalogTty < Formula
  desc "Dyalog APL-based development environment (TTY only)"
  version "19.0.47176"
  homepage "https://www.dyalog.com/"
  url "https://packages.dyalog.com/homebrew/dyalog-tty-#{version}-arm64.tgz"
  sha256 "82b67777cee3d1c1ee4c93baa8871db706fd320b0257dc7427c777b0e70a6e66"
  license ""

  depends_on arch: :arm64

  def install
    prefix.install "mdyalog"
    bin.install_symlink prefix/"mdyalog/mapl" => "dyalog"
    bin.install_symlink prefix/"mdyalog/scriptbin/dyalogscript" => "dyalogscript"
    bin.install_symlink prefix/"mdyalog/scriptbin/dyalogscript.bash" => "dyalogscript.bash"
  end

  test do
  end
end
