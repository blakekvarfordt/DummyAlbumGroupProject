//
//  AlbumController.swift
//  DummyAlbum
//
//  Created by Blake kvarfordt on 9/30/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class PostController {
    
    static let shared = PostController()
    
    var posts: [Post] = []
    
    init() {
    let post1 = Post(image: nil, title: "postOne", caption: "postOne")
    let post2 = Post(image: UIImage(named: "america"), title: nil, caption: "post2")
    let post3 = Post(image: nil, title: "post3", caption: "post3")
    let post4 = Post(image: UIImage(named: "jupiter"), title: "post4", caption: nil)
    let post5 = Post(image: nil, title: "post5", caption: "post5")
    let post6 = Post(image: UIImage(named: "earth"), title: nil, caption: "post6")
    
        let postArray = [post1, post2, post3, post4, post5, post6]
        self.posts = postArray
    }
    
}
