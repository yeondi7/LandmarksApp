//
//  ContentView.swift
//  LandmarksApp
//
//  Created by 김연지 on 5/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .frame(height:300)
            CircleImage()
                .offset(y:-130)
               // .background(.blue) : 원의 원래 위치 값보기
                .padding(.bottom, -130)
        }
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
                .foregroundStyle(.green)
            HStack{
                Text("Hoshua Tree National Park")
                Spacer()
                Text("Califonia")
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            // 걍 미리 지정되어있는 스타일임...
            Divider() // 실선임
            Text("About Turtle Rock")
                .font(.title2)
            Text("Descriptive text goes here")
        }.padding(
            //[.leading, .top], 20
        )
        Spacer()
    }
}

#Preview {
    ContentView()
}
