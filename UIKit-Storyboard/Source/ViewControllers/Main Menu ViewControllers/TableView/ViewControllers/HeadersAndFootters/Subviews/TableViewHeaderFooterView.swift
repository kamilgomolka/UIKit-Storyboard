//
//  TableViewHeaderFooterView.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 03/02/2022.
//

import UIKit

class TableViewHeaderFooterView: UIView {
    
    //
    // MARK: - Static functions
    //
    
    static func newHeaderView() -> TableViewHeaderFooterView {
        let view = newInstance()
        view.titleLabel?.text = "TableView Header"
        view.contentView?.backgroundColor = .systemYellow
        return view
    }
    
    static func newFooterView() -> TableViewHeaderFooterView {
        let view = newInstance()
        view.titleLabel?.text = "TableView Footer"
        view.contentView?.backgroundColor = .systemCyan
        return view
    }
    
    private static func newInstance() -> TableViewHeaderFooterView {
        return Bundle.main.loadNibNamed("TableViewHeaderFooterView", owner: nil, options: nil)?
            .first as! TableViewHeaderFooterView
    }
    
    //
    // MARK: - Properties
    //
    
    @IBOutlet weak var contentView: UIView?
    @IBOutlet weak var titleLabel: UILabel?
    
    //
    // The trick with overriding frame
    // is a fix to have properly working AutoLayout
    // in UItableView.tableHeaderView and tableFooterView.
    //
    // Otherwise the header/footer does not resize - it stays with the height from Xib.
    //
    override var frame: CGRect {
        get {
            return super.frame
        } set {
            var newFrame = newValue
			newFrame.size.height = currentHeight(width: newFrame.width)
            super.frame = newFrame
        }
    }
    
	func currentHeight(width: CGFloat) -> CGFloat {
		guard let contentView = contentView else {
			return 0.0
		}
		
		let size = contentView.systemLayoutSizeFitting(CGSize(width: width, height: .greatestFiniteMagnitude),
													   withHorizontalFittingPriority: .required,
													   verticalFittingPriority: .defaultLow)
		
		return size.height
    }
}
