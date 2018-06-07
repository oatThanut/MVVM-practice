//
//  ViewModel.swift
//  DemoMVVM
//
//  Created by oatThanut on 5/6/2561 BE.
//  Copyright © 2561 oatThanut. All rights reserved.
//

import Foundation
import UIKit

class PetViewModel {
    
    let pets: [PetModel]
    private var num: Int
    
    init() {
        self.pets = DataSource.petList.map(PetModel.init)
        num = 0
    }
    
    var name: String {
        return pets[num].name
    }
    
    var image: UIImage {
        return pets[num].image
    }
    
    func next() {
        num = (num >= pets.count-1 ? 0 : num + 1)
    }
}
