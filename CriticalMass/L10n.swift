//
// Created for CriticalMaps in 2020

import Foundation

enum L10n {
    static let twitterNoData = L10n.translate("twitter.noData")
    static let rulesTitle = L10n.translate("rules.title")
    static let error = L10n.translate("error")
    static let closeButtonLabel = L10n.translate("close.button.label")
    static let loadingButtonLabel = L10n.translate("loadintton.label")
    static let ok = L10n.translate("ok")
    // Settings
    static let themeLocalizedString = L10n.translate("settings.theme")
    static let obversationModeTitle = L10n.translate("settings.observationmode.title")
    static let obversationModeDetail = L10n.translate("settings.observationmode.detail")
    static let settingsTitle = L10n.translate("settings.title")
    static let settingsSectionInfo = L10n.translate("settings.section.info")
    static let settingsWebsite = L10n.translate("settings.website")
    static let settingsTwitter = L10n.translate("settings.twitter")
    static let settingsFacebook = L10n.translate("settings.facebook")
    static let settingsOpenSourceTitle = L10n.translate("settings.opensource.title")
    static let settingsOpenSourceDetail = L10n.translate("settings.opensource.detail")
    static let settingsOpenSourceAction = L10n.translate("settings.opensource.action")
    static let settingsCriticalMassDotInTitle = L10n.translate("settings.criticalMassDotIn.title")
    static let settingsCriticalMassDotInDetail = L10n.translate("settings.criticalMassDotIn.detail")
    static let settingsFriends = L10n.translate("settings.friends")
    static let settingsFriendsSettings = L10n.translate("settings.friends.settings")
    static let settingsFriendsShowID = L10n.translate("settings.friends.showID")
    static let settingsAddFriendTitle = L10n.translate("settings.friends.addFriendTitle")
    static let settingsAddFriendDescription = L10n.translate("settings.friends.addFriendDescription")
    // Chat
    static let chatNoChatActivity = L10n.translate("chat.noChatActivity")
    static let chatPlaceholder = L10n.translate("chat.placeholder")
    static let chatSend = L10n.translate("chat.send")
    static let chatTitle = L10n.translate("chat.title")
    static let chatSendError = L10n.translate("chat.send.error")
    // Map
    static let mapLayerInfo = L10n.translate("map.layer.info")
    static let mapLayerInfoTitle = L10n.translate("map.layer.info.title")
    static let mapTitle = L10n.translate("map.title")
    // ErrorState
    static let errorStateTitle = L10n.translate("errorState.title")
    static let errorStateMessage = L10n.translate("errorState.message")
    // Map action items
    static let menuTitle = L10n.translate("map.menu.title")
    static let menuShare = L10n.translate("map.menu.share")
    static let menuRoute = L10n.translate("map.menu.route")
}

extension L10n {
    private static func translate(_ key: String, tableName: String = "Localizable", _ args: CVarArg...) -> String {
        let format = NSLocalizedString(key, tableName: tableName, comment: "")
        return String(format: format, locale: .current, arguments: args)
    }
}
