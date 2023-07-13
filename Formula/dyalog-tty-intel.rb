class DyalogTtyIntel < Formula
    desc "Dyalog APL-based development environment (intel, TTY only)"
    version "19.0.47424"
    homepage "https://www.dyalog.com/"
    url "https://packages.dyalog.com/homebrew/dyalog-tty-#{version}-amd64.tgz"
    sha256 "9fa8d8a172220df9f4fdca12c33a89d73199e51fa012ad79c3bc7a2da5c0dc1b"
    license ""
    
    def install
      prefix.install "mdyalog"
      bin.install_symlink prefix/"mdyalog/mapl" => "dyalog"
      bin.install_symlink prefix/"mdyalog/scriptbin/dyalogscript" => "dyalogscript"
      bin.install_symlink prefix/"mdyalog/scriptbin/dyalogscript.bash" => "dyalogscript.bash"
  
      # Replace hardcoded path in dyalogscript.bash
      inreplace "#{prefix}/mdyalog/scriptbin/dyalogscript.bash", 
                "/Applications/Dyalog-#{version.major}.#{version.minor}.app/Contents/Resources/dyalog", 
                "#{prefix}/mdyalog"
    end
  
    test do
    end

  def caveats
    <<~EOS
      Note that this version of Dyalog does not support HTMLRenderer.

      To finish the installation, you need to add the following to your shell profile:

      export ENABLE_CEF=0

      If you're using bash, you can add it to your .bashrc or .bash_profile:
      echo "export ENABLE_CEF=0" >> ~/.bash_profile

      If you're using zsh, add it to your .zshrc:
      echo "export ENABLE_CEF=0" >> ~/.zshrc

      If you're using fish, add it to your config.fish:
      echo "set -x ENABLE_CEF 0" >> ~/.config/fish/config.fish

      Then, restart your shell or source the profile file:

      If you're using bash or zsh:
      source ~/.bash_profile   # or source ~/.zshrc for zsh

      If you're using fish:
      source ~/.config/fish/config.fish
    EOS
  end
  end
  