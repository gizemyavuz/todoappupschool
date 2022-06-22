//
//  AnasayfaInteractor.swift
//  ToDoApp
//
//  Created by Gizem Yavuz on 15.05.2022.
//

import Foundation

class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func tumToDoAl() {
        var liste = [Yapilacak]()
        
        db?.open()
        
        do{
            let rs = try db!.executeQuery("SELECT * FROM yapilacaklar", values: nil)
            
            while rs.next() {
                let todo = Yapilacak(yapilacak_id: Int(rs.string(forColumn: "yapilacak_id"))!, yapilacak_is: rs.string(forColumn: "yapilacak_is")!)
                liste.append(todo)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func toDoAra(aramaKelimesi: String) {
        var liste = [Yapilacak]()
        
        db?.open()
        
        do{
            let rs = try db!.executeQuery("SELECT * FROM yapilacaklar WHERE yapilacak_is like '%\(aramaKelimesi)%'", values: nil)
            
            while rs.next() {
                let todo = Yapilacak(yapilacak_id: Int(rs.string(forColumn: "yapilacak_id"))!, yapilacak_is: rs.string(forColumn: "yapilacak_is")!)
                liste.append(todo)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(yapilacaklarListesi: liste)
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func toDoSil(yapilacak_id: Int) {
        db?.open()
        
        do{
            try db!.executeUpdate("DELETE FROM kisiler WHERE yapilacak_id = ?", values:[yapilacak_id])
            tumToDoAl()
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
