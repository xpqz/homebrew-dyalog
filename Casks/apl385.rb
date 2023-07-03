cask "apl385" do
    version "1.0.0"
    sha256 "1ece1da26f4108cded0cb4a441dd916c4b3a505cb42aa94b80e171b4804e1705"
  
    url "https://packages.dyalog.com/homebrew/Apl385.ttf"
    name "Apl385.ttf Font"
    homepage "https://www.dyalog.com/apl-font-keyboard.htm"
  
    font "Apl385.ttf"
  
    caveats <<~EOS
      The APL385 font has been installed.
  
      You can use it in your applications or set it as the default font in your text editor.
    EOS
  end