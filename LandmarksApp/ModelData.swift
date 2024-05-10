// decoding 담당...
//  ModelData.swift
//  LandmarksApp
//
//  Created by 김연지 on 5/10/24.
//

import Foundation

//[Landmark].self
// generic을 써서 같은 형태를 빠르게 변환
func load<T:Decodable>(_ filename: String) -> T {
    let data: Data
    
    // json은 runtime에 bundle에 들어있다.
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else { fatalError("Couldn't find \(filename) in main bundle") }
    
    do {
        data = try Data(contentsOf: file )
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        // \n은 newline의 약자, 줄 바꿔주는거임
    }
    
    // 우리 지금 Alamo 안쓰고 만드는거라 JSON디코더 쓰는거임
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
