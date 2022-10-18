//
//  TaskListView.swift
//  Reminder
//
//  Created by kekeli on 18/10/2022.
//

import SwiftUI

struct TaskListView: View {
    
    var tasks = Task.getDummyTasks()
    
    var body: some View {
        ZStack {
            Color("cm")
                .ignoresSafeArea()
            ScrollView{
                
                ZStack{
                    Rectangle()
                    .foregroundColor(.white)
                    
                    VStack{
                        
                        HStack{
                            Text("Today")
                                .font(Font.headline)
                            Spacer()
                            Text("\(tasks.count)")
                             
                            Image("DownArrow")
                            
                        }
                        .font(Font.headline)
                        
                        ForEach(tasks) { task in
                            HStack {
                                Image("check")
                                Text(task.title)
                                    .font(Font.subheadline)
                                Spacer()
                                VStack(alignment: .trailing, spacing: 3){
                                    Text("18:00")
                                    Image("alarm")
                                }
                            }
                        }
                        
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 16)
                
                
               
            }
            
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    
                    Button{
//                        Todo: add Task
                            } label: { Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 64, height: 64)
                            .foregroundColor(Color.accentColor)
                            .padding(.bottom, 28)
                            .padding(.trailing, 24)
                    }
                }
                
            }
            
            
        }
                .toolbar{
                    ToolbarItem(placement: .navigationBarLeading){
                        Image("hand")
                    }
                    ToolbarItem(placement: .principal) {
                        Text("Today")
                            .font(Font.largeTitle)
                            .bold()
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing){
                        Image("dot")
                    }
                }
                
            .navigationBarTitleDisplayMode(.inline)
        }
    }


struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
