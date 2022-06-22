//
//  ToDoDetayVC.swift
//  ToDoApp
//
//  Created by Gizem Yavuz on 7.05.2022.
//

import UIKit

class ToDoDetayVC: UIViewController {

    @IBOutlet weak var tfToDo: UITextField!
    var yapilacaklar:Yapilacaklar?
    var toDoDetayPresenterNesnesi:ViewToPresenterToDoDetayProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let y = yapilacaklar{
            tfToDo.text = y.todo_ad
            
        }
        ToDoDetayRouter.createModule(ref: self)
    }
    

    @IBAction func buttonGuncelle(_ sender: Any) {
        if let todo = tfToDo.text , let y = yapilacaklar{
            guncelle(todo_id: y.todo_id! , todo_ad: todo)
        }
    }
    
    func guncelle(todo_id:Int,todo_ad:String){
        print("yapilacak guncelle : \(todo_id)-\(todo_ad)")
        
    }

}
