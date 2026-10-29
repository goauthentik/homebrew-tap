cask "authentik-agent" do
  version "0.72.5"
  sha256 "8e10d101003ac75f8dac39b8e1e61e377c7c249ba66dc20c8d47c3218eb1fa55"

  url "https://github.com/goauthentik/platform/releases/download/v#{version}/authentik.Agent.Installer.pkg"
  name "authentik Agent"
  desc "Authentik endpoint agent"
  homepage "https://github.com/goauthentik/platform"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "authentik.Agent.Installer.pkg"

  uninstall launchctl: "io.goauthentik.platform.sysd",
            quit:      "io.goauthentik.platform.agent",
            pkgutil:   "io.goauthentik.agent",
            delete:    [
              "/Library/Application Support/Chromium/NativeMessagingHosts/io.goauthentik.platform.json",
              "/Library/Application Support/Mozilla/NativeMessagingHosts/io.goauthentik.platform.json",
              "/Library/Google/Chrome/NativeMessagingHosts/io.goauthentik.platform.json",
              "/Library/LaunchDaemons/io.goauthentik.platform.sysd.plist",
              "/Library/Microsoft/Edge/NativeMessagingHosts/io.goauthentik.platform.json",
              "/usr/local/bin/ak",
              "/usr/local/bin/ak-vault",
            ]

  zap trash: [
    "/Library/Logs/io.goauthentik",
    "/opt/authentik",
  ]
end
