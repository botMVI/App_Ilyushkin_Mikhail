//
//  DesignedLogoFriend.swift
//  App_Ilyushkin_Mikhail
//
//  Created by Michael Iliouchkin on 10.09.2020.
//  Copyright © 2020 Michael Iliouchkin. All rights reserved.
//

import UIKit

class CircleImage: UIImageView {

    @IBOutlet weak var circleImages: UIImageView!

    func designedLogoFriend() {
        
        let circleImages = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            circleImage.layer.borderWidth = 2
            circleImage.layer.borderColor = UIColor.red.cgColor
            circleImage.layer.cornerRadius = 16

            testView.layer.shadowColor = UIColor.black.cgColor
            testView.layer.shadowOpacity = 0.5
            testView.layer.shadowRadius = 8
            testView.layer.shadowOffset = CGSize.zero
    }
}
