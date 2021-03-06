//
//  ViewController.swift
//  ConnectivityDemo
//
//  Created by Scott Williams on 7/2/15.
//  Copyright © 2015 Scott Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setImage(image: UIImage) {
        dispatch_async(dispatch_get_main_queue()) { [weak self] in
            self?.mainImageView.image = image
        }
    }
}

