//
//  MainTabBarController.swift
//  kora
//
//  Created by José Pinto on 2020-07-21.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    // MARK: - Properties
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .blue
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        return button
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    
    // MARK: - Helper functions
    func setUpUI() {
        // Add subviews
        view.addSubview(actionButton)
        
        // Set constriants (autolayout)
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 56 / 2
        
        // configure controllers
        configureViewControllers()
    }
    
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
