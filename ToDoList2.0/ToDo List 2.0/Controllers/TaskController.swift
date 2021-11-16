//
//  TaskController.swift
//  ToDo List 2.0
//
//  Created by Лагода Лілія on 07.11.2021.
//  Copyright © 2021 Лагода Лілія. All rights reserved.
//

import Foundation

class TaskController {
    private var tasks: [Task] = [
    Task.init(title: "Some title", description: "Description1", taskDate: Date(), createdDate: Date(), status: "Done"),
    Task.init(title: "1 Some title", description: "Description2", taskDate: Date(), createdDate: Date(), status: "Progress"),
    Task.init(title: "2 Some title", description: "Description3", taskDate: Date(), createdDate: Date(), status: "Progress"),
    Task.init(title: "3 Some title", description: "Description4", taskDate: Date(), createdDate: Date(), status: "Progress"),
    Task.init(title: "New Title", description: "Description5", taskDate: Date(), createdDate: Date(), status: "Progress"),
    Task.init(title: "Task", description: "Description6", taskDate: Date(), createdDate: Date(), status: "Done"),
    Task.init(title: "Read Book", description: "Description7", taskDate: Date(), createdDate: Date(), status: "Done"),
    Task.init(title: "Jump", description: "Description8", taskDate: Date(), createdDate: Date(), status: "Progress"),
    Task.init(title: "Sport", description: "Description9", taskDate: Date(), createdDate: Date(), status: "Done"),
    Task.init(title: "Run", description: "Description10", taskDate: Date(), createdDate: Date(), status: "Progress"),
    ]
    
    func countTasks() -> Int{
        return tasks.count
    }
    
    func add(new task: Task) {
        tasks.append(task)
    }
    
    func search(by title: String) -> [Task] {
        return tasks.filter { task in
            return (task.title != nil) ? task.title!.contains(title) : false
        }
    }
    
    func sortByDateNewest() -> [Task] {
        tasks.sort { task1, task2 in
            task1.createdDate < task2.createdDate
        }
        
        return tasks
    }
    
    func sortByDateOldest() -> [Task] {
           tasks.sort { task1, task2 in
               task1.createdDate > task2.createdDate
           }
           
           return tasks
       }
    
    func sortByTaskDate() -> [Task] {
        tasks.sort { task1, task2 in
            task1.taskDate < task2.taskDate
        }
        return tasks
    }
    
    // checking for optionals for right work of method sortByTitleLetterA
    //warning! this checking works only for task.title
    func checkIfTitleIsOptional(tasks: [Task]) -> Bool {
        for task in tasks {
            if (task.title != nil) {
            continue
            } else {
                return false
            }
        }
        return true
    }
    
    func sortByTitleLetterA() -> [Task] {
        if checkIfTitleIsOptional(tasks: tasks){
        tasks.sort { task1, task2 in
            (task1.title)! < (task2.title)!
            }
        }
        return tasks
    }
    
    func filter(by status: String) -> [Task] {
        return tasks.filter { task in
            return task.status == status
        }
    }
    
    func task(by index: Int) -> Task {
        return tasks[index]
    }
    
    func deleteCell(by index: Int) {
        tasks.remove(at: index)
    }
}
