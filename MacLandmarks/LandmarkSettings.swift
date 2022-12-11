//
//  SwiftUIView.swift
//  MacLandmarks
//
//  Created by Andrii Kyrychenko on 10/12/2022.
//

import SwiftUI

struct LandmarkSettings: View {
    @AppStorage("MapView.zoom") private var zoom: Zoom = .medium
    
    var body: some View {
        Form {
            Picker("Map Zoom", selection: $zoom) {
                ForEach(Zoom.allCases) { level in
                    Text(level.rawValue)
                }
            }
            .pickerStyle(.inline)
        }
        .frame(width: 300)
        .navigationTitle("LandmarkSettings")
        .padding(80)
    }
}

struct LandmarkSettings_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkSettings()
    }
}
