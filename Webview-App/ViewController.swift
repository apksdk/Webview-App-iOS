//
//  ViewController.swift
//  TestApp
//
//  Created by Owner on 13/11/20.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    @IBOutlet weak var browserWebview: WKWebView!

    var urlString = ""//"http://192.168.0.46:3000/"
    override func viewDidLoad() {
        super.viewDidLoad()
        let validString = urlString.hasPrefix("http") ? urlString : "https://\(urlString)"
        sendRequest(urlString: validString)
    }
    
    private func sendRequest(urlString: String) {
        if let myURL = URL(string: urlString) {
            let myRequest = URLRequest(url: myURL)
            browserWebview.load(myRequest)
        }
    }
}

