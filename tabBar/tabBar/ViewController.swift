//
//  ViewController.swift
//  tabBar
//
//  Created by Engin Bolat on 6.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let tabItems = tabBarController?.tabBar.items{
            let favoritePage = tabItems[0]
            
            favoritePage.badgeColor = UIColor.purple
            favoritePage.badgeValue = "222"
            
            let appearance = UITabBarAppearance()
            
            appearance.backgroundColor = UIColor.brown
            
            tabBarController?.tabBar.standardAppearance = appearance
            tabBarController?.tabBar.scrollEdgeAppearance = appearance
            
        }
    }


}

