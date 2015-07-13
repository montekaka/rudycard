//
//  ViewController.swift
//  RudyCard
//
//  Created by Jia Chen on 7/12/15.
//  Copyright (c) 2015 com.bruinSquare. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDataSource {
    var pageViewContrlloer : UIPageViewController!
    var pageTitles: [String]!
    var pageQuestionImages: [String]!

    @IBAction func restartAction(sender: AnyObject) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageTitles = ["Question 1", "Question 2", "Question 3", "Question 4", "Question 5", "Question 6", "Question 7", "Question 8", "Question 9", "Question 10", "Question 11", "Question 12", "Question 13", "Question 14", "Question 15", "Question 16", "Question 17", "Question 18", "Question 19", "Question 20", "Question 21", "Question 22", "Question 23", "Question 24", "Question 25", "Question 26", "Question 27", "Question 28", "Question 29", "Question 30", "Question 31", "Question 32", "Question 33", "Question 34", "Question 35", "Question 36", "Question 37", "Question 38", "Question 39", "Question 40", "Question 41", "Question 42", "Question 43", "Question 44", "Question 45", "Question 46", "Question 47", "Question 48", "Question 49", "Question 50", "Question 51", "Question 52", "Question 53", "Question 54", "Question 55", "Question 56", "Question 57", "Question 58", "Question 59", "Question 60", "Question 61", "Question 62", "Question 63", "Question 64", "Question 65", "Question 66", "Question 67", "Question 68", "Question 69", "Question 70", "Question 71", "Question 72", "Question 73", "Question 74", "Question 75", "Question 76", "Question 77", "Question 78", "Question 79", "Question 80", "Question 81", "Question 82", "Question 83", "Question 84", "Question 85", "Question 86", "Question 87", "Question 88", "Question 89", "Question 90", "Question 91", "Question 92", "Question 93", "Question 94", "Question 95", "Question 96", "Question 97", "Question 98", "Question 99", "Question 100", "Question 101", "Question 102", "Question 103", "Question 104"]
        
        self.pageQuestionImages = ["Pages from Complete_notecards_digital-Reserving-001.png", "Pages from Complete_notecards_digital-Reserving-003.png", "Pages from Complete_notecards_digital-Reserving-005.png", "Pages from Complete_notecards_digital-Reserving-007.png", "Pages from Complete_notecards_digital-Reserving-009.png", "Pages from Complete_notecards_digital-Reserving-011.png", "Pages from Complete_notecards_digital-Reserving-013.png", "Pages from Complete_notecards_digital-Reserving-015.png", "Pages from Complete_notecards_digital-Reserving-017.png", "Pages from Complete_notecards_digital-Reserving-019.png", "Pages from Complete_notecards_digital-Reserving-021.png", "Pages from Complete_notecards_digital-Reserving-023.png", "Pages from Complete_notecards_digital-Reserving-025.png", "Pages from Complete_notecards_digital-Reserving-027.png", "Pages from Complete_notecards_digital-Reserving-029.png", "Pages from Complete_notecards_digital-Reserving-031.png", "Pages from Complete_notecards_digital-Reserving-033.png", "Pages from Complete_notecards_digital-Reserving-035.png", "Pages from Complete_notecards_digital-Reserving-037.png", "Pages from Complete_notecards_digital-Reserving-039.png", "Pages from Complete_notecards_digital-Reserving-041.png", "Pages from Complete_notecards_digital-Reserving-043.png", "Pages from Complete_notecards_digital-Reserving-045.png", "Pages from Complete_notecards_digital-Reserving-047.png", "Pages from Complete_notecards_digital-Reserving-049.png", "Pages from Complete_notecards_digital-Reserving-051.png", "Pages from Complete_notecards_digital-Reserving-053.png", "Pages from Complete_notecards_digital-Reserving-055.png", "Pages from Complete_notecards_digital-Reserving-057.png", "Pages from Complete_notecards_digital-Reserving-059.png", "Pages from Complete_notecards_digital-Reserving-061.png", "Pages from Complete_notecards_digital-Reserving-063.png", "Pages from Complete_notecards_digital-Reserving-065.png", "Pages from Complete_notecards_digital-Reserving-067.png", "Pages from Complete_notecards_digital-Reserving-069.png", "Pages from Complete_notecards_digital-Reserving-071.png", "Pages from Complete_notecards_digital-Reserving-073.png", "Pages from Complete_notecards_digital-Reserving-075.png", "Pages from Complete_notecards_digital-Reserving-077.png", "Pages from Complete_notecards_digital-Reserving-079.png", "Pages from Complete_notecards_digital-Reserving-081.png", "Pages from Complete_notecards_digital-Reserving-083.png", "Pages from Complete_notecards_digital-Reserving-085.png", "Pages from Complete_notecards_digital-Reserving-087.png", "Pages from Complete_notecards_digital-Reserving-089.png", "Pages from Complete_notecards_digital-Reserving-091.png", "Pages from Complete_notecards_digital-Reserving-093.png", "Pages from Complete_notecards_digital-Reserving-095.png", "Pages from Complete_notecards_digital-Reserving-097.png", "Pages from Complete_notecards_digital-Reserving-099.png", "Pages from Complete_notecards_digital-Reserving-101.png", "Pages from Complete_notecards_digital-Reserving-103.png", "Pages from Complete_notecards_digital-Reserving-105.png", "Pages from Complete_notecards_digital-Reserving-107.png", "Pages from Complete_notecards_digital-Reserving-109.png", "Pages from Complete_notecards_digital-Reserving-111.png", "Pages from Complete_notecards_digital-Reserving-113.png", "Pages from Complete_notecards_digital-Reserving-115.png", "Pages from Complete_notecards_digital-Reserving-117.png", "Pages from Complete_notecards_digital-Reserving-119.png", "Pages from Complete_notecards_digital-Reserving-121.png", "Pages from Complete_notecards_digital-Reserving-123.png", "Pages from Complete_notecards_digital-Reserving-125.png", "Pages from Complete_notecards_digital-Reserving-127.png", "Pages from Complete_notecards_digital-Reserving-129.png", "Pages from Complete_notecards_digital-Reserving-131.png", "Pages from Complete_notecards_digital-Reserving-133.png", "Pages from Complete_notecards_digital-Reserving-135.png", "Pages from Complete_notecards_digital-Reserving-137.png", "Pages from Complete_notecards_digital-Reserving-139.png", "Pages from Complete_notecards_digital-Reserving-141.png", "Pages from Complete_notecards_digital-Reserving-143.png", "Pages from Complete_notecards_digital-Reserving-145.png", "Pages from Complete_notecards_digital-Reserving-147.png", "Pages from Complete_notecards_digital-Reserving-149.png", "Pages from Complete_notecards_digital-Reserving-151.png", "Pages from Complete_notecards_digital-Reserving-153.png", "Pages from Complete_notecards_digital-Reserving-155.png", "Pages from Complete_notecards_digital-Reserving-157.png", "Pages from Complete_notecards_digital-Reserving-159.png", "Pages from Complete_notecards_digital-Reserving-161.png", "Pages from Complete_notecards_digital-Reserving-163.png", "Pages from Complete_notecards_digital-Reserving-165.png", "Pages from Complete_notecards_digital-Reserving-167.png", "Pages from Complete_notecards_digital-Reserving-169.png", "Pages from Complete_notecards_digital-Reserving-171.png", "Pages from Complete_notecards_digital-Reserving-173.png", "Pages from Complete_notecards_digital-Reserving-175.png", "Pages from Complete_notecards_digital-Reserving-177.png", "Pages from Complete_notecards_digital-Reserving-179.png", "Pages from Complete_notecards_digital-Reserving-181.png", "Pages from Complete_notecards_digital-Reserving-183.png", "Pages from Complete_notecards_digital-Reserving-185.png", "Pages from Complete_notecards_digital-Reserving-187.png", "Pages from Complete_notecards_digital-Reserving-189.png", "Pages from Complete_notecards_digital-Reserving-191.png", "Pages from Complete_notecards_digital-Reserving-193.png", "Pages from Complete_notecards_digital-Reserving-195.png", "Pages from Complete_notecards_digital-Reserving-197.png", "Pages from Complete_notecards_digital-Reserving-199.png", "Pages from Complete_notecards_digital-Reserving-201.png", "Pages from Complete_notecards_digital-Reserving-203.png", "Pages from Complete_notecards_digital-Reserving-205.png", "Pages from Complete_notecards_digital-Reserving-207.png"]

        
        self.pageViewContrlloer = self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController") as! UIPageViewController
        
        self.pageViewContrlloer.dataSource = self
        
        var startVC = self.viewControllerAtIndext(0) as ContentViewController
        //var viewControllers: NSArray(objects: startVC)
        var viewControllers: NSArray = [startVC]
        
        self.pageViewContrlloer.setViewControllers(viewControllers as [AnyObject], direction: .Forward, animated: true, completion: nil)
        self.pageViewContrlloer.view.frame = CGRectMake(0, 30, self.view.frame.width, self.view.frame.height - 60)
        self.addChildViewController(self.pageViewContrlloer)
        self.view.addSubview(self.pageViewContrlloer.view)
        self.pageViewContrlloer.didMoveToParentViewController(self)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func viewControllerAtIndext(index: Int) -> ContentViewController{
        if ((self.pageTitles.count == 0 || index >= self.pageTitles.count)){
            return ContentViewController()
        }
        
        var vc: ContentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ContentViewController") as! ContentViewController
        vc.imageFile = self.pageQuestionImages[index] as String
        vc.titleText = self.pageTitles[index] as String
        vc.pageIndex = index
        
        return vc
    }
    
    // Mark: - page view controller data source
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var vc = viewController as! ContentViewController
        var index = vc.pageIndex as Int
        if (index == 0 || index == NSNotFound){
            return nil
        }
        index--
        return self.viewControllerAtIndext(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        var vc = viewController as! ContentViewController
        var index = vc.pageIndex as Int
        if (index == NSNotFound){
            return nil
        }
        index++
        
        if (index == self.pageTitles.count){
            return nil
        }
        return self.viewControllerAtIndext(index)
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return self.pageTitles.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
}

