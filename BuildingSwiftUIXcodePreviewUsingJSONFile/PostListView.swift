//
//  PostListView.swift
//  BuildingSwiftUIXcodePreviewUsingJSONFile
//
//  Created by ramil on 11.11.2021.
//

import SwiftUI

struct PostListView: View {
    
    let posts: [Post]
    
    var body: some View {
        List(posts, id: \.id) { post in
            VStack(alignment: .leading) {
                Text(post.title)
                    .font(.headline)
                
                Text(post.body)
            }
        }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView(posts: PreviewData.load(name: "posts"))
    }
}
