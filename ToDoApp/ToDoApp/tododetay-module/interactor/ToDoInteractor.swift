//
//  ToDoInteractor.swift
//  ToDoApp
//
//  Created by Gizem Yavuz on 15.05.2022.
//

import Foundation

class ToDoDetayInteractor : PresenterToInteractorToDoDetayProtocol {
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("Yapilacaklar.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func toDoGuncelle(yapilacak_id : Int,yapilacak_is:String) {
        db?.open()
        
        do{
            try db!.executeUpdate("UPDATE Yapilacak SET yapilacak_is= ? WHERE yapilacak_id = ?", values:[yapilacak_id,yapilacak_is])
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
