//
//  ContentView.swift
//  SwiftDemo
//
//  Created by 许明洋 on 2020/12/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            CircleImage()
                .offset(y:-130)
                .padding(.bottom,-130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .padding()
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        //设置字体为副标题
                        .font(.subheadline)
                    Spacer()
                    Text("Californa")
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
