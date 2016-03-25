//
//  CardsViewController.swift
//  TinderLab
//
//  Created by Juan Hernandez on 3/24/16.
//  Copyright © 2016 ccsf. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {
    
   
    @IBOutlet weak var ryanImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let myPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: "myPanAction:")
        
        myPanGestureRecognizer.minimumNumberOfTouches = 1
        myPanGestureRecognizer.maximumNumberOfTouches = 1
        
        ryanImageView.addGestureRecognizer(myPanGestureRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func myPanAction(recognizer: UIPanGestureRecognizer) {
        if ((recognizer.state != UIGestureRecognizerState.Ended) &&
            (recognizer.state != UIGestureRecognizerState.Failed)) {
            recognizer.view?.center = recognizer.locationInView(recognizer.view?.superview)
        }
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
