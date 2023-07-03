cask "dyalog-kbd-us" do
    version "1.0.0"
    sha256 "fdb8e77307c7c16ce6459d74826950bac724167c7b4e8215ea412acfd614a83a"
  
    url "https://packages.dyalog.com/homebrew/DyalogAltUS.zip"
    name "Dyalog APL Alt IT Keyboard Layout"
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
      The Dyalog Alt US keyboard layout has been installed.
  
      To use the layout, go to System Preferences > Keyboard > Input Sources,
      and add "Dyalog Alt US" under the "Others" section.
    EOS
  end