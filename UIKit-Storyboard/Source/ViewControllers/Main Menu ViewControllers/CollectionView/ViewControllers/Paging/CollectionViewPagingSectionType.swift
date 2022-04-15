//
//  CollectionViewPagingSectionType.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 10/02/2022.
//

import UIKit

enum CollectionViewPagingSectionType: Int, CaseIterable {
    case groupPaging
    case groupPagingCentered
    case continuous
    case continuousGroupLeadingBoundary
    case paging
    
	var orthogonalScrollingBehavior: UICollectionLayoutSectionOrthogonalScrollingBehavior {
        switch self {
        case .groupPaging:
            return UICollectionLayoutSectionOrthogonalScrollingBehavior.groupPaging
        case .groupPagingCentered:
            return UICollectionLayoutSectionOrthogonalScrollingBehavior.groupPagingCentered
        case .continuous:
            return UICollectionLayoutSectionOrthogonalScrollingBehavior.continuous
        case .continuousGroupLeadingBoundary:
            return UICollectionLayoutSectionOrthogonalScrollingBehavior.continuousGroupLeadingBoundary
        case .paging:
            return UICollectionLayoutSectionOrthogonalScrollingBehavior.paging
        }
    }
}
