//
//  Album.swift
//  DummyAlbum
//
//  Created by Blake kvarfordt on 9/30/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class Post {
    let image: UIImage?
    let title: String?
    let caption: String?
    let timestamp: Date
    
    init(image: UIImage?, title: String?, caption: String?, timestamp: Date = Date()) {
        self.image = image
        self.title = title
        self.caption = caption
        self.timestamp = timestamp
    }
}
