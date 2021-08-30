//
//  ViewController.swift
//  Crazy Counter
//
//  Created by Владимир Костин on 28.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let startButton = UIButton(type: .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.navigationItem.title = "Мульти Таймер"
        
        startButton.frame = CGRect(x: 24, y: 160, width: UIScreen.sWidth - 48, height: 50)
        startButton.setTitle("Добавить", for: .normal)
        startButton.setTitleColor(.blue, for: .normal)
        startButton.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
        startButton.layer.cornerRadius = 8
        startButton.layer.borderWidth = 1.0
        startButton.layer.borderColor = CGColor.init(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0)
        startButton.addTarget(startButton, action: #selector(start(_:)), for: .touchUpInside)
        self.view.addSubview(startButton)

    }
    
    @objc func start(_ sender: UIButton?) {
        print("Button pressed")
    }
    
}



extension UIScreen {
    static let sWidth = UIScreen.main.bounds.size.width
    static let sHeight = UIScreen.main.bounds.size.height
}
