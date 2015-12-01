//
//  DetailViewController.swift
//  Hall Monitor
//
//  Created by Paul Davis on 10/26/15.
//  Copyright © 2015 Paul Davis. All rights reserved.
//

import UIKit
import MapKit
class DetailViewController: UIViewController, SMSegmentViewDelegate {

    

    @IBOutlet weak var textBox: UITextView!
    @IBOutlet weak var header: UIImageView!

    @IBOutlet weak var mapView: MKMapView!

    let regionRadius: CLLocationDistance = 75
    var choice: String!
    var imageSliderVC:TNImageSliderViewController!
    
    @IBOutlet weak var imageSlider: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        self.view.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
        navigationItem.title = choice
        print(choice)
        let segmentFrame = CGRect(x: 10, y: 70.0, width: self.view.frame.size.width - 10*2, height: 40.0)
        
        let segmentView = SMSegmentView(frame: segmentFrame, separatorColour: UIColor(white: 0.95, alpha: 0.3), separatorWidth: 0.5, segmentProperties: [keySegmentTitleFont: UIFont.systemFontOfSize(12.0), keySegmentOnSelectionColour: UIColor(red: 245.0/255.0, green: 174.0/255.0, blue: 63.0/255.0, alpha: 1.0), keySegmentOffSelectionColour: UIColor.whiteColor(), keyContentVerticalMargin: Float(10.0)])
        segmentView.addSegmentWithTitle("Info", onSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.Info, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)), offSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.Info, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)))
        segmentView.addSegmentWithTitle("Images", onSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.PictureO, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)), offSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.PictureO, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)))
        segmentView.addSegmentWithTitle("Map", onSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.MapPin, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)), offSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.MapPin, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)))
        segmentView.addSegmentWithTitle("Tour", onSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.VideoCamera, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)), offSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.VideoCamera, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)))
        
        segmentView.selectSegmentAtIndex(0)
        segmentView.delegate = self
        view.addSubview(segmentView)
        
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
                options.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
                
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
                options.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
                
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
                options.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
                
                imageSliderVC.options = options
                
            }
            textBox.text = "The Litchfield Towers (Tower A, B, and C) make up the largest residential building on campus. Tower C houses 435 men and women all in singles, with most of them upperclass students. Tower C has Sixteen floors, with a TV/study lounge on every third floor."

            
        }
        
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        print("[ViewController] Prepare for segue")
        
        if( segue.identifier == "seg_imageSlider" ){
            
            imageSliderVC = segue.destinationViewController as! TNImageSliderViewController
            
        }
        
    }
    func segmentView(segmentView: SMBasicSegmentView, didSelectSegmentAtIndex index: Int) {
        /*
        Replace the following line to implement what you want the app to do after the segment gets tapped.
        */
        print("Select segment at index: \(index)")
        if(index == 1){
            mapView.removeFromSuperview()
            view.addSubview(imageSlider)
        }
        if(index == 2){
            imageSlider.removeFromSuperview()
            view.addSubview(mapView)
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

