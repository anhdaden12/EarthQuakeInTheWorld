//
//  WebViewController.swift
//  EarthQuakeInTheWorld
//
//  Created by Ngoc on 7/26/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    @IBOutlet weak var myWebView: WKWebView!
    
    var urlString = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.addSubview(myWebView)
        if let url = URL(string: urlString) {
            myWebView.load(URLRequest(url: url))
        }
    }
}
