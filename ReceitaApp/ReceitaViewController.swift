//
//  ReceitaViewController.swift
//  ReceitaApp
//
//  Created by APPLE DEVELOPER ACADEMY on 30/04/19.
//  Copyright © 2019 APPLE DEVELOPER ACADEMY. All rights reserved.
//

import UIKit

class ReceitaViewController: UIViewController {

    @IBOutlet weak var receitaImageView: UIImageView!
    
    @IBOutlet weak var nomeLabel: UILabel!
    
    @IBOutlet weak var ingredientesTextView: UITextView!
    
    
    @IBOutlet weak var quantidadeLabel: UILabel!
    
    let receitas = [
        Receita(nome: "Café com leite", ingredientes: ["Café","Leite"], quantidades: [50,100], medida: ["ml","ml"],imagem: UIImage(named: "CafeComLeite")!),
        Receita(nome: "Nescau", ingredientes: ["Nescau","Leite"], quantidades: [2,200], medida: ["colheres","ml"],imagem: UIImage(named: "Nescau")!),
        Receita(nome: "Miojo", ingredientes: ["Miojo","Água","Tempero"], quantidades: [1,300,1], medida:["pacote","ml","pacote"],imagem: UIImage(named: "Miojo")!)
    ]
    var quantidade = 1
    var receitaSelecionada = 0
    
    func refreshInterface(){
        let receita = receitas[receitaSelecionada]
        
        receitaImageView.image = receita.imagem
        
        nomeLabel.text = receita.nome
        
        if quantidade == 1{
            quantidadeLabel.text = "1 porção"
        }else{
            quantidadeLabel.text = "\(quantidade) porções"
        }
        
        ingredientesTextView.text = ""
        for(indice,item) in receita.ingredientes.enumerated(){
     
            ingredientesTextView.text += "\(quantidade * receita.quantidades[indice]) "
            ingredientesTextView.text += "\(receita.medida[indice]) de "
            ingredientesTextView.text += "\(item) \n"

            
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        refreshInterface()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func stepperPressed(_ sender: UIStepper) {
        quantidade = Int(sender.value)
        refreshInterface()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
