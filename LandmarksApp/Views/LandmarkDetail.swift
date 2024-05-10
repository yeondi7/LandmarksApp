//
//  LandmarkDetail.swift
//  LandmarksApp
//
//  Created by 김연지 on 5/10/24.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark:Landmark
    var body: some View {
        VStack{
            // 맵뷰에 초기화된 생성자를 넣어달라고해서 coordinate넣어줌
            MapView(coordinate: landmark.locationCoodinate)
                .frame(height:300)
            CircleImage(image: landmark.image)
                .offset(y:-130)
            // .background(.blue) : 원의 원래 위치 값보기
                .padding(.bottom, -130)
        }
        VStack(alignment: .leading) {
           // Text("Turtle Rock")
            Text(landmark.name)
                .font(.title)
                .foregroundStyle(.green)
            HStack{
               // Text("Hoshua Tree National Park")
                Text(landmark.park)
                Spacer()
              //  Text("Califonia")
                Text(landmark.state)
            }
            
            .font(.subheadline)
            .foregroundStyle(.secondary)
            // 걍 미리 지정되어있는 스타일임...
            Divider() // 실선임
            //Text("About Turtle Rock")
            Text("About \(landmark.name)")
                .font(.title2)
            Text(landmark.description)
        }.padding(
            //[.leading, .top], 20
        )
        Spacer()
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[4])
}
