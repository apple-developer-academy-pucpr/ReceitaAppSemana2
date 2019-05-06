//
//  FavoritosViewController.swift
//  ReceitaApp
//
//  Created by APPLE DEVELOPER ACADEMY on 30/04/19.
//  Copyright © 2019 APPLE DEVELOPER ACADEMY. All rights reserved.
//

import UIKit

class FavoritosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let tag = (sender as? UIView)?.tag{
            if let vc = segue.destination as? ReceitaViewController{
                vc.receitaSelecionada = tag
            }
        }
    
    }
    

}
