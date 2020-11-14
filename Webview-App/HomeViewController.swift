//
//  HomeViewController.swift
//  TestApp
//
//  Created by Owner on 13/11/20.
//

import UIKit
import WebKit

class HomeViewController: UIViewController {
    @IBOutlet weak var urlLocationTF: UITextField!
    @IBOutlet weak var openBtn: UIButton!
    @IBOutlet weak var httpProtocolSW: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.destination is ViewController
        {
            let vc = segue.destination as? ViewController
            let urlString = urlLocationTF.text!
            let httpProtocol = httpProtocolSW.isOn ? "https" : "http"
            let validURLString = urlString.hasPrefix("http") ? urlString : "\(httpProtocol)://\(urlString)"
            vc?.urlString = validURLString
        }
    }
}

