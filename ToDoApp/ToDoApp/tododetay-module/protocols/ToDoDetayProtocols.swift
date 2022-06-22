//
//  ToDoDetayProtocols.swift
//  ToDoApp
//
//  Created by Gizem Yavuz on 15.05.2022.
//

import Foundation


protocol ViewToPresenterToDoDetayProtocol {
    var toDoDetayInteractor:PresenterToInteractorToDoDetayProtocol? {get set}
    
    func guncelle(yapilacak_id : Int,yapilacak_is:String)
}

protocol PresenterToInteractorToDoDetayProtocol {
    func toDoGuncelle(yapilacak_id : Int,yapilacak_is:String)
}

protocol PresenterToRouterToDoDetayProtocol {
    static func createModule(ref:ToDoDetayVC)
}
