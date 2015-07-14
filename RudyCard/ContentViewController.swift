//
//  ContentViewController.swift
//  RudyCard
//
//  Created by Jia Chen on 7/12/15.
//  Copyright (c) 2015 com.bruinSquare. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var pageIndex: Int!
    var titleText: String!
    var imageFile: String!
    var answerTitle: String!
    var answerText: String!
    
    @IBAction func answerButtonAction(sender: AnyObject) {
        println("this is \(self.pageIndex)")
        var answerViewController = AnwerViewController(nibName:"AnwerViewController", bundle:nil)
        self.presentViewController(answerViewController, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.imageView.image = UIImage(named: self.imageFile)
        self.titleLabel.text = self.titleText
        
        if UIDevice.currentDevice().orientation.isLandscape.boolValue {
            println("landscape")
            self.imageView.contentMode = UIViewContentMode.ScaleAspectFill
            self.navigationController?.navigationBarHidden = true
            //self.tabBarController?.tabBar.hidden = true
        } else {
            println("portraight")
            self.imageView.contentMode = UIViewContentMode.ScaleAspectFit
            self.navigationController?.navigationBarHidden = false
            //self.tabBarController?.tabBar.hidden = false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func viewWillTransitionToSize(size: CGSize, withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
        if UIDevice.currentDevice().orientation.isLandscape.boolValue {
            println("landscape")
            self.imageView.contentMode = UIViewContentMode.ScaleAspectFill
            self.navigationController?.navigationBarHidden = true
            //self.tabBarController?.tabBar.hidden = true
        } else {
            println("portraight")
            self.imageView.contentMode = UIViewContentMode.ScaleAspectFit
            self.navigationController?.navigationBarHidden = false
            //self.tabBarController?.tabBar.hidden = false
        }
    }

}
