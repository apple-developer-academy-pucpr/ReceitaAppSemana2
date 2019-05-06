//
//  Receita.swift
//  ReceitaApp
//
//  Created by APPLE DEVELOPER ACADEMY on 30/04/19.
//  Copyright © 2019 APPLE DEVELOPER ACADEMY. All rights reserved.
//

import Foundation
import UIKit

class Receita{
    internal init(nome: String, ingredientes: [String], quantidades: [Int], medida: [String],imagem:UIImage) {
        self.nome = nome
        self.ingredientes = ingredientes
        self.quantidades = quantidades
        self.medida = medida
        self.imagem = imagem
    }
    var nome:String
    var ingredientes:[String]
    var quantidades:[Int]
    var medida:[String]
    var imagem:UIImage
    
}
