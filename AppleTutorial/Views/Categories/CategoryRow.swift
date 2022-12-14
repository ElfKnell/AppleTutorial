//
//  CategoryRow.swift
//  AppleTutorial
//
//  Created by Andrii Kyrychenko on 28/11/2022.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { lendmark in
                        NavigationLink {
                            LandmarkDetail(landmark: lendmark)
                        } label: {
                            CategoryItem(landmark: lendmark)
                        }
                    }
                }
            }.frame(height: 185)
        }
        
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var ledmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(categoryName: ledmarks[0].category.rawValue, items: Array(ledmarks.prefix(4)))
    }
}
