//
//  SecondViewController.swift
//  TestQuizApp
//
//  Created by Ashley R Kotian on 12/9/15.
//  Copyright (c) 2015 Livingly Media. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var myWebView: UIWebView!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    var game:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.delegate = self
        myWebView.scrollView.scrollEnabled = true
        myWebView.scalesPageToFit = true
        
        var rootDomain = "http://www.zimbio.com/"
        let myURL = NSURL(string: rootDomain + game )
        let myURLRequest:NSURLRequest = NSURLRequest(URL: myURL!)
        myWebView.loadRequest(myURLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webView: UIWebView){
        myActivityIndicator.startAnimating()
    }
    func webViewDidFinishLoad(webView: UIWebView) {
        myActivityIndicator.stopAnimating()
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
