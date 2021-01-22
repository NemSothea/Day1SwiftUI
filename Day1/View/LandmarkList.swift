//
//  LandmarkList.swift
//  Day1
//
//  Created by SotheaMac on 20/1/2564 BE.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData : ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmark : [Landmark] {
        
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites Only")
                }
                ForEach(filteredLandmark) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
