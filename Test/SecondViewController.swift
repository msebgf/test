//
//  SecondViewController.swift
//  Test
//
//  Created by Sebastian Guerrero F on 10/8/18.
//  Copyright © 2018 SG. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController, WKNavigationDelegate {

  @IBOutlet weak var googleWebView: WKWebView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    googleWebView.navigationDelegate = self
    
    let url = URL(string: "https://google.com")
    googleWebView.load(URLRequest(url: url!))
  }
}

