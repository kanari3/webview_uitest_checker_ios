//
//  ViewController.swift
//  webview_uitest_checker_ios
//
//  Created by kanari3 on 2020/08/19.
//  Copyright © 2020 kanari3. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let html = Bundle.main.path(forResource: "WebViewSource", ofType: "html") {
            let url = URL(fileURLWithPath: html)
            let request = URLRequest(url: url)
            webView.load(request)
        }


    }


}

