//
//  ViewController.swift
//  SWITCH
//
//  Created by Idwall Go Dev 014 on 25/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var checkSwitch: UISwitch = {
        let switchProp = UISwitch()
        switchProp.translatesAutoresizingMaskIntoConstraints = false
        // Permite setar um estado inicial para a propriedade
        switchProp.isOn = true
        switchProp.onTintColor = .orange
        switchProp.addTarget(self, action: #selector(self.tappedCheckSwitch(sender:)), for: .touchUpInside)
//        switchProp.backgroundColor = .black
        return switchProp
    }()
    
    
    @objc func tappedCheckSwitch(sender: UISwitch){
        print("state: \(sender.isOn)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(self.checkSwitch)
        configConstraints()
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.checkSwitch.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.checkSwitch.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }


}

