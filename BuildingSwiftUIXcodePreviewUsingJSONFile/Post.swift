//
//  Post.swift
//  BuildingSwiftUIXcodePreviewUsingJSONFile
//
//  Created by ramil on 11.11.2021.
//

import Foundation

struct Post: Codable {
    let id: Int
    let title: String
    let body: String
}
