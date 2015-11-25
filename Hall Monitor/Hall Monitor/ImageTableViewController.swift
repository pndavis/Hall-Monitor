//
//  ImageTableViewController.swift
//  ParallaxImageTableView
//
//  Created by Lammert Westerhoff on 17/07/15.
//  Copyright (c) 2015 Xebia. All rights reserved.
//

import UIKit

class ImageTableViewController: UITableViewController {
    var detailViewController: DetailViewController? = nil

    @IBOutlet var table: UITableView!
    var arr = [String]()
    // MARK: - Table view data source
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Hall Monitor"
        print("Test")
        arr.append("")
        arr.append("Forbes Hall")
        arr.append("Tower A")
        arr.append("Tower B")
        arr.append("Tower C")
        arr.append("Lothrop Hall")
        arr.append("Amos Hall")
        arr.append("Brackenridge Hall")
        arr.append("Bruce Hall")
        arr.append("Holland Hall")
        arr.append("McCormick Hall")
        arr.append("Nordenberg Hall")
        arr.append("Sutherland Hall")
        arr.append("Pennsylvania Hall")
        arr.append("Fraternity Complex")
        arr.append("House 8")
        arr.append("House 9")
        arr.append("Panther Hall")
        arr.append("Bouquet Gardens")
        arr.append("Forbes-Craig Apartments")
        arr.append("Centre Plaza Apartments")
        arr.append("Ruskin Hall")
        
        if let split = self.splitViewController {
            let controllers = split.viewControllers
            self.detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }

        
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print("Test")
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                //let object = arr[indexPath.row]
                print(indexPath.section)
                if let destination = segue.destinationViewController as? DetailViewController {
                    destination.choice = arr[indexPath.section]
                    
                    //destination.detailItem = object
                    destination.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                    destination.navigationItem.leftItemsSupplementBackButton = true
                    
                }
                
            }
        }
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return arr.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cellIdentifier = ""
        
        print(indexPath.section)
        var cell : UITableViewCell
        switch indexPath.section {
        case 0:
            cellIdentifier = "ImageCell"
        default:
            cellIdentifier = "TextCell"
            print("testing1234")
        }
        cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
        cell.textLabel?.text = arr[indexPath.section]
        cell.textLabel?.textAlignment = NSTextAlignment.Center
        cell.textLabel?.font = UIFont.systemFontOfSize(18, weight: UIFontWeightLight)
        
        //cell.textLabel!.text = arr[indexPath.row];

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 300
        default: ()
            return 50
        }
    }

    override func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 200
        default: ()
            return 50
        }
    }

    // MARK: - Scroll view delegate

    override func scrollViewDidScroll(scrollView: UIScrollView) {
        if let imageCell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: 0, inSection: 0)) as? ImageCell {
            imageCell.scrollViewDidScroll(scrollView)
        }    }

}

class ImageCell: UITableViewCell {

    @IBOutlet weak var bottomSpaceConstraint: NSLayoutConstraint!
    @IBOutlet weak var topSpaceConstraint: NSLayoutConstraint!
    @IBOutlet weak var containerView: UIView!

    func scrollViewDidScroll(scrollView: UIScrollView) {
        if scrollView.contentOffset.y >= 0 {
            // scrolling up
            containerView.clipsToBounds = true
            bottomSpaceConstraint?.constant = -scrollView.contentOffset.y / 2
            topSpaceConstraint?.constant = scrollView.contentOffset.y / 2
        } else {
            // scrolling down
            topSpaceConstraint?.constant = scrollView.contentOffset.y
            containerView.clipsToBounds = false
        }
    }
}
