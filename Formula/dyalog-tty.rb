class DyalogTty < Formula
  name "Dyalog (TTY only)"
  version "19.0.47176"
  desc "Dyalog APL-based development environment (TTY only)"
  homepage "https://www.dyalog.com/"
  url "https://packages.dyalog.com/homebrew/dyalog-tty-#{version}-arm64.tgz"
  sha256 "82b67777cee3d1c1ee4c93baa8871db706fd320b0257dc7427c777b0e70a6e66"
  license ""

  depends_on arch: :arm64

  def install
    prefix.install "mdyalog"
    bin.install_symlink prefix/"mdyalog/mapl" => "dyalog"
  end

  test do
  end

  caveats do
    free_license "https://www.dyalog.com/download-zone.htm"
    license "https://www.dyalog.com/uploads/documents/Developer_Software_Licence.pdf"
  end
end