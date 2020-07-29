//
//  FeedController.swift
//  kora
//
//  Created by José Pinto on 2020-07-21.
//

import UIKit

class FeedController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    
    // MARK: - Helper functions
    func setUpUI() {
        view.backgroundColor = .white
        
        setUpLogo()
    }
    
    func setUpLogo() {
        let imageView = UIImageView(image: UIImage(named: "twitter_logo_blue"))
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
}
