//
//  Yapilacaklar.swift
//  ToDoApp
//
//  Created by Gizem Yavuz on 15.05.2022.
//

import Foundation

class Yapilacaklar {
    var yapilaca_id:Int?
    var kisi_ad:String?
    var kisi_tel:String?
    
    init(kisi_id:Int,kisi_ad:String,kisi_tel:String){
        self.kisi_id = kisi_id
        self.kisi_ad = kisi_ad
        self.kisi_tel = kisi_tel
    }
}
