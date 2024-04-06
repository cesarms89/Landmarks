//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Cesar Mendez Santos on 05/04/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        NavigationSplitView{
            List(landmarks){ landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    LandmarkList()
}