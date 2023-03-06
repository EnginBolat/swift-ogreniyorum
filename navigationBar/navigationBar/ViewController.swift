//
//  ViewController.swift
//  navigationBar
//
//  Created by Engin Bolat on 6.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.prompt = "Merhaba"
        self.navigationItem.title = "Dünya"
        // self.navigationItem.largeTitleDisplayMode = .always
        // self.navigationItem.largeTitleDisplayMode = .automatic
        // self.navigationItem.largeTitleDisplayMode = .never
        
        // let resim = UIImage(named: "navBarResim")
        
        // self.navigationItem.titleView = UIImageView(image: resim)
        
        let app = UINavigationBarAppearance()
        app.backgroundColor = UIColor.red
        // app.largeTitleTextAttributes = [.foregroundColor = UIColor.systemRed]
        
        navigationController?.navigationBar.standardAppearance = app
        navigationController?.navigationBar.compactAppearance = app
        navigationController?.navigationBar.scrollEdgeAppearance = app
    }


}

