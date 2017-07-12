//
//  Taco.swift
//  TacoPop
//
//  Created by AADITYA NARVEKAR on 7/9/17.
//  Copyright © 2017 Aaditya Narvekar. All rights reserved.
//

import Foundation

enum TacoShell: Int {
    case Flour = 1
    case Corn = 2
}

enum TacoProtein: String {
    case Beef = "Beef"
    case Chicken = "Chicken"
    case Brisket = "Brisket"
    case Fish = "Fish"
}

enum TacoCondiment: Int {
    case Loaded = 1
    case Plain = 2
}

struct Taco {
    
    private var _id: Int!
    var tacoId: Int {
        return _id
    }
    
    private var _productName: String!
    var productName: String {
        return _productName
    }
    
    private var _tacoShellId: TacoShell!
    var shellId: TacoShell {
        return _tacoShellId
    }
    
    private var _tacoProteinId: TacoProtein!
    var proteinId: TacoProtein {
        return _tacoProteinId
    }
    
    private var _tacoCondimentId: TacoCondiment!
    var condiment: TacoCondiment {
        return _tacoCondimentId
    }
    
    init(tacoId: Int, name: String, proteinId: Int, shellId: Int, condimentId: Int) {
        self._id = tacoId
        self._productName = name
        
        switch shellId {
        case 1:
            self._tacoShellId = TacoShell.Flour
            break
        default:
            self._tacoShellId = TacoShell.Corn
        }
        
        switch condimentId {
        case 1:
            self._tacoCondimentId = TacoCondiment.Loaded
            break
        default:
            self._tacoCondimentId = TacoCondiment.Plain
        }
        
        switch proteinId {
        case 1:
            self._tacoProteinId = TacoProtein.Beef
            break
        case 2:
            self._tacoProteinId = TacoProtein.Chicken
            break
        case 3:
            self._tacoProteinId = TacoProtein.Brisket
            break
        default:
            self._tacoProteinId = TacoProtein.Fish
        }
        
    }
    
    
}
