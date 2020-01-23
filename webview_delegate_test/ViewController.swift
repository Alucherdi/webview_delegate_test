//
//  ViewController.swift
//  webview_delegate_test
//
//  Created by Alucherdi on 23/01/20.
//  Copyright © 2020 Alucherdi. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {
    var webView : WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.uiDelegate = self
        view = webView
        
        let url = URL(string: "https://public.undervolt.io/gyro.html")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

