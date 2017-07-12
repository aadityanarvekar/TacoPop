//
//  ViewController.swift
//  TacoPop
//
//  Created by AADITYA NARVEKAR on 7/9/17.
//  Copyright © 2017 Aaditya Narvekar. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, DataServiceDelegate {
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var ds : DataService! = DataService.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        headerView.addDropShadow()
        
        ds.delegate = self
        ds.loadTacoArray()
        ds.tacoArray.shuffle()
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib.init(nibName: "TacoCell", bundle: nil), forCellWithReuseIdentifier: "TacoCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.tacoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            cell.configureCell(taco: ds.tacoArray[indexPath.row])
            return cell
        } else {
            print("Error dequeuing cell for Collection View")
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.shake()
        }
    }
    
    func TacoDataLoaded() {
        print("Taco Data Loaded")
        collectionView.reloadData()
    }


}

