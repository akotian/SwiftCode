//
//  ViewController.swift
//  TestQuizApp
//
//  Created by Ashley R Kotian on 12/9/15.
//  Copyright (c) 2015 Livingly Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let quizViewController = segue.destinationViewController as! SecondViewController
        quizViewController.game = segue.identifier!
    }


}

