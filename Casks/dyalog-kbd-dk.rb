cask "dyalog-kbd-dk" do
    version "1.0.0"
    sha256 "e0a82ca54b804f1c4e63ab4157c17cab2f45df02d6ccb1d6a420c659acf163c0"
  
    url "https://packages.dyalog.com/homebrew/DyalogAltDK.zip"
    name "Dyalog APL Alt DK Keyboard Layout"
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
      The Dyalog Alt DK keyboard layout has been installed.
  
      To use the layout, go to System Preferences > Keyboard > Input Sources,
      and add "Dyalog Alt DK" under the "Others" section.
    EOS
  end