//
//  ViewController.swift
//  ReceitaApp
//
//  Created by APPLE DEVELOPER ACADEMY on 23/04/19.
//  Copyright © 2019 APPLE DEVELOPER ACADEMY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func tapAction(_ sender: Any) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "receita") as? ReceitaViewController{
            vc.receitaSelecionada = 2
            self.navigationController?.show(vc, sender: self)
        }
    }
    
}

