//
//  ProfileTypesHopeTableViewCell.swift
//  wlHope
//
//  Created by Fuze on 13/05/22.
//

import UIKit

extension UIColor {
    convenience init(r: Int, g: Int , b: Int , alpha: CGFloat) {
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: alpha)
    }
}

class ProfileTypesTableViewCell: UITableViewCell {

    @IBOutlet weak var userTypeDescription: UILabel!
    @IBOutlet weak var userTypeImage: UIImageView!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var userTypeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupElements()
    }

    func setupElements() {
        self.containerView.layer.borderWidth = 2
        self.containerView.layer.cornerRadius = 13.0
        userTypeImage.layer.cornerRadius = 10
        userTypeImage.clipsToBounds = true
        #if HOPE
        self.containerView.layer.borderColor = UIColor(r: 223, g: 226, b: 232, alpha: 1).cgColor
        #endif
    }
    
    func setupOption(option: Option) {
        userTypeImage.image = option.isSelected ? option.imageSelected : option.imageNotSelected
        userTypeLabel.text = option.title
        userTypeDescription.text = option.description
        
        #if HOPE
        if option.isSelected {
            self.containerView.backgroundColor = UIColor(r: 69, g: 7, b: 161, alpha: 1)
            userTypeDescription.textColor = UIColor(r: 223, g: 226, b: 232, alpha: 1)
            userTypeLabel.textColor = UIColor.white
        } else {
            self.containerView.backgroundColor = UIColor.white
            userTypeDescription.textColor = UIColor(r: 102, g: 102, b: 102, alpha: 1)
            userTypeLabel.textColor = UIColor(r: 69, g: 7, b: 161, alpha: 1)
        }
        #else
        if option.isSelected {
            self.containerView.backgroundColor = UIColor.black
            userTypeDescription.textColor = UIColor(r: 255, g: 255, b: 88, alpha: 1)
            userTypeLabel.textColor = UIColor(r: 255, g: 255, b: 88, alpha: 1)
            self.containerView.layer.borderColor = UIColor.white.cgColor
        } else {
            self.containerView.backgroundColor = UIColor.white
            userTypeDescription.textColor = UIColor.black
            userTypeLabel.textColor = UIColor.black
            self.containerView.layer.borderColor = UIColor.black.cgColor
        }
        #endif
    }
    
}
