//
//  ViewController.swift
//  Project01
//
//  Created by Berkay Tuncel on 4.08.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    private var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
    }
}

