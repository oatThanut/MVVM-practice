//
//  ViewModel.swift
//  DemoMVVM
//
//  Created by oatThanut on 5/6/2561 BE.
//  Copyright © 2561 oatThanut. All rights reserved.
//

import Foundation
import UIKit

public class PetViewModel {
    
    public var pet: Pet
    private var num: Int
    
    public init() {
        self.pet = Pet(name: "abc", image: UIImage(named: "l1")!)
        num = 0
    }
    
    public init(pet: Pet) {
        self.pet = pet
        num = 0
    }
    
    public var name: String {
        return pet.Name
    }
    
    public var image: UIImage {
        return pet.Image
    }
    
    func next() {
        num += 1
        if num >= DataSource.petList.count {
            self.num = 0
        }
        let key = Array(DataSource.petList.keys)[num]
        pet = Pet(name: "\(key)", image: DataSource.petList[key.description]!)
    }
}
