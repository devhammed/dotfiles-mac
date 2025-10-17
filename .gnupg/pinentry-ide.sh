#!/bin/sh
if [ -n "$PINENTRY_USER_DATA" ]; then
  case "$PINENTRY_USER_DATA" in
    IJ_PINENTRY=*)
      "/Applications/GoLand.app/Contents/jbr/Contents/Home/bin/java" -cp "/Applications/GoLand.app/Contents/plugins/vcs-git/lib/git4idea-rt.jar:/Applications/GoLand.app/Contents/lib/externalProcess-rt.jar" git4idea.gpg.PinentryApp
      exit $?
    ;;
  esac
fi
exec /usr/local/opt/pinentry/bin/pinentry "$@"