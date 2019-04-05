//
//  TableViewDataSource.swift
//  LoginAcazia
//
//  Created by Home on 4/4/19.
//  Copyright © 2019 Home. All rights reserved.
//

import Foundation
import UIKit

extension LoginViewController {
    
    fileprivate func spacingHeight() -> CGFloat {
        var totalHeight: CGFloat = 0.0
        
        for cell in cells {
            totalHeight += cell.bounds.height
        }
        let screenHeight = UIScreen.main.bounds.height
        if (screenHeight < totalHeight) {
            return 0
        }
        let spacing = (screenHeight - totalHeight) / 2
        return spacing
    }
    
    //MARK - TableViewDataSource
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return spacingHeight()
        }
        return UITableView.automaticDimension
    }
    
    //khi click vao cell khac thi no hien may giay xong no an
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        self.view.endEditing(true)
    }
}
