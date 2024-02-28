starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here

    # starship additions
    function starship_transient_prompt_func
        starship module line_break
        starship module character
    end

    function starship_transient_rprompt_func
        starship module time
    end

    # starship init fish | source

    # custom greeting message
    function fish_greeting
        fish_logo (random_color) (random_color) (random_color)
    end

    # make prompt transient
    #enable_transience
end
