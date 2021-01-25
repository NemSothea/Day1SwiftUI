//
//  CategoryItem.swift
//  Day1
//
//  Created by SotheaMac on 22/1/2564 BE.
//

import SwiftUI

struct CategoryItem: View {
    
    let landmark : Landmark
    
    var body: some View {
        VStack {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding()
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
    }
}
