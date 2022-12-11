//
//  FilterKategory.swift
//  AppleTutorial
//
//  Created by Andrii Kyrychenko on 09/12/2022.
//

import Foundation

enum FilterCategory: String, CaseIterable, Identifiable {
    case all = "All"
    case lakes = "Lakes"
    case rivers = "Rivers"
    case mountains = "Mountains"
    
    var id: FilterCategory { self }
}
