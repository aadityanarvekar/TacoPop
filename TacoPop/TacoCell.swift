//
//  TacoCell.swift
//  TacoPop
//
//  Created by AADITYA NARVEKAR on 7/10/17.
//  Copyright © 2017 Aaditya Narvekar. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell, Shakeable {
    
    
    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLbl: UILabel!
    
    var taco: Taco!

    override func awakeFromNib() {
        super.awakeFromNib()        
    }
    
    func configureCell(taco: Taco) {
        self.taco = taco
        tacoImage.image = UIImage(named: "\(taco.proteinId.rawValue)")
        tacoLbl.text = "\(taco.proteinId.rawValue) Taco"
    }

}
