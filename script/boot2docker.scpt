tell application "iTerm"
    make new terminal
    tell the current terminal
        activate current session
        launch session "Default Session"
        tell the last session
            write text "unset DYLD_LIBRARY_PATH ; unset LD_LIBRARY_PATH"
            write text "mkdir -p ~/.boot2docker"
            write text "if [ ! -f ~/.boot2docker/boot2docker.iso ]; then cp /usr/local/share/boot2docker/boot2docker.iso ~/.boot2docker/ ; fi"
            write text "/usr/local/bin/boot2docker init && /usr/local/bin/boot2docker up && $(boot2docker shellinit) && docker version"
        end tell
    end tell
end tell
