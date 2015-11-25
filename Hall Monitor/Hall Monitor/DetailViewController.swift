//
//  DetailViewController.swift
//  Hall Monitor
//
//  Created by Paul Davis on 10/26/15.
//  Copyright © 2015 Paul Davis. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            //self.configureView()
        }
    }

    var choice: String!
    override func viewWillAppear(animated: Bool) {
        detailDescriptionLabel.text = choice
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(choice)
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

