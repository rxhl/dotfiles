# --httptoolkit--
# This section will be reset each time a HTTP Toolkit terminal is opened
if [ -n "$HTTP_TOOLKIT_ACTIVE" ]; then
    # When HTTP Toolkit is active, we inject various overrides into PATH
    export PATH="/Applications/HTTP Toolkit.app/Contents/Resources/app/httptoolkit-server/overrides/path:$PATH"

    if command -v winpty >/dev/null 2>&1; then
        # Work around for winpty's hijacking of certain commands
        alias php=php
        alias node=node
    fi
fi
# --httptoolkit-end--