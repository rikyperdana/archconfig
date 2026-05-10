#!/bin/bash

# 1 & 12. Start by renaming the initial window
tmux rename-window 'Brix'

# 2. Slice twice horizontally (prefix + ")
tmux split-window -v
tmux split-window -v

# 3. Cycle layout twice (prefix + spacebar x2)
tmux select-layout -n
tmux select-layout -n

# 4. Split current pane vertically (prefix + %)
tmux split-window -h

# 5. Move up and split vertically twice
tmux select-pane -U
tmux split-window -h
tmux split-window -h

# 6. Move left twice
tmux select-pane -L
tmux select-pane -L

# 7. Split vertically once
tmux split-window -h

# 8. Move right once
tmux select-pane -R

# 9. Close that pane (using kill-pane instead of ctrl+d for automation)
tmux kill-pane

# 10. Move up once
tmux select-pane -U

# 11. Split vertically once
tmux split-window -h

# Thanks Gemini