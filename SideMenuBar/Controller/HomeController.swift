//
//  HomeController.swift
//  SideMenuBar
//
//  Created by 白数叡司 on 2021/02/20.
//

import UIKit

class HomeController: UIViewController {
    // MARK: - Properties
    
    var delegate: HomeControllerDelegate?
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    // MARK: - Handlers
    
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
}
