//
//  FavoritesButton.swift
//  Day1
//
//  Created by SotheaMac on 21/1/2564 BE.
//

import SwiftUI

struct FavoritesButton: View {
    
    @Binding var isSet : Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }

    }
}

struct FavoritesButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesButton(isSet: .constant(true))
    }
}
