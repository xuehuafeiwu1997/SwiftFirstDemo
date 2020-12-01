//
//  CircleImage.swift
//  SwiftDemo
//
//  Created by 许明洋 on 2020/12/1.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    
    var body: some View {
        image            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white,lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
