set fish_greeting

function starship_transient_prompt_func
  starship module character
end

starship init fish | source
enable_transience

export GPG_TTY=(tty)
export TERM="xterm-256color"
