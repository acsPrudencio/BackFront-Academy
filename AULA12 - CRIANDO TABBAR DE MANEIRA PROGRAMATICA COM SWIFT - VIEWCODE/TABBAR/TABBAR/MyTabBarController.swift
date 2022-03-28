//
//  ViewController.swift
//  TABBAR
//
//  Created by Idwall Go Dev 014 on 27/03/22.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupTabBarController()
        
    }
    
    private func setupTabBarController(){
        let tela01 = UINavigationController(rootViewController: HomeViewController())
        let tela02 = UINavigationController(rootViewController: ConfigViewController())
        let tela03 = UINavigationController(rootViewController: ProfileViewController())
        let tela04 = UINavigationController(rootViewController: TrashViewController())
        
        self.setViewControllers([tela01, tela02, tela03, tela04], animated: false)
        self.tabBar.backgroundColor = .white
        self.tabBar.isTranslucent = false
        
        guard let items = tabBar.items else {return}

        items[0].title = "Favoritos"
        items[0].image = UIImage(systemName: "star")

        items[1].title = "Configurações"
        items[1].image = UIImage(systemName: "gear")

        items[2].title = "Perfil"
        items[2].image = UIImage(systemName: "person")

        items[3].title = "Lixo"
        items[3].image = UIImage(systemName: "trash")
    }


}


