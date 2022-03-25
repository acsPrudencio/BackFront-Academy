//
//  ViewController.swift
//  SLIDER
//
//  Created by Idwall Go Dev 014 on 25/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var slider: UISlider = {
        let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.value = 0.0
        slider.tintColor = .orange
        slider.addTarget(self, action: #selector(actionSlider), for: .allEvents)
        return slider
    }()
    
    @objc func actionSlider(_ sender: UISlider){
        print(sender.value)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(self.slider)
        configConstrants()
    }

    private func configConstrants(){
        NSLayoutConstraint.activate([
            self.slider.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.slider.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.slider.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            self.slider.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)
        ])
    }
}

