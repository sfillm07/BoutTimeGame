//
//  WebViewViewController.swift
//  BoutTimeGame
//
//  Created by Sean Fillmore on 11/15/16.
//  Copyright © 2016 Sean Fillmore. All rights reserved.
//

import UIKit
import SafariServices

class WebViewViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var passedURL: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        launchWebView()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func launchWebView() {
        
        let webViewURL = URL(string: passedURL)
        let webURLRequest = URLRequest(url: webViewURL!)
        webView.loadRequest(webURLRequest)
        
    }
    
    @IBAction func doneButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
