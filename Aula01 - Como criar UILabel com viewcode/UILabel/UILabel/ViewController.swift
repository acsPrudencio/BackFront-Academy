//
//  ViewController.swift
//  UILabel
//
//  Created by Idwall Go Dev 014 on 25/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Mussum Ipsum, cacilds vidis litro abertis. Diuretics paradis num copo é motivis de denguis.Detraxit consequat et quo num tendi nada.Vehicula non."
        label.font = UIFont.boldSystemFont(ofSize: 35)
        label.textAlignment = .center
        label.textColor = .orange
        label.backgroundColor = .systemGray5
        label.numberOfLines = 0
        label.layer.borderWidth = 1
        label.layer.cornerRadius = 10
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(self.nameLabel)
        self.configConstraints()
    }

    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.nameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.nameLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.nameLabel.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            self.nameLabel.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)
        ])
    }

}

