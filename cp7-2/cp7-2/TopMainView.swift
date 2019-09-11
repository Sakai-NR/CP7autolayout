//
//  TopMainView.swift
//  cp7-2
//
//  Created by 酒井典昭 on 2019/09/11.
//  Copyright © 2019 典昭酒井. All rights reserved.
//

import UIKit
import PGFramework


protocol TopMainViewDelegate: NSObjectProtocol{
    
}

extension TopMainViewDelegate {
    
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBOutlet weak var tableView: UITableView!
}

// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.dataSource = self
        loadTableViewCellFromXib(tableView: tableView, cellName: "TopMainTavbleViewCell")
    }
}

// MARK: - Protocol
extension TopMainView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: TopMainTavbleViewCell = tableView.dequeueReusableCell(withIdentifier: "TopMainTavbleViewCell", for: indexPath)as? TopMainTavbleViewCell else {return UITableViewCell() }
        return cell
    }
    
    
}

// MARK: - method
extension TopMainView {
    
}

