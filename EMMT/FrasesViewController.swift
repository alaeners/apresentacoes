//
//  FrasesViewController.swift
//  EMMT
//
//  Created by Alaene Rufino de Sousa on 06/03/20.
//  Copyright © 2020 Alaene Rufino de Sousa. All rights reserved.
//

import Foundation
import UIKit

class FrasesViewController: UIViewController {
    let frases = ["😇 AGRESSIVA? \nContinue falando o que pensa",
                  "🥰 BLOGUEIRINHA? \nContinue aparecendo",
                  "🤪 MANDONA? \nContinue liderando",
                  "🥳 ESPAÇOSA? \nContinue ocupando",
                  "😎 ESQUISITA? \nContinue sendo autêntica",
                  "😤 DIFICIL? \nContinue falando a verdade",
                  "😂 FRACA? \nContinue chorando",
                  "😇 DEVAGAR OU ACELERADA? \nContinue no seu tempo",
                  "🥰 ANSIOSA OU AGRESSIVA? \nContinue sendo assertiva",
                  "🤪 SENSIVEL? \nContinue sendo carinhosa",
                  "🥳 HIPPIE? \nContinue com sua flor no cabelo",
                  "😎 MADAME? \nContinue usando terninho",
                  "😂 CRIADORA DE CLIMAO? \nContinue fazendo perguntas difíceis e desconfortáveis",
                  "😤 PERDIDA? \nSIGA a sua jornada e não se importe com os demais!"]

    private var contentView: FrasesView = {
        let view = FrasesView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    init(contentView: FrasesView?) {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
        startTimer()
    }

    private func setup() {
        contentSetup()
    }

    private func contentSetup() {
        view.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        contentView.stopButtonBlock = { [weak self] in
            self?.stopButton()
        }
    }

    @objc private func frasesAleatrorias() {
        let text = frases.randomElement()!
        contentView.setText(text: text)
    }

    private func stopButton() {
        navigationController?.popToRootViewController(animated: true)
    }

    private func startTimer() {
        Timer.scheduledTimer(timeInterval: 2,
                             target: self,
                             selector: #selector(frasesAleatrorias),
                             userInfo: nil,
                             repeats: true)
    }
}
