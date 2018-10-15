
#--------------------------------------------------------------------#
# Global Configuration Variables                                     #
#--------------------------------------------------------------------#

# Color to use when highlighting suggestion
# Uses format of `region_highlight`
# More info: http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets
: ${ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'}

# Prefix to use when saving original versions of bound widgets
: ${ZSH_AUTOSUGGEST_ORIGINAL_WIDGET_PREFIX=autosuggest-orig-}

# Strategies to use to fetch a suggestion
# Will try each strategy in order until a suggestion is returned
[[ -z "${ZSH_AUTOSUGGEST_STRATEGY+x}" ]] && ZSH_AUTOSUGGEST_STRATEGY=(history)

# Widgets that clear the suggestion
[[ -z "${ZSH_AUTOSUGGEST_CLEAR_WIDGETS+x}" ]] && ZSH_AUTOSUGGEST_CLEAR_WIDGETS=(
	history-search-forward
	history-search-backward
	history-beginning-search-forward
	history-beginning-search-backward
	history-substring-search-up
	history-substring-search-down
	up-line-or-beginning-search
	down-line-or-beginning-search
	up-line-or-history
	down-line-or-history
	accept-line
)

# Widgets that accept the entire suggestion
[[ -z "${ZSH_AUTOSUGGEST_ACCEPT_WIDGETS+x}" ]] && ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(
	forward-char
	end-of-line
	vi-forward-char
	vi-end-of-line
	vi-add-eol
)

# Widgets that accept the entire suggestion and execute it
[[ -z "${ZSH_AUTOSUGGEST_EXECUTE_WIDGETS+x}" ]] && ZSH_AUTOSUGGEST_EXECUTE_WIDGETS=(
)

# Widgets that accept the suggestion as far as the cursor moves
[[ -z "${ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS+x}" ]] && ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS=(
	forward-word
	emacs-forward-word
	vi-forward-word
	vi-forward-word-end
	vi-forward-blank-word
	vi-forward-blank-word-end
	vi-find-next-char
	vi-find-next-char-skip
)

# Widgets that should be ignored (globbing supported but must be escaped)
[[ -z "${ZSH_AUTOSUGGEST_IGNORE_WIDGETS+x}" ]] && ZSH_AUTOSUGGEST_IGNORE_WIDGETS=(
	orig-\*
	beep
	run-help
	set-local-history
	which-command
	yank
	yank-pop
)

# Max size of buffer to trigger autosuggestion. Leave null for no upper bound.
: ${ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=}

# Pty name for capturing completions for completion suggestion strategy
: ${ZSH_AUTOSUGGEST_COMPLETIONS_PTY_NAME=zsh_autosuggest_completion_pty}
