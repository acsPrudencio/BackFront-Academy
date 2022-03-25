//
//  ViewController.swift
//  UIStepper
//
//  Created by Idwall Go Dev 014 on 25/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.translatesAutoresizingMaskIntoConstraints = false
        stepper.value = 0
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.backgroundColor = .orange
        stepper.layer.cornerRadius = 10
        stepper.addTarget(self, action: #selector(self.actionStepper(_:)), for: .touchUpInside)
        return stepper
    }()
    
    @objc func actionStepper(_ sender: UIStepper){
        print("Stepper value: \(sender.value)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(self.stepper)
        configConstraints()
    }

    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.stepper.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.stepper.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
    }

}

