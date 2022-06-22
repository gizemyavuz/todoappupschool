//
//  AnasayfaPresenter.swift
//  ToDoApp
//
//  Created by Gizem Yavuz on 15.05.2022.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    
    func todoYukle() {
    anasayfaInteractor?.tumToDoAl()
    }
    
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.toDoAra(aramaKelimesi: aramaKelimesi)
    }
    func sil(yapilacak_id: Int) {
        anasayfaInteractor?.toDoSil(yapilacak_id: yapilacak_id)
        
    }
}
extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    
    func presenteraVeriGonder(yapilacaklarListesi: Array<Yapilacak>) {
       
        anasayfaView?.vieweVeriGonder(yapilacaklarListesi: yapilacaklarListesi)
    }
}
