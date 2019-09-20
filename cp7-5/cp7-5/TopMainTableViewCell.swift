//
//  TopMainTableViewCell.swift
//  cp7-5
//
//  Created by 酒井典昭 on 2019/09/17.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol TopMainTableViewCellDelegate: NSObjectProtocol{
    
}

extension TopMainTableViewCellDelegate {
    
}
// MARK: - Property
class TopMainTableViewCell: BaseTableViewCell {
    weak var delegate: TopMainTableViewCellDelegate? = nil
    @IBOutlet weak var UserIcon: UIImageView!
}

// MARK: - Life cycle
extension TopMainTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setIcon()
    }
}

// MARK: - Protocol
extension TopMainTableViewCell {
    
}

// MARK: - method
extension TopMainTableViewCell {
    func setIcon(){
        UserIcon.layer.cornerRadius = 25
        UserIcon.layer.masksToBounds = true
    }
    
}

