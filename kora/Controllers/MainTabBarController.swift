//
//  MainTabBarController.swift
//  kora
//
//  Created by José Pinto on 2020-07-21.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        configureViewControllers()
    }
    
    // MARK: - Helper functions
    func configureViewControllers() {
        let feedController = FeedController()
        let explorerController = ExplorerController()
        let notificationsController = NotificationsController()
        let messagesController = MessagesController()
        
        // Set icons
        feedController.tabBarItem.image = UIImage(named: "home_unselected")
        explorerController.tabBarItem.image = UIImage(named: "search_unselected")
        notificationsController.tabBarItem.image = UIImage(named: "home_unselected")
        messagesController.tabBarItem.image = UIImage(named: "home_unselected")
        
        // Add to the tab tar
        viewControllers = [feedController, explorerController, notificationsController, messagesController]
    }
}
