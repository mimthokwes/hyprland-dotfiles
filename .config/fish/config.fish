    # Commands to run in interactive sessions can go here
    alias ..='cd ..'
    alias h='history'
    alias cls='clear'
    alias e='exit'
    alias l='ls -all'
    alias vim='nvim'
    alias clock='peaclock --config-dir ~/.config/peaclock'
    alias code='/usr/bin/code'
    alias server-task-note='docker start mysql-dev; cd /home/mimthokwes/coding/self-project/Task-Note/task-note-backend && nodemon src/index.js'



    # Set Oh-my-posh Theme
    oh-my-posh init fish --config "/home/mimthokwes/hyprland-dotfiles/.ohmyposh/oh-my-posh/mytheme.json" | source

    # Set fich greeting
    function fish_greeting
    # Panggil pyfiglet untuk ASCII art
    python -m pyfiglet -w 100 "Happy Work Bos"
    end

    # VSCode Configuration
    set -U fish_user_paths /usr/bin $fish_user_paths

