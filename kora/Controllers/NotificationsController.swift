//
//  NotificationsController.swift
//  kora
//
//  Created by José Pinto on 2020-07-21.
//

import UIKit

class NotificationsController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    
    // MARK: - Helper functions
    func setUpUI() {
        view.backgroundColor = .white
        
        navigationItem.title = "Notifications"
    }
}
