//
//  ToDoDetayPresenter.swift
//  ToDoApp
//
//  Created by Gizem Yavuz on 15.05.2022.
//

import Foundation
class ToDoDetayPresenter : ViewToPresenterToDoDetayProtocol {
    var toDoDetayInteractor: PresenterToInteractorToDoDetayProtocol?
    
    func guncelle(yapilacak_id : Int,yapilacak_is:String) {
        toDoDetayInteractor?.toDoGuncelle(yapilacak_id:yapilacak_id ,yapilacak_is:yapilacak_is)
    }
}
