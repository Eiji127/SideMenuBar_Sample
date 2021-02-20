//
//  SetttingsController.swift
//  SideMenuBar
//
//  Created by 白数叡司 on 2021/02/20.
//

import UIKit

class SettingsController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Selectors
    
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        
        view.backgroundColor = .white
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Settings"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(handleDismiss))
        
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithDefaultBackground()
            appearance.backgroundColor = .darkGray
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.label]
            appearance.titleTextAttributes = [.foregroundColor: UIColor.label]
            // Large Title 用 NavigationBar の色設定
            self.navigationController?.navigationBar.scrollEdgeAppearance = appearance
            // 通常の NavigationBar の色設定
            self.navigationController?.navigationBar.standardAppearance = appearance
        } else {
            // iOS 13 未満はこれまで通り
            self.navigationController?.navigationBar.barTintColor = .darkGray
        }
    }
}
