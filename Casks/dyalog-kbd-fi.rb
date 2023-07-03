cask "dyalog-kbd-fi" do
  version "1.0.0"
  sha256 "121984a66d7ac3f72aedb290100f164cdc73ba634c190a445362f241abd447de"

  url "https://packages.dyalog.com/homebrew/DyalogAltFI.zip"
  name "Dyalog APL Alt FI Keyboard Layout"
  homepage "https://www.dyalog.com/apl-font-keyboard.htm"

  depends_on macos: ">= :high_sierra"

  preflight do
    layout_dir = File.expand_path("~/Library/Keyboard Layouts")
    FileUtils.mkdir_p(layout_dir) unless Dir.exist?(layout_dir)
    staged_path.glob("*").each do |item|
      FileUtils.cp_r(item, layout_dir)
    end
  end

  caveats <<~EOS
    The Dyalog Alt FI keyboard layout has been installed.

    To use the layout, go to System Preferences > Keyboard > Input Sources,
    and add "Dyalog Alt FI" under the "Others" section.
  EOS
end