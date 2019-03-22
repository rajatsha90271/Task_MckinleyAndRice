//
//  HomeCollectionViewController.swift
//  Task
//
//  Created by Rajat Sharma on 22/03/19.
//  Copyright © 2019 Rajat Sharma. All rights reserved.
//

import UIKit
import AVKit

// reuse identifiers
private let reuseIdentifier = "mediaCollectionViewCell"
class HomeViewController: UIViewController {
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    func launchMediaPlayerWith(mediaUrl:String){
        let avplayerController = AVPlayerViewController()
        let asset = AVAsset(url: URL(fileURLWithPath: Bundle.main.path(forResource: mediaUrl, ofType: ".mp3")!))
        let playerItem = AVPlayerItem(asset: asset)
        let player = AVPlayer(playerItem: playerItem)
        avplayerController.player = player
        avplayerController.player?.playImmediately(atRate: 1.0)
        self.present(avplayerController, animated: true) {
            avplayerController.player?.playImmediately(atRate: 1.0)
        }
    }
    
}



extension HomeViewController:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArr.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MediaCollectionViewCell
        cell.imageView.image = UIImage(named: imageArr[indexPath.row])
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // add image tap gesture
        let cell = self.collectionView.cellForItem(at: indexPath)
        let scaling = CGAffineTransform(scaleX: 0.95, y: 0.95)
        cell?.transform = scaling
        cell?.layer.masksToBounds = true
        collectionView.reloadItems(at: [indexPath])
        
        if UserDefaults.standard.object(forKey: imageArr[indexPath.row]) != nil{
            let alertController = UIAlertController(title: "Error", message: "Sorry! You can't play the media", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(alertAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            
            UserDefaults.standard.set(true, forKey: imageArr[indexPath.row])
            UserDefaults.standard.synchronize()
            launchMediaPlayerWith(mediaUrl:imageArr[indexPath.row])
        }
        
        
        
        
        
    }
    
    
    
}

