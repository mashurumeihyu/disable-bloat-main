#!/usr/bin/env bash

# Each service below is actually an agent or daemon
# that provides certain functionalities within macOS.
services=(
	'com.apple.accessibility.axassetsd'
	'com.apple.accessibility.heard'
	'com.apple.accessibility.MotionTrackingAgent'
	'com.apple.AddressBook.abd'
	'com.apple.AddressBook.ContactsAccountsService'
	'com.apple.AddressBook.SourceSync'
	'com.apple.AirPlayUIAgent'
	'com.apple.AMPArtworkAgent'
	'com.apple.AMPDeviceDiscoveryAgent'
	'com.apple.AMPLibraryAgent'
	'com.apple.amsengagementd'
	'com.apple.analyticsd'
	'com.apple.AOSHeartbeat'
	'com.apple.AOSPushRelay'
	'com.apple.ap.adprivacyd'
	'com.apple.ap.adservicesd'
	'com.apple.ap.promotedcontentd'
	'com.apple.applessdstatistics'
	'com.apple.appstoreagent'
	'com.apple.apsd'
	'com.apple.aslmanager'
	'com.apple.AssetCacheLocatorService'
	'com.apple.assistant_service'
	'com.apple.assistantd'
	'com.apple.audioanalyticsd'
	'com.apple.avconferenced'
	'com.apple.awacsd'
	'com.apple.awdd'
	'com.apple.backupd-helper'
	'com.apple.backupd'
	'com.apple.BiomeAgent'
	'com.apple.biomed'
	'com.apple.biomesyncd'
	'com.apple.bird'
	'com.apple.calaccessd'
	'com.apple.CalendarAgent'
	'com.apple.CallHistoryPluginHelper'
	'com.apple.CallHistorySyncHelper'
	'com.apple.cloudd'
	'com.apple.cloudfamilyrestrictionsd-mac'
	'com.apple.cloudpaird'
	'com.apple.cloudphotod'
	'com.apple.CloudPhotosConfiguration'
	'com.apple.cloudphotosd'
	'com.apple.CloudSettingsSyncAgent'
	'com.apple.CommCenter-osx'
	'com.apple.ContactsAgent'
	'com.apple.ContextStoreAgent'
	'com.apple.contextstored'
	'com.apple.coreduetd'
	'com.apple.coreservices.appleid.authentication'
	'com.apple.coreservices.useractivityd'
	'com.apple.corespeechd'
	'com.apple.CrashReporterSupportHelper'
	'com.apple.dataaccess.dataaccessd'
	'com.apple.diagnosticd'
	'com.apple.diagnosticextensionsd'
	'com.apple.DiagnosticReportCleanup'
	'com.apple.diagnostics_agent'
	'com.apple.dprivacyd'
	'com.apple.DumpGPURestart'
	'com.apple.DumpPanic'
	'com.apple.ensemble'
	'com.apple.EscrowSecurityAlert'
	'com.apple.familycircled'
	'com.apple.familycontrols.useragent'
	'com.apple.familycontrols'
	'com.apple.familynotificationd'
	'com.apple.financed'
	'com.apple.findmymac '
	'com.apple.findmymacmessenger'
	'com.apple.followupd'
	'com.apple.FollowUpUI'
	'com.apple.ftp-proxy'
	'com.apple.ftpd'
	'com.apple.GameController.gamecontrollerd'
	'com.apple.gamed'
	'com.apple.geod'
	'com.apple.geodMachServiceBridge'
	'com.apple.helpd'
	'com.apple.homed'
	'com.apple.homeenergyd'
	'com.apple.icloud.findmydeviced.aps-demo'
	'com.apple.icloud.findmydeviced.aps-development'
	'com.apple.icloud.findmydeviced.aps-production'
	'com.apple.icloud.findmydeviced.findmydevice-user-agent'
	'com.apple.icloud.findmydeviced.ua-services'
	'com.apple.icloud.findmydeviced'
	'com.apple.icloud.fmfd'
	'com.apple.icloud.searchpartyd.accessorydiscoverymanager'
	'com.apple.icloud.searchpartyd.advertisementcache'
	'com.apple.icloud.searchpartyd.beaconmanager.agentdaemoninternal'
	'com.apple.icloud.searchpartyd.beaconmanager'
	'com.apple.icloud.searchpartyd.finderstatemanager'
	'com.apple.icloud.searchpartyd.pairingmanager'
	'com.apple.icloud.searchpartyd.scheduler'
	'com.apple.icloud.searchpartyd'
	'com.apple.icloud.searchpartyuseragent'
	'com.apple.iCloudNotificationAgent'
	'com.apple.iCloudUserNotifications'
	'com.apple.idsremoteurlconnectionagent'
	'com.apple.imagent'
	'com.apple.imautomatichistorydeletionagent'
	'com.apple.IMLoggingAgent'
	'com.apple.imtransferagent'
	'com.apple.intelligenceplatformd'
	'com.apple.itunescloudd'
	'com.apple.iTunesHelper.launcher'
	'com.apple.knowledge-agent'
	'com.apple.locationmenu'
	'com.apple.logd'
	'com.apple.macos.studentd'
	'com.apple.ManagedClient.cloudconfigurationd'
	'com.apple.ManagedClientAgent.enrollagent'
	'com.apple.Maps.mapspushd'
	'com.apple.Maps.pushdaemon'
	'com.apple.mediaanalysisd'
	'com.apple.mediastream.mstreamd'
	'com.apple.mobileassetd '
	'com.apple.mobiledeviceupdater'
	'com.apple.nearbyd'
	'com.apple.netbiosd'
	'com.apple.newsd'
	'com.apple.newsyslog'
	'com.apple.notificationcenterui'
	'com.apple.nsurlsessiond'
	'com.apple.osanalytics.osanalyticshelper'
	'com.apple.parentalcontrols.check'
	'com.apple.parsec-fbf'
	'com.apple.parsecd'
	'com.apple.passd'
	'com.apple.pbs'
	'com.apple.peopled'
	'com.apple.PerfPowerServices'
	'com.apple.photoanalysisd'
	'com.apple.photolibraryd'
	'com.apple.powerlogHelperd'
	'com.apple.progressd'
	'com.apple.protectedcloudstorage.protectedcloudkeysyncing'
	'com.apple.rapportd-user'
	'com.apple.rapportd'
	'com.apple.remindd'
	'com.apple.ReportCrash.Root'
	'com.apple.ReportCrash.Self'
	'com.apple.ReportCrash'
	'com.apple.ReportMemoryException'
	'com.apple.ReportPanic'
	'com.apple.routined'
	'com.apple.rtcreportingd'
	'com.apple.SafariCloudHistoryPushAgent'
	'com.apple.safaridavclient'
	'com.apple.SafariNotificationAgent'
	'com.apple.sandboxd'
	'com.apple.ScreenTimeAgent'
	'com.apple.security.cloudkeychainproxy'
	'com.apple.security.cloudkeychainproxy3'
	'com.apple.sharingd'
	'com.apple.sidecar-hid-relay'
	'com.apple.sidecar-relay'
	'com.apple.Siri.agent'
	'com.apple.siri.context.service'
	'com.apple.siri.morphunassetsupdaterd'
	'com.apple.siriactionsd'
	'com.apple.siriinferenced'
	'com.apple.siriknowledged'
	'com.apple.SocialPushAgent'
	'com.apple.softwareupdate_notify_agent'
	'com.apple.spindump_agent'
	'com.apple.spindump'
	'com.apple.SubmitDiagInfo'
	'com.apple.suggestd'
	'com.apple.symptomsd-diag'
	'com.apple.symptomsd'
	'com.apple.syncdefaultsd'
	'com.apple.sysdiagnose_agent'
	'com.apple.sysdiagnose'
	'com.apple.syslogd'
	'com.apple.systemstats.analysis'
	'com.apple.systemstats.daily'
	'com.apple.tailspind'
	'com.apple.telephonyutilities.callservicesd'
	'com.apple.textunderstandingd'
	'com.apple.tipsd'
	'com.apple.TMCacheDelete'
	'com.apple.TMHelperAgent.SetupOffer'
	'com.apple.TMHelperAgent'
	'com.apple.transparencyd'
	'com.apple.triald.system'
	'com.apple.triald'
	'com.apple.TrustEvaluationAgent'
	'com.apple.universalaccessd'
	'com.apple.UsageTrackingAgent'
	'com.apple.videosubscriptionsd'
	'com.apple.voicebankingd'
	'com.apple.watchdogd '
	'com.apple.weatherd'
	'com.apple.wifianalyticsd'
	'com.apple.WiFiVelocityAgent'
	'com.apple.wifivelocityd '
	'com.apple.XProtect.daemon.scan.startup'
	'com.apple.XProtect.daemon.scan'
)

