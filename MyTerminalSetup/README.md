### This tutorial provides a comprehensive guide on how to install and configure Zsh, Oh my Zsh, and Powerlevel10k with automatic suggestions, syntax highlighting, and auto-completion.

### By following the step-by-step instructions, you will be able to create a personalized and efficient terminal environment for your development work.



![](https://i.imgur.com/gfi0G54.gif[/img)



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

    - [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Regular.ttf)
    - [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Bold.ttf)
    - [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Italic.ttf)
    - [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS NF Bold Italic.ttf)

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

- ### install [Dracula theme](https://draculatheme.com/powerlevel10k) (Optional) - (by [@satriajanaka09](https://medium.com/@satriajanaka09/setup-zsh-oh-my-zsh-powerlevel10k-on-ubuntu-20-04-c4a4052508fd))

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

    ### 

