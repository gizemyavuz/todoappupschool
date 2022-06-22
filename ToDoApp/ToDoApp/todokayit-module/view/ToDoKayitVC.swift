//
//  ToDoKayitVC.swift
//  ToDoApp
//
//  Created by Gizem Yavuz on 7.05.2022.
//

import UIKit

class ToDoKayitVC: UIViewController {

    @IBOutlet weak var tfToDo: UITextField!
    var toDoKayitPresenterNesnesi:ViewToPresenterToDoKayitProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        ToDoKayitRouter.createModule(ref: self)
  
    }
    

    @IBAction func buttonKaydet(_ sender: Any) {
        if let todo = tfToDo.text{
            toDoKayitPresenterNesnesi?.ekle(yapilacak_is : yapilacak_is )
        }
    }
    
    func kayit(todo:String){
        print("To do : \(todo)")
    }
}
