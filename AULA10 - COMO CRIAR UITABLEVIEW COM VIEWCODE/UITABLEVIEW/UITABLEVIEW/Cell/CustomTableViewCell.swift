//
//  CustomTableViewCell.swift
//  UITABLEVIEW
//
//  Created by Idwall Go Dev 014 on 27/03/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier: String = "CustomTableViewCell"
    
    let photoView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(systemName: "person")
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(self.photoView)
        self.backgroundColor = .white
        
        configConstraints()
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.photoView.topAnchor.constraint(equalTo: self.topAnchor),
            self.photoView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.photoView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.photoView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
