//
//  DetailViewController.swift
//  Hall Monitor
//
//  Created by Paul Davis on 10/26/15.
//  Copyright © 2015 Paul Davis. All rights reserved.
//

import UIKit
import MapKit
class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!


    @IBOutlet weak var mapView: MKMapView!
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
    let regionRadius: CLLocationDistance = 1000
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(choice)
        let initialLocation = CLLocation(latitude: 40.444271, longitude:-79.953291)
        // Do any additional setup after loading the view, typically from a nib.
       centerMapOnLocation(initialLocation)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

