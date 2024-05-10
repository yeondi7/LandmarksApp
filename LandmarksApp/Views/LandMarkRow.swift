//
//  LandMarkRow.swift
//  LandmarksApp
//
//  Created by 김연지 on 5/10/24.
//

import SwiftUI

var landmarks:[Landmark] =
//modeldata.swift
load("landmarkData.json")

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
        LandmarkRow(landmark: landmarks[2])
    }
}
//#Preview {
//    LandMarkRow(landmark: landmarks[1])
//}
// 이건 따로 프리뷰 화면이 나오지롱!
