//
//  MessagesController.swift
//  kora
//
//  Created by José Pinto on 2020-07-21.
//

import UIKit

class MessagesController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }
    
    // MARK: - Helper functionsws
    func setUpUI() {
        view.backgroundColor = .white
        
        navigationItem.title = "Messages"
    }
}
