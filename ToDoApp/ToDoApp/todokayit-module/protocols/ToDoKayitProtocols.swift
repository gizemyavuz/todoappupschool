//
//  ToDoKayitProtocols.swift
//  ToDoApp
//
//  Created by Gizem Yavuz on 15.05.2022.
//

import Foundation

protocol ViewToPresenterToDoKayitProtocol {
    var toDoKayitInteractor:PresenterToInteactorToDoKayitProtocol? {get set}
    
    func ekle(yapilacak_is:String)
}

protocol PresenterToInteactorToDoKayitProtocol {
    func toDoEkle(yapilacak_is:String)
}

protocol PresenterToRouterToDoKayitProtocol {
    static func createModule(ref:ToDoKayitVC)
}
