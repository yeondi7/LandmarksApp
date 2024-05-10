//
//  LandmarkList.swift
//  LandmarksApp
//
//  Created by 김연지 on 5/10/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            // 아이패드용 스플릿.. 멋져...!
            List(landmarks){
                //id: \.id
                // keypass, 구조체에 hashable 넣어줘
                //identifiable 들어가면 keypass 생략가능
                landmark in NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }

            }
            
        } detail: {
            Text("select a Landmark")
        }
//        List {
//            LandMarkRow(landmark: landmarks[0])
//            LandMarkRow(landmark: landmarks[1])
//            LandMarkRow(landmark: landmarks[2])
//        }
    }
}

#Preview {
    LandmarkList()
}
