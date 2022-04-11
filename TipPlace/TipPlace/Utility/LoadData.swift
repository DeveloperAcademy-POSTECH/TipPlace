//
//  LoadData.swift
//  TipPlace
//
//  Created by 리아 on 2022/04/08.
//

import Foundation

func load<T: Decodable>(fileName: String) -> T {
    guard let fileURL = Bundle.main.url(forResource: fileName, withExtension: nil)
    else {
        // swiftlint:disable fatal_error
        fatalError("can't find \(fileName) in the main bundle.")
    }
    do {
        let data = try Data(contentsOf: fileURL)
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("can't parse data from \(fileName) as \(T.self). error : \(error)")
    }
}
