//
//  ContentView.swift
//  Landmarks
//
//  Created by Cesar Mendez Santos on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
