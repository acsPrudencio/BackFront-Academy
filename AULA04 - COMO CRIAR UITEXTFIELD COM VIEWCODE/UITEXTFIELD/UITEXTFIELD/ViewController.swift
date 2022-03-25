//
//  ViewController.swift
//  UITEXTFIELD
//
//  Created by Idwall Go Dev 014 on 25/03/22.
//

import UIKit

class ViewController: UIViewController {

    lazy var textField: UITextField = {
        let textFiled = UITextField(frame: .zero)
        textFiled.translatesAutoresizingMaskIntoConstraints = false
        textFiled.keyboardType = .emailAddress
        textFiled.placeholder = "Digite aqui seu e-mail:"
        textFiled.borderStyle = .roundedRect
        textFiled.font = UIFont.systemFont(ofSize: 16)
        textFiled.textAlignment = .center
        return textFiled
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(self.textField)
        configConstraints()
    }

    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.textField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.textField.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.textField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            self.textField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)
        ])
    }
}

