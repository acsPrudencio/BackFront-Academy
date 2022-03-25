//
//  ViewController.swift
//  UIPROGRESSVIEW
//
//  Created by Idwall Go Dev 014 on 25/03/22.
//

import UIKit

class ViewController: UIViewController {

    lazy var progressView: UIProgressView = {
        let progressView = UIProgressView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        let totalCountProgress = Progress(totalUnitCount: 100)
        totalCountProgress.completedUnitCount = 50
        progressView.progress = Float(totalCountProgress.fractionCompleted)
        progressView.tintColor = .orange
        return progressView
    }()
    
    override func viewDidLoad() {
        self.view.backgroundColor = .white
        super.viewDidLoad()
        self.view.addSubview(progressView)
        configConstraints()
        
        
    }

    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.progressView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.progressView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.progressView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            self.progressView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)
        ])
    }

}

