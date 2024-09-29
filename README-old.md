# Linux-Setup
<p align="center">
My Linux Environment setup (apps, settings and optimizations)
</p>
<p align="center">
  <img  src="https://user-images.githubusercontent.com/73834838/228386835-de808131-3885-4ba0-975e-c4073f99d4a2.gif">
</p>





----

### **Table of Contents**

- [x] [My Terminal Setup](#My-Terminal-Setup) (Zsh, Oh my Zsh, Powerlevel10k and Kitty)
- [ ] VS Code
- [ ] Linux Distribution configuration
- [ ] Linux Themes
- [ ] Useful Apps

-----

# My Terminal Setup

This tutorial provides a comprehensive guide on how to install and configure Zsh, Oh my Zsh, and Powerlevel10k with automatic suggestions, syntax highlighting, and auto-completion.

By following the step-by-step instructions, you will be able to create a personalized and efficient terminal environment for your development work.



![Screen](https://github.com/AhmedMohamedAbdelaty/Linux-Setup/assets/73834838/3fd835db-f0a3-4998-9011-4ef3f501cb73)



- ### install ZSH :

  ```bash
  sudo apt install zsh-autosuggestions zsh-syntax-highlighting zsh
  ```



- ### Install [Oh My Zsh](https://ohmyz.sh/) :

  ```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```



- ### Install plugins

  - autosuggesions plugin

    ```bash
    git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
    ```



  - zsh-syntax-highlighting plugin

    ```bash
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
    ```



  - zsh-fast-syntax-highlighting plugin

    ```bash
    git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
    ```



  - zsh-autocomplete plugin

    ```bash
    git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
    ```



- ### Enable plugins by adding them to .zshrc.

  - Open .zshrc using gedit (change it as you want)

    ```bash
    sudo gedit ~/.zshrc
    ```

  - Find the line which says `plugins=(git)`.

  - Replace that line with `plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)`



- ### install [powerlevel10k](https://github.com/romkatv/powerlevel10k)

  - first install the fonts : Download these four ttf files (you have to change the font of the terminal to MesloLGS NF) :

    - [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
    - [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
    - [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
    - [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

  - Install [powerlevel10k](https://github.com/romkatv/powerlevel10k#oh-my-zsh) for Oh my zsh

    ```bash
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    ```

  - Now, edit the `ZSH_THEME` in `~/.zshrc` file into :

    - in terminal :

      ```bash
      sudo gedit ~/.zshrc
      ```

    - edit the theme to be like this `ZSH_THEME="powerlevel10k/powerlevel10k"`

- ### Configure [powerlevel10k](https://github.com/romkatv/powerlevel10k)

  - open new terminal and type `p10k configure`
  - configure it as you want

- ### Make ZSH the Default Shell

  - open terminal and type :

    ```bash
    chsh -s $(which zsh)
    ```

  - logout and login again

---
<!-- - ### install [Dracula theme](https://draculatheme.com/powerlevel10k) (Optional) - (by [@satriajanaka09](https://medium.com/@satriajanaka09/setup-zsh-oh-my-zsh-powerlevel10k-on-ubuntu-20-04-c4a4052508fd))

  - Install `dconf-cli` with following command :

    ```bash
    sudo apt-get install dconf-cli
    ```

    Clone the repository

    ```bash
    git clone https://github.com/dracula/gnome-terminal
    ```

    ```bash
    cd gnome-terminal
    ```

    Right click in the terminal, then choose *preferences.* In *preferences,* choose add profiles (the + button on the right), fill the new profile name i.e. dracula.

    ![img](https://miro.medium.com/v2/resize:fit:700/1*s6SqFM5CtxcRd9_srmOSxg.png)

    In the **Colors** tab, uncheck the ‘Use colors from system theme’ in **Text and Background Color**. Then, close the preferences.

    ![img](https://miro.medium.com/v2/resize:fit:700/1*iy-fmT0ZPMbzgfutUz-l1g.png)

    Now run the installation script :

    ```bash
    ./install.sh
    ```

    Then follow the instructions, when the prompt ask you to choose a profile, choose the profile that we have been created before.

    Now back to *preferences* setting, set dracula as default profile.

    ![img](https://miro.medium.com/v2/resize:fit:700/1*Hu_PJFjWAQ7FzY6YvmjLIA.png)

    Now, start a new terminal session, and see the dracula theme has been applied in the GNOME terminal

    ![img](https://miro.medium.com/v2/resize:fit:700/1*zWWNF-SO9wjzzNmsZlfZ4g.png)

 -->

## Kitty Terminal
The theme credits goes to [lactua](https://github.com/lactua/dotfiles/tree/master). You can download the config from [here](https://downgit.evecalm.com/#/home?url=https://github.com/lactua/dotfiles/tree/master/kitty)

- First install [kitty](https://sw.kovidgoyal.net/kitty/binary.html) terminal
- Install [Fira Code Font](https://github.com/tonsky/FiraCode)
- Finally install the theme by running `install.sh` script.
  - Make sure you are in the same directory as the script.
  - Make the script executable by running
    - ```bash
      chmod +x install.sh
      ```
  - Run the script
    - ```bash
      ./install.sh
      ```

### Kitty Keybindings

| Shortcut              | Action                        |
|-----------------------|-------------------------------|
| ctrl+shift+c          | copy_to_clipboard             |
| ctrl+shift+v          | paste_from_clipboard          |
| ctrl+shift+enter      | new_window                    |
| ctrl+shift+w          | close_window                  |
| ctrl+tab              | next_window                   |
| ctrl+shift+tab        | previous_window               |
| ctrl+shift+r          | start_resizing_window         |
| ctrl+shift+right      | next_tab                      |
| ctrl+shift+left       | previous_tab                  |
| ctrl+shift+t          | new_tab                       |
| ctrl+shift+q          | close_tab                     |
| ctrl+shift+up         | move_tab_forward              |
| ctrl+shift+down       | move_tab_backward             |
| ctrl+shift+n          | set_tab_title                 |
| ctrl+shift+l          | next_layout                   |
| ctrl+shift+kp_add     | change_font_size all +2.0     |
| ctrl+shift+kp_subtract| change_font_size all -2.0     |
| ctrl+shift+backspace  | change_font_size all 0        |
| ctrl+shift+f5         | load_config_file              |
