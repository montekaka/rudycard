//
//  AnwerViewController.swift
//  RudyCard
//
//  Created by Jia Chen on 7/13/15.
//  Copyright (c) 2015 com.bruinSquare. All rights reserved.
//

import UIKit

class AnwerViewController: UIViewController {

    @IBOutlet var answerTitleLabel: UILabel!
    @IBAction func doneButtonAction(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    var answerTitle: String!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

}
