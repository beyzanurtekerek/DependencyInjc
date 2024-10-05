//
//  ViewController.swift
//  SwiftDependencyInjc
//
//  Created by Beyza Nur Tekerek on 5.10.2024.
//

import UIKit
import Swinject

class ViewController: UIViewController {

    
    // swinject
    let container: Container = {
        let container = Container()
        // kayıt
        container.register(BgProvidingClass.self) { resolver in
            return BgProvidingClass()
        }
        container.register(AnotherVC.self) { resolver in
            let vc = AnotherVC(providerProtocol: resolver.resolve(BgProvidingClass.self))
            return vc
        }
        return container
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        view.backgroundColor = .systemMint
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        button.setTitle("Open Another VC", for: .normal)
        button.center = view.center
        button.addTarget(self, action: #selector (buttonClicked), for: .touchUpInside)
        view.addSubview(button)
        
        
        
    }
    
    @objc func buttonClicked() {
        
        if let viewController = container.resolve(AnotherVC.self) {
            present(viewController, animated: true)
        }
        
    }


}

