//
//  CategoryRow.swift
//  Day1
//
//  Created by SotheaMac on 22/1/2564 BE.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName    : String
    var items           : [Landmark]
    
    
    var body: some View {
        VStack(alignment:.leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top,5)
            ScrollView(.horizontal , showsIndicators:false) {
                HStack(alignment:.top,spacing:0) {
                    ForEach(items) { landmark in
                        CategoryItem(landmark: landmark)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmark = ModelData().landmarks
    static var previews: some View {
        CategoryRow(categoryName: landmark[0].category.rawValue, items: Array(landmark.prefix(4)))
    }
}