manageServices() {
	local action=$1
	local userID=$2
	# Fix capitalization for older Bash
	local label=$(echo "$action" | sed 's/./\u&/')

	userPlistPaths=(
		"${HOME}/Library/LaunchAgents/"
		"/Library/LaunchAgents/"
		"/System/Library/LaunchAgents/"
	)
	systemPlistPaths=(
		"/Library/LaunchDaemons/"
		"/System/Library/LaunchDaemons/"
	)

	handleServiceAction() {
		local domain=$1
		local service=$2
		local plistPath=$3
		local entry="${domain}/${service}"

		echo "${label}: ${entry}"
		if [[ ${action} == "disable" ]]; then
			# Silenced "failed bootout" with 2>/dev/null
			sudo launchctl bootout "${entry}" 2>/dev/null
			sudo launchctl disable "${entry}" 2>/dev/null
		elif [[ ${action} == "enable" ]]; then
			sudo launchctl enable "${entry}" 2>/dev/null
			sudo launchctl bootstrap "${domain}" "${plistPath}" 2>/dev/null
		fi
	}

	for service in "${services[@]}"; do
		for userPath in "${userPlistPaths[@]}"; do
			plistPath="${userPath}${service}.plist"
			if [[ -f ${plistPath} ]]; then
				handleServiceAction "gui/${userID}" "${service}" "${plistPath}"
			fi
		done
		for systemPath in "${systemPlistPaths[@]}"; do
			plistPath="${systemPath}${service}.plist"
			if [[ -f ${plistPath} ]]; then
				handleServiceAction "system" "${service}" "${plistPath}"
			fi
		done
	done
}

