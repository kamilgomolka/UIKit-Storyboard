//
//  CollectionViewPagingViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 10/02/2022.
//

import UIKit

class CollectionViewPagingViewController: UIViewController {
    
    // MARK: - Properties
    
    let margin: CGFloat = 8.0
    let headerElementKind = "headerElementKind"
    
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
        
        collectionView.register(UINib(nibName: CollectionHeaderView.nibName, bundle: nil),
                                forSupplementaryViewOfKind: headerElementKind,
                                withReuseIdentifier: CollectionHeaderView.nibName)
        
        collectionView.collectionViewLayout = createLayout()
    }
    
    // MARK: - Layout creation
    
    func createLayout() -> UICollectionViewLayout {
        return UICollectionViewCompositionalLayout(sectionProvider: provideSection,
                                                   configuration: createLayoutConfiguration())
    }
                                                   
    func createLayoutConfiguration() -> UICollectionViewCompositionalLayoutConfiguration {
        let config = UICollectionViewCompositionalLayoutConfiguration()
        config.interSectionSpacing = 8.0
        return config
    }
    
    func provideSection(sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? {
        guard let sectionType = CollectionViewPagingSectionType(rawValue: sectionIndex) else {
            return nil
        }
        
		//
        // Item
		//
		let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
											  heightDimension: .fractionalHeight(1.0))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = NSDirectionalEdgeInsets(top: margin,
													 leading: margin,
													 bottom: margin,
													 trailing: margin)
        
		//
        // Group
		//		
        let itemAspectRatio = 2.0 / 3.0
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.8),
                                               heightDimension: .fractionalWidth(0.8 * itemAspectRatio))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
		//
        // Section
        //
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = sectionType.orthogonalScrollingBehavior
        
		//
        // Header
        //
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
                                                heightDimension: .absolute(44.0))
        
        let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize,
                                                                 elementKind: headerElementKind,
                                                                 alignment: .top)
        
        section.boundarySupplementaryItems = [header]
        
        return section
    }
}

extension CollectionViewPagingViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return CollectionViewPagingSectionType.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                           withReuseIdentifier: CollectionHeaderView.nibName,
                                                                           for: indexPath) as? CollectionHeaderView else {
            return UICollectionReusableView()
        }
        
        guard let sectionType = CollectionViewPagingSectionType(rawValue: indexPath.section) else {
            return UICollectionReusableView()
        }
        
        header.titleLabel.font = UIFont.boldSystemFont(ofSize: 19.0)
        header.titleLabel.text = String(describing: sectionType)
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BigNumberCollectionViewCell.nibName, for: indexPath) as? BigNumberCollectionViewCell else {
            return UICollectionViewCell()
        }

        let numberToDisplay = indexPath.row + 1
        cell.updateView(number: numberToDisplay)

        return cell
    }
}

extension CollectionViewPagingViewController: UICollectionViewDelegate {
    
}
