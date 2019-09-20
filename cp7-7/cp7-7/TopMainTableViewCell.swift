//
//  TopMainTableViewCell.swift
//  cp7-7
//
//  Created by 酒井典昭 on 2019/09/20.
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
    @IBOutlet weak var userIcon: UIImageView!
}

// MARK: - Life cycle
extension TopMainTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setison()
    }
}

// MARK: - Protocol
extension TopMainTableViewCell {
    
}

// MARK: - method
extension TopMainTableViewCell {
    func setison(){
        userIcon.layer.cornerRadius = 25
        userIcon.layer.masksToBounds = true
    }
}

