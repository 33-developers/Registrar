//
//  OptionNewTicketController.swift
//  Registrar
//
//  Created by Айдар Оспанов on 02.02.2023.
//

import UIKit

class OptionNewTicketController: UIViewController {
    
    let idOptionCell = "idOptionCell"
    var photos: [Photo] = []
    
    let countCells = 2
    let offset: CGFloat = 16
    
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
        title = "Фотографии с ДТП"
        view.backgroundColor = .white
        setupViews()
        setConstraints()
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
        collectionViewLayout.minimumLineSpacing = 20
        collectionViewLayout.sectionInset = .init(top: 20, left: 20, bottom: 20, right: 20)
        return collectionViewLayout
    }
    
    private func setConstraints() {
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

extension OptionNewTicketController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idOptionCell, for: indexPath) as? OptionCollectionViewCell else { return UICollectionViewCell() }
        cell.layer.cornerRadius = 10
        cell.carImageView.image = UIImage(named: photos[indexPath.item].imageName)
        return cell
    }
}

extension OptionNewTicketController: UICollectionViewDelegate {
    
}
