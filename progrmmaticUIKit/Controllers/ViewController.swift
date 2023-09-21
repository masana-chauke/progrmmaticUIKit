//
//  ViewController.swift
//  progrmmaticUIKit
//
//  Created by DA MAC M1 160 on 2023/06/26.
//

import UIKit

class ViewController: UIViewController {
    
    private let button: UIButton = {
        
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 55))
        button.setTitle("Navigate", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        
    }
    func setUp(){
        view.backgroundColor = .systemBrown
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
    }
    @objc func buttonTapped(){
        
        let tabBarVC = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: FirstViewController())
        let vc2 = UINavigationController(rootViewController:SecondViewController())
        let vc3 = UINavigationController(rootViewController:ThirdVC())
        let vc4 = UINavigationController(rootViewController:FourthViewController())
        let vc5 = UINavigationController(rootViewController:FifthVC())
        
        vc1.title = "HOME"
        vc2.title = "CONTACT"
        vc3.title =  "ABOUT"
        vc4.title = "HELP"
        vc5.title = "SETTINGS"
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        
        guard let items = tabBarVC.tabBar.items else { return }
        
        let images = ["house", "bell", "person.circle", "star", "gear"]
        
        for x in 0..<items.count {
            items[4].badgeValue = "3"
            items[x].image = UIImage(systemName: images[x])
        }
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true, completion: nil)
    }
}

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        title = "HOME"
    }
}

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "CONTACT"
    }
}
