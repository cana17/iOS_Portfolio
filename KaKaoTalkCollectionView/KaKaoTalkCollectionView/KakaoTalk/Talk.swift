//
//  Talk.swift
//  KaKaoTalkCollectionView
//
//  Created by woojin Choi on 2023/09/09.
//

import Foundation

struct Talk {
    let name: String
    let talk: String
    let date: String
}

extension Talk {
    static let list: [Talk] = [
        Talk(name: "여진", talk: "🔥 감사합니다. 아 그리고, 어제 만나서 반가웠어요", date: "2023-09-09"),
        
        Talk(name: "채민", talk: "❤️ 어제 도와줘서 고마워. 그래도 다행이야, 오빠가 빠르게 회복되었다니까!!", date: "2023-09-09"),
        
        Talk(name: "승미", talk: "🌸 내일 꽃이 피나봐, 한강으로 꽃보면서, 치맥이나 가자", date: "2023-09-06"),
        
        Talk(name: "정원", talk: "나 내일 공연한다", date: "2023-09-05")
    ]
}
