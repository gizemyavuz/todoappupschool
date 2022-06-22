//
//  ToDoKayitInteractor.swift
//  ToDoApp
//
//  Created by Gizem Yavuz on 15.05.2022.
//

import Foundation

class ToDoKayitInteractor : PresenterToInteactorToDoKayitProtocol {
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("Yapilacaklar.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    
    func toDoEkle(yapilacak_is: String) {
        db?.open()
        
        do{
            try db!.executeUpdate("INSERT INTO yapilacaklar (yapilacak_is) VALUES (?,?)", values:[yapilacak_is])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}


