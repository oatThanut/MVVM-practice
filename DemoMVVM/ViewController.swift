//
//  ViewController.swift
//  DemoMVVM
//
//  Created by oatThanut on 5/6/2561 BE.
//  Copyright © 2561 oatThanut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    
    var viewModel: PetViewModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewModel = PetViewModel()
        updateContent(pet: (viewModel?.pet)!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateContent(pet: Pet) {
        Image.image = pet.Image
        NameLabel.text = pet.Name
    }

    @IBAction func NextBtn(_ sender: Any) {
        viewModel?.next()
        updateContent(pet: (viewModel?.pet)!)
    }
    
}

