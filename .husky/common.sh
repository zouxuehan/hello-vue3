command_exists () {
  command -v "$1" >/dev/null 2>&1
}

# Windows 10、Git Bash 和 Yarn 的解决方案
if command_exists winpty && test -t 1; then
  exec < /dev/tty
fi
