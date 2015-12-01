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

    

    @IBOutlet weak var header: UIImageView!

    @IBOutlet weak var mapView: MKMapView!

    let regionRadius: CLLocationDistance = 75
    var choice: String!
    var imageSliderVC:TNImageSliderViewController!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = choice
        print(choice)
        
        // Do any additional setup after loading the view, typically from a nib.
        
        if choice == "Tower A"{
            //header.image = UIImage(named: "Towers")
            let initialLocation = CLLocation(latitude: 40.44251245014796, longitude:-79.95614781975746)
            centerMapOnLocation(initialLocation)
            
            let a = Artwork(title: "Tower A", locationName: "Freshman Dorm", discipline: "Freshman",coordinate: CLLocationCoordinate2D(latitude: 40.44251245014796, longitude:-79.95614781975746))
            mapView.addAnnotation(a)
            
            
            let image1 = UIImage(named: "Towers")
            let image2 = UIImage(named: "Towers")
            let image3 = UIImage(named: "Towers")
            
            if let image1 = image1, let image2 = image2, let image3 = image3 {
                
                // 1. Set the image array with UIImage objects
                imageSliderVC.images = [image1, image2, image3]
                
                // 2. If you want, you can set some options
                var options = TNImageSliderViewOptions()
                options.pageControlHidden = false
                options.scrollDirection = .Horizontal
                options.pageControlCurrentIndicatorTintColor = UIColor.whiteColor()
                options.backgroundColor = UIColor.whiteColor()
                
                imageSliderVC.options = options
                
            }
            
        }
        if choice == "Tower B"{
            //header.image = UIImage(named: "Towers")
            let initialLocation = CLLocation(latitude: 40.442756, longitude:-79.956462)
            centerMapOnLocation(initialLocation)
            
            let a = Artwork(title: "Tower B", locationName: "Freshman Dorm", discipline: "Freshman",coordinate: CLLocationCoordinate2D(latitude: 40.442756, longitude: -79.956462))
            mapView.addAnnotation(a)
            let image1 = UIImage(named: "Towers")
            let image2 = UIImage(named: "Towers")
            let image3 = UIImage(named: "Towers")
            
            if let image1 = image1, let image2 = image2, let image3 = image3 {
                
                // 1. Set the image array with UIImage objects
                imageSliderVC.images = [image1, image2, image3]
                
                // 2. If you want, you can set some options
                var options = TNImageSliderViewOptions()
                options.pageControlHidden = false
                options.scrollDirection = .Horizontal
                options.pageControlCurrentIndicatorTintColor = UIColor.whiteColor()
                options.backgroundColor = UIColor.whiteColor()
                
                imageSliderVC.options = options
                
            }

            

        }
        if choice == "Tower C"{
            //header.image = UIImage(named: "Towers")
            let initialLocation = CLLocation(latitude: 40.442559400364935, longitude:-79.9569122493267)
            centerMapOnLocation(initialLocation)
            
            let a = Artwork(title: "Tower C", locationName: "Freshman and Upperclassmen Dorm", discipline: "Freshman",coordinate: CLLocationCoordinate2D(latitude: 40.442559400364935, longitude:-79.9569122493267))
            mapView.addAnnotation(a)
            let image1 = UIImage(named: "Towers")
            let image2 = UIImage(named: "Towers")
            let image3 = UIImage(named: "Towers")
            
            if let image1 = image1, let image2 = image2, let image3 = image3 {
                
                // 1. Set the image array with UIImage objects
                imageSliderVC.images = [image1, image2, image3]
                
                // 2. If you want, you can set some options
                var options = TNImageSliderViewOptions()
                options.pageControlHidden = false
                options.scrollDirection = .Horizontal
                options.pageControlCurrentIndicatorTintColor = UIColor.whiteColor()
                options.backgroundColor = UIColor.whiteColor()
                
                imageSliderVC.options = options
                
            }

            
        }
        
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        print("[ViewController] Prepare for segue")
        
        if( segue.identifier == "seg_imageSlider" ){
            
            imageSliderVC = segue.destinationViewController as! TNImageSliderViewController
            
        }
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    override func viewWillAppear(animated: Bool) {
        //detailDescriptionLabel.text = choice
    }
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            //self.configureView()
        }
    }

}

