//
//  KakaoTalkViewController.swift
//  KaKaoTalkCollectionView
//
//  Created by woojin Choi on 2023/09/09.
//

import UIKit

class TalkListViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var talkList: [Talk] = Talk.list
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        talkList = talkList.sorted(by: { talk1, talk2 in
            return talk1.date > talk2.date
        })
    }
    
}

extension TalkListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return talkList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TalkListCollectionViewCell", for: indexPath) as? TalkListCollectionViewCell else {
            return UICollectionViewCell()
        }
        let talk = talkList[indexPath.item]
        cell.configure(talk)
        return cell
    }
}

extension TalkListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 100)
    }
}
