//
//  ViewController.swift
//  ManagerDependencyAlamonfire
//
//  Created by COTEMIG on 07/10/24.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var reloadButton: UIButton!
    
    let dogService = DogService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reloadDogPicture(_ sender: Any) {
        
        dogService.fetch { [weak self] dog in
            guard let dog = dog else { return }
            
            self?.imageView.kf.setImage(with: URL(string: dog.message))
        }
        
    }
    
    


}

