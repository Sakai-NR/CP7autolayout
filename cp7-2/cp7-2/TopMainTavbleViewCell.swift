//
//  TopMainTavbleViewCell.swift
//  cp7-2
//
//  Created by 酒井典昭 on 2019/09/11.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol TopMainTavbleViewCellDelegate: NSObjectProtocol{
    
}

extension TopMainTavbleViewCellDelegate {
    
}
// MARK: - Property
class TopMainTavbleViewCell: BaseTableViewCell {
    weak var delegate: TopMainTavbleViewCellDelegate? = nil
    @IBOutlet weak var userIcon: UIImageView!
}

// MARK: - Life cycle
extension TopMainTavbleViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setIcon()
    }
}

// MARK: - Protocol
extension TopMainTavbleViewCell {
    
}

// MARK: - method
extension TopMainTavbleViewCell {
    func setIcon(){
        userIcon.layer.cornerRadius = 25
        userIcon.layer.masksToBounds = true
    }
    
}

