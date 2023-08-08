//
//  ViewController.swift
//  Project04
//
//  Created by Berkay Tuncel on 8.08.2023.
//

import UIKit
import WebKit

final class ViewController: UIViewController {

    private var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://hackingwithswift.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
}

extension ViewController: WKNavigationDelegate {
    
}
