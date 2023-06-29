cask "dyalog-ride" do
  version "4.4.3732"
  sha256 "e3aba4ab80396f6902ddde67369d221bd855071596edda3ab410374bdda7ced6"
  url "https://github.com/Dyalog/ride/releases/download/v#{version}/ride-#{version}_mac.pkg"

  # We can add multiple versions, too, if we want to
  # version "4.5.3770-beta"
  # sha256 "e3aba4ab80396f6902ddde67369d221bd855071596edda3ab410374bdda7ced6"
  # url "https://github.com/Dyalog/ride/releases/download/v#{version}/ride-#{version}_mac.pkg"

  name "dyalog-ride"
  desc "Remote IDE for Dyalog"
  homepage "https://github.com/Dyalog/ride"

  pkg "ride-#{version}_mac.pkg"
  uninstall pkgutil: "com.dyalog.pkg.ride#{version.major_minor.no_dots}"
end
