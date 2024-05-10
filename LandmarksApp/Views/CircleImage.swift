//
//  CircleImage.swift
//  LandmarksApp
//
//  Created by 김연지 on 5/10/24.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
        // image("turtle Rock")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(content: {
                Circle().stroke(.white, lineWidth: 4)
            })
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage(image:landmarks[3].image)
}
