cask "aerospace" do
  version '0.18.5-Beta'
  sha256 "a3a29cca1bcdd516358899a5109933d48002167710a8f8188d9c29562889476d"

  url "https://github.com/blueputty01/AeroSpace/releases/download/v#{version}/AeroSpace-v#{version}.zip"
  name "AeroSpace"
  desc "AeroSpace is an i3-like tiling window manager for macOS"
  homepage "https://github.com/blueputty01/AeroSpace"
  conflicts_with cask: 'aerospace-dev'

  depends_on macos: ">= :ventura" # macOS 13

  postflight do
    system "xattr -d com.apple.quarantine #{staged_path}/AeroSpace-v#{version}/bin/aerospace"
    system "xattr -d com.apple.quarantine #{appdir}/AeroSpace.app"
  end

  app "AeroSpace-v#{version}/AeroSpace.app"
  binary "AeroSpace-v#{version}/bin/aerospace"

  binary "AeroSpace-v#{version}/shell-completion/zsh/_aerospace",
      target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_aerospace"
  binary "AeroSpace-v#{version}/shell-completion/bash/aerospace",
      target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/aerospace"
  binary "AeroSpace-v#{version}/shell-completion/fish/aerospace.fish",
      target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/aerospace.fish"

  manpage "AeroSpace-v#{version}/manpage/aerospace-balance-sizes.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-close-all-windows-but-current.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-close.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-config.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-debug-windows.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-enable.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-exec-and-forget.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-flatten-workspace-tree.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-focus-back-and-forth.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-focus-monitor.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-focus.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-fullscreen.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-join-with.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-layout.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-apps.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-exec-env-vars.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-modes.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-monitors.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-windows.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-list-workspaces.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-macos-native-fullscreen.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-macos-native-minimize.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-mode.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-move-mouse.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-move-node-to-monitor.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-move-node-to-workspace.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-move-workspace-to-monitor.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-move.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-reload-config.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-resize.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-split.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-summon-workspace.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-trigger-binding.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-volume.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-workspace-back-and-forth.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace-workspace.1"
  manpage "AeroSpace-v#{version}/manpage/aerospace.1"
end
