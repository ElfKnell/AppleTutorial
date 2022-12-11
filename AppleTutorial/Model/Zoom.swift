//
//  Zoom.swift
//  AppleTutorial
//
//  Created by Andrii Kyrychenko on 10/12/2022.
//

import Foundation

enum Zoom: String, CaseIterable, Identifiable {
    case near = "Near"
    case medium = "Medium"
    case far = "Far"
    
    var id: Zoom {
        return self
    }
}
