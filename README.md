# nvim
My NeoVim Complete Setup

- Create a ~/.config directory if you don't already have one
- Inside ~/.config directory pull down the repo
- cd into nvim folder and open it with neovim e.g. nvim command
- Plugins should begin to install automagically.
- cp the tmux config example file as a dot file to the root of your machine e.g. cp tmux-config-example ~/.tmux.config
- You will also need to install Node via NVM for JS related servers to work
- Tip: add the nvm config to a .zshrc file (not .zshenv file)
- If errors occure run :MasonLog to check the error logs

## fonts

- You'll need to install fonts for icons to show up in your vim IDE
- You can install Nerd font for example with brew
- Then move the font files from `/opt/homebrew/Caskroom/font-hack-nerd-font` to `/Users/<username>/Library/Fonts`
- Then open the terminal settings and change the default font to your downloaded font
