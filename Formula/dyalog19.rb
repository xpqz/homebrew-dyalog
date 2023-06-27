class Dyalog19 < Formula
  desc ""
  homepage ""
  url "https://github.com/xpqz/releases/releases/download/dyalog19.0/dyalog.tgz"
  sha256 "82b67777cee3d1c1ee4c93baa8871db706fd320b0257dc7427c777b0e70a6e66"
  license ""

  def install
    prefix.install "mdyalog"
    bin.install_symlilnk prefix/"mdyalog/mapl"
  end

  test do
  end
end
