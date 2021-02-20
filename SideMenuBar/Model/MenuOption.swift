//
//  MenuOption.swift
//  SideMenuBar
//
//  Created by 白数叡司 on 2021/02/20.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    case Profile
    case Inbox
    case Notifications
    case Settings
    
    var description: String {
        switch self {
        case .Profile:
            return "Profile"
        case .Inbox:
            return "Inbox"
        case .Notifications:
            return "Notifications"
        case .Settings:
            return "Settings"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile:
            return UIImage(systemName: "person") ?? UIImage()
        case .Inbox:
            return UIImage(systemName: "mail") ?? UIImage()
        case .Notifications:
            return UIImage(systemName: "filemenu.and.selection") ?? UIImage()
        case .Settings:
            return UIImage(systemName: "gearshape") ?? UIImage()
        }
    }
}
