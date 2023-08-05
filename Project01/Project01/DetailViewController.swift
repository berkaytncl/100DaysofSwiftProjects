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
    var imagePosition: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = imagePosition
        navigationItem.largeTitleDisplayMode = .never
        
        if let image = selectedImage {
            imageView.image = UIImage(named: image)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
