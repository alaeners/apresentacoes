//
//  FrasesView.swift
//  EMMT
//
//  Created by Alaene Rufino de Sousa on 06/03/20.
//  Copyright © 2020 Alaene Rufino de Sousa. All rights reserved.
//

import Foundation
import UIKit

class FrasesView: UIView {
    var stopButtonBlock: (() -> Void)?

    private var background: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = .blue
        image.image = UIImage.EMMT_Frases
        image.contentMode = .scaleAspectFill

        return image
    }()
    
    private var titulo: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "RECADO PARA MULHERES ROTULADAS:"
        label.font = .boldSystemFont(ofSize: 36)
        label.numberOfLines = 0
        label.textColor = .gray
        label.contentMode = .scaleToFill

        return label
    }()

    private var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .gray
        label.font = .boldSystemFont(ofSize: 32)

        return label
    }()

    private var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple
        button.layer.cornerRadius = 4
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("PARAR EXECUÇÃO!", for: .normal)
        button.widthAnchor.constraint(equalToConstant: 220).isActive = true
        button.heightAnchor.constraint(equalToConstant: 48).isActive = true

        button.addTarget(self, action: #selector(FrasesView.stopButton), for: .touchUpInside)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    @objc
    private func stopButton() {
        stopButtonBlock?()
    }

    func setText(text: String) {
        label.text = text
    }

    func setup(){
        buildViewHierarchy()
        addConstraints()
    }

    func buildViewHierarchy() {
        addSubview(background)
        addSubview(titulo)
        addSubview(label)
        addSubview(button)
    }

    func addConstraints() {
        background.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        background.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        background.topAnchor.constraint(equalTo: topAnchor).isActive = true
        background.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        titulo.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        titulo.topAnchor.constraint(equalTo: topAnchor, constant: 30).isActive = true
        titulo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10 ).isActive = true
        
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10 ).isActive = true

        button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40).isActive = true
        button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    }
}
