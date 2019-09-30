//
//  ViewController.swift
//  DummyAlbum
//
//  Created by Blake kvarfordt on 9/30/19.
//  Copyright © 2019 Blake kvarfordt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var posts = PostController.shared.posts
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? ViewControllerCVCell else { return UICollectionViewCell() }
        
        let post = PostController.shared.posts[indexPath.row]
        
        cell.imageView.image = post.image
        cell.postTitleLabel.text = post.title
        cell.postCaptionLabel.text = post.caption
        cell.timestampLabel.text = "\(post.timestamp)"
        return cell
    }

}

