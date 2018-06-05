//
//  ViewController.swift
//  DemoMVVM
//
//  Created by oatThanut on 5/6/2561 BE.
//  Copyright © 2561 oatThanut. All rights reserved.
//

import UIKit

class PetViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    
    var viewModel: PetViewModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewModel = PetViewModel()
        viewModel?.configure(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func NextBtn(_ sender: Any) {
        viewModel?.next()
        viewModel?.configure(self)
    }
    
}

