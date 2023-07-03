cask "dyalog-kbd-uk" do
    version "1.0.0"
    sha256 "2a94067e99a7ba6a5c86bb52ab9f09a0e66fa7f5f174bf0fbc52ac150c9d90a4"
  
    url "https://packages.dyalog.com/homebrew/DyalogAltUK.zip"
    name "Dyalog APL Alt UK Keyboard Layout"
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
      The Dyalog Alt UK keyboard layout has been installed.
  
      To use the layout, go to System Preferences > Keyboard > Input Sources,
      and add "Dyalog Alt UK" under the "Others" section.
    EOS
  end