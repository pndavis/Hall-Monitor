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

    @IBOutlet var text: UITextView!
    @IBOutlet weak var mapView: MKMapView!

    @IBOutlet var review: UIImageView!
    let regionRadius: CLLocationDistance = 75
    var choice: String!
    var imageSliderVC:TNImageSliderViewController!
    
    @IBOutlet weak var imageSlider: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var compare = UIBarButtonItem(title: "Compare", style: UIBarButtonItemStyle.Plain, target: nil, action: nil)
        navigationItem.rightBarButtonItem = compare
        
        self.view.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
        navigationItem.title = choice
        print(choice)
        let segmentFrame = CGRect(x: 10, y: 70.0, width: self.view.frame.size.width - 10*2, height: 40.0)
        
        let segmentView = SMSegmentView(frame: segmentFrame, separatorColour: UIColor(white: 0.95, alpha: 0.3), separatorWidth: 0.5, segmentProperties: [keySegmentTitleFont: UIFont.systemFontOfSize(12.0), keySegmentOnSelectionColour: UIColor(red: 245.0/255.0, green: 174.0/255.0, blue: 63.0/255.0, alpha: 1.0), keySegmentOffSelectionColour: UIColor.whiteColor(), keyContentVerticalMargin: Float(10.0)])
        segmentView.addSegmentWithTitle("Info", onSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.Info, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)), offSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.Info, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)))
        segmentView.addSegmentWithTitle("Images", onSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.PictureO, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)), offSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.PictureO, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)))
        segmentView.addSegmentWithTitle("Map", onSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.MapPin, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)), offSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.MapPin, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)))
        segmentView.addSegmentWithTitle("Reviews", onSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.Star, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)), offSelectionImage: UIImage.fontAwesomeIconWithName(FontAwesome.Star, textColor: UIColor.blueColor(), size: CGSize(width: 40,height: 40)))
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
            let image2 = UIImage(named: "towerA1")
            let image3 = UIImage(named: "towerA2")
            
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
            textBox.text = "Overview:\nTower A houses 664 men and women, most of them first-year students. All rooms are air-conditioned doubles. There are communal bathrooms and showers on each floor. A TV/study lounge is on every third floor.\n\nPrice:\nSemester:\t$3,150\nYear:\t\t$6,300\n\nGeneral:\nThe Litchfield Towers (Tower A, B, and C) make up the largest residential building on campus. The three towers house 1,868 men and women in singles and doubles. In the lobby of the three towers facilities including Panther Central, the student mail room, a fitness center, laundry facilities, vending machines, e-mail kiosks, and Common Grounds coffee cart. Market Central is located on the lower level, as well as Market To-Go (take-out), and Quick Zone. A skywalk from the lobby spans Forbes Avenue, providing convenient access to the academic buildings south of Forbes.\n\nFacts:\n-Houses 664 men and women\n-Ninteen floors\n-Mostly freshmen\n-All rooms are air-conditioned doubles\n-Communal bathroom/shower on every floor\n-TV/study lounge on every third floor\n-Wired and wireless internet in every room\n-Cable television\n\nDimensions:\nRooms: 17' x 11’.\nThe closets are approximately 4' x 2.5' and have three wire frame shelves that are approximately 2' x 1.25' and one wire shelf that is approximately 3.25' x 1.25'. A space that is sectioned off from the rest of the room serves as closet space. It is open and does not have a door or curtain."
            
            
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
            textBox.text = "Overview:\nTower B is the largest of the three Litchfield Towers. It houses 769 men and women, primarily first-year students, in air-conditioned doubles. There are communal bathrooms and showers on each floor. A TV/study lounge is on every third floor.\n\nPrice:\nSemester:\t$3,150\nYear:\t\t$6,300\n\nGeneral\nThe Litchfield Towers (Tower A, B, and C) make up the largest residential building on campus. The three towers house 1,868 men and women in singles and doubles. In the lobby of the three towers facilities including Panther Central, the student mail room, a fitness center, laundry facilities, vending machines, e-mail kiosks, and Common Grounds coffee cart. Market Central is located on the lower level, as well as Market To-Go (take-out), and Quick Zone. A skywalk from the lobby spans Forbes Avenue, providing convenient access to the academic buildings south of Forbes.\n\nFacts:\n-Houses 769 men and women\n-Twenty-two floors\n-Mostly freshmen\n-All rooms are air-conditioned doubles\n-Communal bathroom/shower facilities on every floor\n-TV/study lounge on every third floor\n-Wired and wireless internet in every room\n-Cable television\n\nDimensions:\nRooms: 17' x 11’.\nA space that is sectioned off from the rest of the room serves as closet space. It is open and does not have a door or curtain. The closets are approximately 4' x 2.5' and have three wire frame shelves that are approximately 2' x 1.25' and one wire shelf that is approximately 3.25' x 1.25'."

            

        }
        if choice == "Tower C"{
            //header.image = UIImage(named: "Towers")
            let initialLocation = CLLocation(latitude: 40.442559400364935, longitude:-79.9569122493267)
            centerMapOnLocation(initialLocation)
            
            let a = Artwork(title: "Tower C", locationName: "Freshman and Upperclassmen Dorm", discipline: "Freshman",coordinate: CLLocationCoordinate2D(latitude: 40.442559400364935, longitude:-79.9569122493267))
            mapView.addAnnotation(a)
            let image1 = UIImage(named: "Towers")
            let image2 = UIImage(named: "towerC1")
            let image3 = UIImage(named: "TWCFLtriple")
            let image4 = UIImage(named: "TWCFLnonetriple")
            
            if let image1 = image1, let image2 = image2, let image3 = image3, let image4 = image4 {
                
                // 1. Set the image array with UIImage objects
                imageSliderVC.images = [image1, image2, image3, image4]
                
                // 2. If you want, you can set some options
                var options = TNImageSliderViewOptions()
                options.pageControlHidden = false
                options.scrollDirection = .Horizontal
                options.pageControlCurrentIndicatorTintColor = UIColor.whiteColor()
                options.backgroundColor = UIColor(white: 0.95, alpha: 1.0)
                
                imageSliderVC.options = options
                
            }
            mapView.hidden = true
            imageSlider.hidden = true
            text.text = "Overview:\nTower C houses 435 men and women all in singles, with most of them upperclass students. Tower C has Sixteen floors, with a TV/study lounge on every third floor.\n\nPrice:\nSemester:\t$3,450\nYear:\t\t$6,900\n\nGeneral:\nThe Litchfield Towers (Tower A, B, and C) make up the largest residential building on campus. The three towers house 1,868 men and women in singles and doubles. In the lobby of the three towers facilities including Panther Central, the student mail room, a fitness center, laundry facilities, vending machines, e-mail kiosks, and Common Grounds coffee cart. Market Central is located on the lower level, as well as Market To-Go (take-out), and Quick Zone. A skywalk from the lobby spans Forbes Avenue, providing convenient access to the academic buildings south of Forbes.\n\nFacts:\n-Houses 435 men and women\n-Sixteen floors\n-Mostly upperclassmen\n-Air-conditioned singles only\n-Communal bathroom/shower on every floor\n-TV/study lounge on every third floor\n-Wired and wireless internet in every room\n-Cable televison\n\nDimensions:\nRooms: 17' x 6.5'.\nA space that is sectioned off from the rest of the room serves as closet space. It is open and does not have a door or curtain. \nClosets: 4' x 2.5' and have three wire frame shelves that are approximately 2' x 1.25' and one wire shelf that is approximately 3.25' x 1.25'."
        }
        if choice == "Bouquet Gardens"{
            //header.image = UIImage(named: "Towers")
            let initialLocation = CLLocation(latitude: 40.440745, longitude:-79.955178)
            centerMapOnLocation(initialLocation)
            
            let a = Artwork(title: "Bouquet Gardens", locationName: "Upperclassmen Apartments", discipline: "UC",coordinate: CLLocationCoordinate2D(latitude: 40.440745, longitude: -79.955178))
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
            //textBox.text = ""
            
            
            
        }
        if choice == "Lothrop Hall"{
            //header.image = UIImage(named: "Towers")
            let initialLocation = CLLocation(latitude: 40.440745, longitude:-79.955178)
            centerMapOnLocation(initialLocation)
            
            let a = Artwork(title: "Bouquet Gardens", locationName: "Upperclassmen Apartments", discipline: "UC",coordinate: CLLocationCoordinate2D(latitude: 40.440745, longitude: -79.955178))
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
            //textBox.text = ""
            review.image = UIImage(named: "review")
            
            
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
        if index == 0 {
            text.hidden = false
            imageSlider.hidden = true
            mapView.hidden = true
        }
        if(index == 1){
            text.hidden = true
            mapView.hidden = true
            //view.addSubview(imageSlider)
            imageSlider.hidden = false
            review.hidden = true
        }
        if(index == 2){
            text.hidden = true
            imageSlider.hidden = true
            mapView.hidden = false
            review.hidden = true
        }
        if index == 3{
            review.hidden = false
            text.hidden = true
            imageSlider.hidden = true
            mapView.hidden = true
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

