//
//  PreviewData.swift
//  BuildingSwiftUIXcodePreviewUsingJSONFile
//
//  Created by ramil on 11.11.2021.
//

import Foundation

class PreviewData {
    
    static func load<T: Codable>(name: String) -> [T] {
        
        if let path = Bundle.main.path(forResource: name, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let result = try JSONDecoder().decode([T].self, from: data)
                return result
            } catch {
                return []
            }
        }
        
        return []
    }
}
