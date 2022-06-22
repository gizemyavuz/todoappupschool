//
//  ToDoKayitPresenter.swift
//  ToDoApp
//
//  Created by Gizem Yavuz on 15.05.2022.
//

import Foundation

class ToDoKayitPresenter : ViewToPresenterToDoKayitProtocol {
    var toDoKayitInteractor: PresenterToInteactorToDoKayitProtocol?
    
    func ekle(yapilacak_id : Int,yapilacak_is:String) {
        toDoKayitInteractor?.toDoEkle(yapilacak_id:yapilacak_id ,yapilacak_is:yapilacak_is)
    }
}
