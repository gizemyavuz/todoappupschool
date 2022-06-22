//
//  ToDoKayitRouter.swift
//  ToDoApp
//
//  Created by Gizem Yavuz on 15.05.2022.
//

import Foundation
class ToDoKayitRouter : PresenterToRouterToDoKayitProtocol {
    static func createModule(ref: ToDoKayitVC) {
        ref.toDoKayitPresenterNesnesi = ToDoKayitPresenter()
        ref.toDoKayitPresenterNesnesi?.toDoKayitInteractor = ToDoKayitInteractor()
    }
}
