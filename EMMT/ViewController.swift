//
//  ViewController.swift
//  EMMT
//
//  Created by Alaene Rufino de Sousa on 05/03/20.
//  Copyright © 2020 Alaene Rufino de Sousa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func presentButton(_ sender: Any) {
//        let frasesView = FrasesView()
        let frasesViewController = FrasesViewController(contentView: nil)
        navigationController?.pushViewController(frasesViewController, animated: true)
    }
}

