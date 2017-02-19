//
//  ViewController.swift
//  CollectionViewF
//
//  Created by Fausto Checa on 17/2/17.
//  Copyright © 2017 Fausto Checa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    var images = ["one", "two", "three", "four", "five", "six"]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        cell.layer.cornerRadius = 50
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 3
        
        cell.myImage.image = UIImage(named: images[indexPath.row])
        cell.myImage.contentMode = .scaleAspectFit
        
        return cell
        
        
    }
    
    
}

