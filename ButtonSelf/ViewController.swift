//
//  ViewController.swift
//  ButtonSelf
//
//  Created by David Hultgren on 2016-03-15.
//  Copyright © 2016 ThePainSquad. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var btn1:UIButtonTouched?
    @IBOutlet weak var btn2:UIButtonTouched?
    @IBOutlet weak var btn3: UIButtonTouched?
   
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1?.enabledState = false
        btn2?.enabledState = false
        btn3?.enabledState = false
       
        // Do any additional setup after loading the view, typically from a nib.
        //make multi touch avalible
       
        // Double tap
//        let doubleTapRecognizer = UITapGestureRecognizer(target: self, action: "onClick:")
//        doubleTapRecognizer.numberOfTapsRequired = 1
//        doubleTapRecognizer.numberOfTouchesRequired = 1
//        btn1?.addGestureRecognizer(doubleTapRecognizer)
//        btn2?.addGestureRecognizer(doubleTapRecognizer)

        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        saveButtonStates()
    }
    
    private func saveButtonStates() {
        if btn1 != nil {
            NSUserDefaults.standardUserDefaults().setBool(btn1!.enabledState, forKey: "Rash")
        }
        if btn2 != nil {
            NSUserDefaults.standardUserDefaults().setBool(btn2!.enabledState, forKey: "Pain")
        }
        if btn3 != nil {
            NSUserDefaults.standardUserDefaults().setBool(btn2!.enabledState, forKey: "Rush")
        }
        

    }
    
    // seque - prepera for segue
    //nsuser default its    safe value for boolean
    
    
//    func onClick(recognizer: UITapGestureRecognizer) {
//        print("HEJ")
//        btn1!.onTap(recognizer)
//        btn2?.onTap(recognizer)
//        
//    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
 
    
    
    

}

