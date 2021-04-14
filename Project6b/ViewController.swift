//
//  ViewController.swift
//  Project6b
//
//  Created by Edson Neto on 13/04/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel() //UILabel mostra texto estatico na tela
        label1.translatesAutoresizingMaskIntoConstraints = false //diz que os autolayouts serão feitos na mão
        label1.backgroundColor = .red //cor do fundo do label
        label1.text = "THESE" //conteúdo do label
        label1.sizeToFit() //olha o tamanho requirido pelo texto e só ocupa aquilo
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = .cyan
        label2.text = "ARE"
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = .yellow
        label3.text = "SOME"
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = .green
        label4.text = "AWESOME"
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = .orange
        label5.text = "LABELS"
        label5.sizeToFit()
        
        view.addSubview(label1) //adiciona o subview label no nosso main view
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        //sem constraints os labels ficam no canto esquerdo superior, um em cima do outro
    }

    

}

