//
//  ThirdVC.swift
//  progrmmaticUIKit
//
//  Created by DA MAC M1 160 on 2023/06/26.
//
import UIKit

class ThirdVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        
    }
    func setUp(){
        view.backgroundColor = .blue
        title = "ABOUT"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = true
    }
}

