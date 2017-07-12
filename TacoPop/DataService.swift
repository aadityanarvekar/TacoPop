//
//  DataService.swift
//  TacoPop
//
//  Created by AADITYA NARVEKAR on 7/10/17.
//  Copyright © 2017 Aaditya Narvekar. All rights reserved.
//

import Foundation


protocol DataServiceDelegate {
    func TacoDataLoaded()
}

class DataService {
    static let shared = DataService() // Singleton
    var delegate: DataServiceDelegate?
    
    private var _tacoArray: [Taco]! = []
    var tacoArray: [Taco] {
        get {
            return _tacoArray
        }
        
        set {
            _tacoArray = newValue
        }
    }
    
    func loadTacoArray() {
        
        for i in 1...4 {
            var tacoId = 1;
            var name = ""
            switch i {
            case 1:
                name = TacoProtein.Beef.rawValue
                break
            case 2:
                name = TacoProtein.Chicken.rawValue
                break
            case 3:
                name = TacoProtein.Brisket.rawValue
                break
            default:
                name = TacoProtein.Fish.rawValue
                break
            }
            
            _tacoArray.append(Taco(tacoId: tacoId, name: "\(name) \(tacoId)", proteinId: i, shellId: 1, condimentId: 1))
            tacoId += 1
            _tacoArray.append(Taco(tacoId: tacoId, name: "\(name) \(tacoId)", proteinId: i, shellId: 1, condimentId: 2))
            tacoId += 1
            _tacoArray.append(Taco(tacoId: tacoId, name: "\(name) \(tacoId)", proteinId: i, shellId: 2, condimentId: 1))
            tacoId += 1
            _tacoArray.append(Taco(tacoId: tacoId, name: "\(name) \(tacoId)", proteinId: i, shellId: 2, condimentId: 2))
        }
        
        delegate?.TacoDataLoaded()
    }
    
    
    
}
