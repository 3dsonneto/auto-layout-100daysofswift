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
        
        //sem constraints os labels ficam no canto esquerdo superior, um em cima do outro.
        
        let viewsDictionary = [
            "label1": label1,
            "label2": label2,
            "label3": label3,
            "label4": label4,
            "label5": label5
        ]
        
        for label in viewsDictionary.keys{
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
            //view = main view
            //addConstraints: adiciona um array de constraints ao nosso view
            //NSLayoutConstraint.constraints: converte vfls para um array de constraints
            //o vfl descreve como queremos nosso layout, H(Horizontal Layout), | = borda da view, [label] = coloque o labelx aqui,
            //usamos o dicionario para poder usar o string e em views diz de onde está vindo
        }
        
        let metrics = ["labelHeight": 88]

        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))
        //==88 height altura exatamente 88, -(>=10)- espaço perto do fim maior ou igual a 10
        //@999 prioridade não é requerida, mas é necessaria(ele não precisa colocar a altura exatamente naquele valor, pode adaptar para caber)
        //(label1) deixa na mesma altura do primeiro label
    }

    

}

