//
//  Profile.swift
//  AppleTutorial
//
//  Created by Andrii Kyrychenko on 28/11/2022.
//

import Foundation

struct Profile: Hashable {
    //var id = UUID()
    var username: String
    var prefersNotifications = false
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "☀️"
        case autumn = "🍂"
        case winter = "❄️"
        
        var id: String { rawValue }
    }
}
