#!/bin/bash

# Open a new Terminal tab and run the command in 'client' directory
osascript <<EOF
tell application "Terminal"
    activate
    do script "cd \"$(pwd)/client\" && npm start"
end tell
EOF

# Open a new Terminal tab and run the command in 'comments' directory
osascript <<EOF
tell application "Terminal"
    activate
    do script "cd \"$(pwd)/comments\" && npm start"
end tell
EOF

# Open a new Terminal tab and run the command in 'event-bus' directory
osascript <<EOF
tell application "Terminal"
    activate
    do script "cd \"$(pwd)/event-bus\" && npm start"
end tell
EOF

# Open a new Terminal tab and run the command in 'moderation' directory
osascript <<EOF
tell application "Terminal"
    activate
    do script "cd \"$(pwd)/moderation\" && npm start"
end tell
EOF

# Open a new Terminal tab and run the command in 'posts' directory
osascript <<EOF
tell application "Terminal"
    activate
    do script "cd \"$(pwd)/posts\" && npm start"
end tell
EOF

# Open a new Terminal tab and run the command in 'query' directory
osascript <<EOF
tell application "Terminal"
    activate
    do script "cd \"$(pwd)/query\" && npm start"
end tell
EOF