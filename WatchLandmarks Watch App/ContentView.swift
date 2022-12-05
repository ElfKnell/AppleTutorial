//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Andrii Kyrychenko on 04/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
