//
//  ViewController.swift
//  COMO CRIAR UIBUTTON VIEWCODE COMO CRIAR UIBUTTON VIEWCODE COMO CRIAR UIBUTTON VIEWCODE UIBUTTON
//
//  Created by Idwall Go Dev 014 on 25/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Clique aqui", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        button.setTitleColor(.white, for: .normal)
        button.layer.borderColor = UIColor.orange.cgColor
        button.layer.borderWidth = 4
        button.layer.backgroundColor = UIColor.orange.cgColor
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(self.tapButton(sender:)), for: .touchUpInside)
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(button)
        self.configConstraints()
    }

    @objc private func tapButton(sender: UIButton){
        print("Clicou")
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            self.button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)
        ])
    }

}

