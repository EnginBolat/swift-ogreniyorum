//
//  ViewController.swift
//  webview
//
//  Created by Engin Bolat on 29.08.2023.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webViewObject: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string:"https://flutter.dev/")!
        webViewObject.load(URLRequest(url: url))
    }
}

