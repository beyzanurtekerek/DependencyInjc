//
//  AnotherVC.swift
//  SwiftDependencyInjc
//
//  Created by Beyza Nur Tekerek on 5.10.2024.
//

import Foundation
import UIKit

class AnotherVC : UIViewController {
    
    private let providerProtocol : BgColorProviderProtocol?
    
    init(providerProtocol : BgColorProviderProtocol?) {
        self.providerProtocol = providerProtocol
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = providerProtocol?.backgroundColor ?? .white
         
    }
    
    
}
