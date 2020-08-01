//
//  PicSquareView.swift
//  Instagrid
//
//  Created by Benjamin Breton on 31/07/2020.
//  Copyright © 2020 InstaApps. All rights reserved.
//

import UIKit

class PicSquareView: UIButton {
    /// Change picSquare regarding selected layout and picture.
    func setView(_ picSquare: PicSquare) {
        isHidden = picSquare.isHidden
        isSelected = false
    }

    
    /// Change picSquare's image regarding selected picture.
    func setImage(_ data: Data?) {
        if let verifiedData = data {
            if let verifiedImage = UIImage(data: verifiedData) {
                imageView?.contentMode = .scaleAspectFill
                setImage(verifiedImage, for: .normal)
            } else {
                imagePlus()
            }
        } else {
            imagePlus()
        }
        isSelected = false
    }
    private func imagePlus() {
        imageView?.contentMode = .center
        let image = UIImage(imageLiteralResourceName: "Plus")
        setImage(image, for: .normal)
    }
}
