set -U fish_greeting ""

if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ls="exa --icons -a --group-directories-first --long"

alias gl='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias clion='bash ~/Scivania/clion-2022.1.3/bin/clion.sh'

starship init fish | source
set -x EDITOR '/usr/bin/nvim'
set -x XDG_CURRENT_DESKTOP sway
set -x _JAVA_AWT_WM_NONREPARENTING 1
fish_add_path -aP /home/pierciro/.local/share/gem/ruby/3.0.0/bin
set VIRTUAL_ENV '/home/pierciro/Scrivania/progetti/trackfi_env'

# TokyoNight Color Palette
set -l foreground c0caf5
set -l selection 364A82
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 9ece6a
set -l purple 9d7cd8
set -l cyan 7dcfff
set -l pink bb9af7
    
# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment
    
# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
