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
        
        // Set navigation controllers
        let feedNavigationController = setNavigationController(rootViewController: feedController, image: UIImage(named: "home_unselected"))
        let explorerNavigationController = setNavigationController(rootViewController: explorerController, image: UIImage(named: "search_unselected"))
        let notificationsNavigationController = setNavigationController(rootViewController: notificationsController, image: UIImage(named: "like_unselected"))
        let messagesNavigationController = setNavigationController(rootViewController: messagesController, image: UIImage(named: "ic_mail_outline_white_2x-1"))
        
        // Add to the tab tar
        viewControllers = [feedNavigationController, explorerNavigationController, notificationsNavigationController, messagesNavigationController]
    }
    
    func setNavigationController(rootViewController: UIViewController, image: UIImage?) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: rootViewController)
        
        navigationController.tabBarItem.image = image
        navigationController.navigationBar.barTintColor = .white
        
        return navigationController
    }
}
