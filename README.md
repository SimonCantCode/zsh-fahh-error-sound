# zsh-fahh-error-sound
Plugin for zsh that plays the Fahh sound effect whenever you get an error in the terminal, either from a misspelled command, or by running code with errors. Inspiered by a simmilar extention for VS Code.

> [!NOTE]
> I do not own the rights to the original fahh sound effect. If you sue me i will cry.

## Dependencies
* zsh (It can also work with bash after a small modification. See comments in the code.)
* ffmpeg (or at least ffplay)

## Installation
```bash
cd ~/.config/zsh/plugins/ # Create it if it doesnt exist
git clone https://github.com/SimonCantCode/zsh-fahh-error-sound.git
```
Then add the following to your `.zshrc`:
```bash
source .config/zsh/plugins/zsh-fahh-error-sound/zsh-fahh-error-sound.zsh
```

### For neovim [code_runner](https://github.com/CRAG666/code_runner.nvim)
Example for just python
```lua
python = "python3 -u $fileName || ffplay -nodisp -autoexit ~/.config/zsh/plugins/zsh-fahh-error-sound/fah.mp3 > /dev/null 2>&1",
```
instead of 
```lua
python = "python3 -u",
```
in the config. You get the idea.
