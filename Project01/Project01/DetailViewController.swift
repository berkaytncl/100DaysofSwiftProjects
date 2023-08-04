//
//  DetailViewController.swift
//  Project01
//
//  Created by Berkay Tuncel on 4.08.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let image = selectedImage {
            imageView.image = UIImage(named: image)
        }
    }
}
