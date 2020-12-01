//
//  ContentView.swift
//  SwiftDemo
//
//  Created by 许明洋 on 2020/12/1.
//

import SwiftUI

struct ContentView: View {
    var landmark : Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom,-130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .padding()
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        //设置字体为副标题
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name),displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[0])
    }
}
