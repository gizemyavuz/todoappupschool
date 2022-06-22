//
//  ToDoDetayRouter.swift
//  ToDoApp
//
//  Created by Gizem Yavuz on 15.05.2022.
//

import Foundation


class ToDoDetayRouter : PresenterToRouterToDoDetayProtocol {
    static func createModule(ref: ToDoDetayVC) {
        ref.toDoDetayPresenterNesnesi = ToDoDetayPresenter()
        ref.toDoDetayPresenterNesnesi?.toDoDetayInteractor = ToDoDetayInteractor()
    }
}
