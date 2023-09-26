//
//  ViewController.swift
//  Please
//
//  Created by erik-flores on 05/21/2020.
//  Copyright (c) 2020 erik-flores. All rights reserved.
//

import UIKit
import Please

class DemoView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ViewController: UIViewController {
    let demoView = DemoView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(demoView)
        demoView.constraint(equalTo: CGSize(width: 100, height: 200))
        demoView.centerInSuperview()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

