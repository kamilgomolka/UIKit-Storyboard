//
//  CollectionViewGridViewController.swift
//  UIKit-Storyboard
//
//  Created by Kamil Gomółka on 10/02/2022.
//

import UIKit

class CollectionViewGridViewController: UIViewController {
	
	// MARK: - Properties
	
	let margin: CGFloat = 8.0
	
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
		collectionView.collectionViewLayout = createLayout()
	}
	
	// MARK: - Layout creation
	
	func createLayout() -> UICollectionViewLayout {
		//
		// Item
		//
		let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0),
											  heightDimension: .fractionalHeight(1.0))
		
		let item = NSCollectionLayoutItem(layoutSize: itemSize)
		
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

extension CollectionViewGridViewController: UICollectionViewDataSource {
	
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
}

extension CollectionViewGridViewController: UICollectionViewDelegate {
	
}
