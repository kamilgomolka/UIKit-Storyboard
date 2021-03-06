//
//  CollectionViewBadgeViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 10/02/2022.
//

import UIKit

class CollectionViewBadgeViewController: UIViewController {
    
    // MARK: - Properties
    
    let margin: CGFloat = 8.0
    let badgeElementKind = "badgeElementKind"
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()		
		
		setupCollectionView()
	}
	
	func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UINib(nibName: BigNumberCollectionViewCell.nibName, bundle: nil),
                                forCellWithReuseIdentifier: BigNumberCollectionViewCell.nibName)
        
        collectionView.register(UINib(nibName: CollectionBadgeView.nibName, bundle: nil),
                                forSupplementaryViewOfKind: badgeElementKind,
                                withReuseIdentifier: CollectionBadgeView.nibName)
        
        collectionView.collectionViewLayout = createLayout()
    }
    
    // MARK: - Layout creation
    
    func createLayout() -> UICollectionViewLayout {
		//
        // Badge view
        //
        let badgeAnchor = NSCollectionLayoutAnchor(edges: [.top, .trailing],
                                                   absoluteOffset: CGPoint(x: 6.0, y: -6.0))
        
        let badgeSize = NSCollectionLayoutSize(widthDimension: .absolute(26.0),
                                               heightDimension: .absolute(26.0))
        
        let badgeView = NSCollectionLayoutSupplementaryItem(layoutSize: badgeSize,
															elementKind: badgeElementKind,
															containerAnchor: badgeAnchor)
        
		//
        // Item
        //
		let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
											  heightDimension: .fractionalHeight(1.0))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize, supplementaryItems: [badgeView])
        
		item.contentInsets = NSDirectionalEdgeInsets(top: margin,
													 leading: margin,
													 bottom: 0.0,
													 trailing: 0.0)
        
		//
        // Group
        //
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                               heightDimension: .fractionalWidth(1.0 / 3.0))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 3)
        
		//
        // Section
        //
        let section = NSCollectionLayoutSection(group: group)
        
		section.contentInsets = NSDirectionalEdgeInsets(top: 0.0,
														leading: 0.0,
														bottom: margin,
														trailing: margin)
        
        //
        // Other properties that might be useful:
        //
//         group.interItemSpacing = .fixed(8.0) // (makes spacing between lines, not between items in one line)
//         section.interGroupSpacing = 16.0
        
        return UICollectionViewCompositionalLayout(section: section)
    }
}

extension CollectionViewBadgeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BigNumberCollectionViewCell.nibName, for: indexPath)
                as? BigNumberCollectionViewCell else {
            return UICollectionViewCell()
        }

        let numberToDisplay = indexPath.row + 1
        cell.updateView(number: numberToDisplay)

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let badgeView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                              withReuseIdentifier: CollectionBadgeView.nibName,
                                                                              for: indexPath) as? CollectionBadgeView else {
            return UICollectionReusableView()
        }
        
        let badgeNumber = indexPath.row % 5 == 0 ? (indexPath.row + 3) : 0
        badgeView.updateView(number: badgeNumber)
        
        return badgeView
    }
}

extension CollectionViewBadgeViewController: UICollectionViewDelegate {
    
}
