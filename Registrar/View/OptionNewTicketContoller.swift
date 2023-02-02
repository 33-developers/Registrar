//
//  OptionNewTicketContoller.swift
//  Registrar
//
//  Created by Айдар Оспанов on 02.02.2023.
//

import UIKit

class OptionNewTicketContoller: UIViewController {
    
    let idOptionCell = "idOptionCell"

    let source: [Photo] = Source.randomPhotos(with: 15)
    
    var collectionView: UICollectionView!
    var collectionViewFlowLayout: UICollectionViewFlowLayout!
    
    lazy var changeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Change", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(changeButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Картинки"
        view.backgroundColor = .white
        
        setupViews()
        setConstaints()
        setDelegates()
        collectionView.register(OptionCollectionViewCell.self, forCellWithReuseIdentifier: idOptionCell)
    }
    
    @objc private func changeButtonTapped() {
        collectionViewFlowLayout.scrollDirection =  collectionViewFlowLayout.scrollDirection == .horizontal ? .vertical : .horizontal
        
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
    }
    
    private func setDelegates() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    private func setupViews() {
        collectionViewFlowLayout = setupFlowLayout()
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: collectionViewFlowLayout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(collectionView)
        view.addSubview(changeButton)
    }
    
    private func setupFlowLayout() -> UICollectionViewFlowLayout {
        
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        collectionViewLayout.minimumLineSpacing = 10
        collectionViewLayout.sectionInset = .init(top: 30, left: 30, bottom: 30, right: 30)
        return collectionViewLayout
    }
    
    private func setConstaints() {
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            changeButton.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 20),
            changeButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            changeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            changeButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.35),
        ])
    }
}

extension OptionNewTicketContoller: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        source.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idOptionCell, for: indexPath) as? OptionCollectionViewCell else { return UICollectionViewCell() }
        
        cell.carImageView.image = UIImage(named: source[indexPath.item].imageName)
        return cell
    }
}

extension OptionNewTicketContoller: UICollectionViewDelegate {
    
}
