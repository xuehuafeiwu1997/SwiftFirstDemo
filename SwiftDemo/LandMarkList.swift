//
//  LandMarkList.swift
//  SwiftDemo
//
//  Created by 许明洋 on 2020/12/1.
//

import SwiftUI

struct LandMarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData) {
                Landmark in
                NavigationLink( destination: ContentView(landmark: Landmark)) {
                    LandMarkRow(landmark: Landmark)
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
    }
}

struct LandMarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
                    LandMarkList()
                        .previewDevice(PreviewDevice(rawValue: deviceName))
                        .previewDisplayName(deviceName)
                }
    }
}
