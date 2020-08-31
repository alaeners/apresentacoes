//
//  View.swift
//  EMMT
//
//  Created by Alaene Rufino de Sousa on 05/03/20.
//  Copyright © 2020 Alaene Rufino de Sousa. All rights reserved.
//

import Foundation
import UIKit

class View: UIView {
    private var image: UIImageView = {
        let image = UIImageView()
        image.image = .logoInter
        return image
    }()

    private var label: UILabel = {
        let label = UILabel()
        label.text = "eu sou um label criado por viewcode"
        label.textAlignment = .center
        label.textColor = .orange
        return label
    }()

    private var button: UIButton = {
        let button = UIButton()
        button.text = "Botão c/ viewcode"
        button.backgroundColor = .red
        return button
    }()
}
