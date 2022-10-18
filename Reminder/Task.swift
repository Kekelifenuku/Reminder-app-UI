//
//  Task.swift
//  Reminder
//
//  Created by kekeli on 18/10/2022.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    var title: String
    
    static func getDummyTasks() -> [Task] {
        
        var tasks = [Task]()
        
        tasks.append(Task(title: "Check emails"))
        tasks.append(Task(title: "Discuss marking plan"))
        tasks.append(Task(title: "Mornig Meeting"))
        tasks.append(Task(title: "Branding campaign"))
        
        return tasks
    }
}
