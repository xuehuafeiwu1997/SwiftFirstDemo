//
//  LandMarkRow.swift
//  SwiftDemo
//
//  Created by 许明洋 on 2020/12/1.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark:Landmark
    
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

struct LandMarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandMarkRow(landmark: landmarkData[0])
            LandMarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
