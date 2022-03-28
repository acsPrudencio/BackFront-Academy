//
//  CustomCollectionViewCell.swift
//  UICOLLECTIONVIEW
//
//  Created by Idwall Go Dev 014 on 27/03/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "CustomCollectionViewCell"
    
    lazy var photo: UIImageView = {
        let photo = UIImageView()
        photo.image = UIImage(systemName: "person")
        photo.contentMode = .scaleAspectFit
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.contentView.addSubview(self.photo)
        self.backgroundColor = .lightGray
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.photo.topAnchor.constraint(equalTo: self.topAnchor),
            self.photo.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.photo.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.photo.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
}
