//
//  DetailViewController.swift
//  Todo
//
//  Created by panda zheng on 15/4/19.
//  Copyright (c) 2015年 panda zheng. All rights reserved.
//

import UIKit

class DetailViewController : UIViewController , UITextFieldDelegate
{
    
    @IBOutlet weak var childButton: UIButton!
    @IBOutlet weak var phoneButton: UIButton!
    @IBOutlet weak var shoppingCartButton: UIButton!
    @IBOutlet weak var travelButton: UIButton!
    @IBOutlet weak var todoItem: UITextField!
    @IBOutlet weak var todoDate: UIDatePicker!
    
    var todo: TodoModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todoItem.delegate = self
        
        if todo == nil
        {
            childButton.selected = true
            navigationController?.title = "新建Todo"
        }
        else
        {
            navigationController?.title = "修改Todo"
            if todo?.image == "child-selected"
            {
                childButton.selected = true
            }
            else if todo?.image == "phone-selected"
            {
                phoneButton.selected = true
            }
            else if todo?.image == "shopping-cart-selected"
            {
                shoppingCartButton.selected = true
            }
            else if todo?.image == "travel-selected"
            {
                travelButton.selected = true
            }
            
            todoItem.text = todo?.title
            todoDate.setDate((todo?.date)!, animated: false)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //clear selected status
    func resetButtons()
    {
        childButton.selected = false
        phoneButton.selected = false
        shoppingCartButton.selected = false
        travelButton.selected = false
    }
    
    @IBAction func childTapped(sender: AnyObject) {
        resetButtons()
        childButton.selected = true
    }
    
    @IBAction func phoneTapped(sender: AnyObject) {
        resetButtons()
        phoneButton.selected = true
    }
    
    @IBAction func shoppingCartTapped(sender: AnyObject) {
        resetButtons()
        shoppingCartButton.selected = true
    }
    
    @IBAction func travelTapped(sender: AnyObject) {
        resetButtons()
        travelButton.selected = true
    }
    
    @IBAction func okTapped(sender: AnyObject) {
        var image = ""
        if childButton.selected
        {
            image = "child-selected"
        }
        else if phoneButton.selected
        {
            image = "phone-selected"
        }
        else if shoppingCartButton.selected
        {
            image = "shopping-cart-selected"
        }
        else if travelButton.selected
        {
            image = "travel-selected"
        }
        
        if todo == nil
        {
            // New todo
            let uuid = NSUUID().UUIDString
            todo = TodoModel(id: uuid, image: image, title: todoItem.text, date: todoDate.date)
            todos.append(todo!)
        }
        else
        {
            todo?.image = image
            todo?.title = todoItem.text
            todo?.date = todoDate.date
        }
    }
    
    // Dismiss the keyboard
    // MARK: - Textfield
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        todoItem.resignFirstResponder()
    }
    
}
