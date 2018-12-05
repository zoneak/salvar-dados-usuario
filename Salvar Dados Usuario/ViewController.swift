//
//  ViewController.swift
//  Salvar Dados Usuario
//
//  Created by Adriano Kaito on 05/12/18.
//  Copyright © 2018 AK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.set("azul", forKey: "corFundo")
        if let texto = UserDefaults.standard.object(forKey: "corFundo") {
            print(texto)
        }
        
        let array: [String] = ["Pizza", "Sukiya", "Omuraisu"]
        UserDefaults.standard.set(array, forKey: "comidas")
        
        // Remove key
        UserDefaults.standard.removeObject(forKey: "comidas")
        if let arrayRecuperado = UserDefaults.standard.object(forKey: "comidas") {
            print(arrayRecuperado)
        }
    }


}