manageTweaks() {
	local action=$1
	local label=$(echo "$action" | sed 's/./\u&/')
	
	tweaks=(
		"com.apple.loginwindow TALLogoutSavesState -bool false"
		"com.apple.loginwindow LoginwindowLaunchesRelaunchApps -bool false"
		"NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false"
		"NSGlobalDomain NSWindowResizeTime -float 0.001"
		"-g QLPanelAnimationDuration -float 0"
		"com.apple.dock autohide-time-modifier -float 0"
		"com.apple.dock autohide-delay -float 0"
		"com.apple.dock no-bouncing -bool true"
		"com.apple.dock launchanim -bool false"
		"com.apple.SoftwareUpdate AutomaticCheckEnabled -bool false"
		"com.apple.SoftwareUpdate AutomaticDownload -bool false"
		"com.apple.commerce AutoUpdate -bool false"
		"com.apple.commerce AutoUpdateRestartRequired -bool false"
		"com.apple.SoftwareUpdate CriticalUpdateInstall -bool false"
		"com.apple.security.revocation.plist OCSPStyle None"
		"com.apple.security.revocation.plist CRLStyle None"
		"com.apple.LaunchServices LSQuarantine -bool false"
	)

	for cmd in "${tweaks[@]}"; do
		read -r domain subkey rest <<<"${cmd}"
		echo "${label}: ${domain} ${subkey}"
		if [[ ${action} == "disable" ]]; then
			defaults write "${domain}" "${subkey}" "${rest}" 2>/dev/null
		elif [[ ${action} == "enable" ]]; then
			defaults delete "${domain}" "${subkey}" 2>/dev/null
		fi
	done
}

main() {
	local action=$1
	local launchctlAction

	if [[ ${action} == "--revert" ]]; then
		manageServices "enable" "${UID}"
		manageTweaks "enable"
		launchctlAction="load"
	else
		manageServices "disable" "${UID}"
		manageTweaks "disable"
		launchctlAction="unload"
	fi

	sudo launchctl "${launchctlAction}" /System/Library/LaunchAgents/com.apple.Dock.plist 2>/dev/null
}

main "$@"
