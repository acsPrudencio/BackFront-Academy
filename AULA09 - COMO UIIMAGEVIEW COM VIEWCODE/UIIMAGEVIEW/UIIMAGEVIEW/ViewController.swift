//
//  ViewController.swift
//  UIIMAGEVIEW
//
//  Created by Idwall Go Dev 014 on 27/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var photo: UIImageView = {
        let photo = UIImageView()
        photo.translatesAutoresizingMaskIntoConstraints = false
        photo.image = UIImage(systemName: "person")
        photo.contentMode = .scaleAspectFit
        return photo
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
        self.view.addSubview(self.photo)
        configContraints()
    }
    
    private func configContraints(){
        NSLayoutConstraint.activate([
            self.photo.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.photo.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.photo.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            self.photo.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            self.photo.heightAnchor.constraint(equalToConstant: 200)
        ])
    }



}

