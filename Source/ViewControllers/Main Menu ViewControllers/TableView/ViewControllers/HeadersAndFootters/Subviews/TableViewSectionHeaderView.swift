//
//  TableViewSectionHeaderView.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/02/2022.
//

import UIKit

class TableViewSectionHeaderView: UITableViewHeaderFooterView {
    
    @IBOutlet weak var embededContentView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        embedView()
    }
    
    //
    // Currently there is no way
    // to add subviews to UITableViewHeaderFooterView.contentView
    // in Interface Builder.
    //
    // Function embedView() is a work-arround of this issue.
    //
    func embedView() {
        guard let viewToEmbed = self.embededContentView else {
            return
        }
        
        viewToEmbed.removeFromSuperview()
        contentView.addSubview(viewToEmbed)
        
        viewToEmbed.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        viewToEmbed.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        viewToEmbed.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        viewToEmbed.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
}
