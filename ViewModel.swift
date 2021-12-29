//
//  ViewModel.swift
//  FetchDatabase
//
//  Created by omer sanli on 29.12.2021.
//

import Foundation
import Firebase

class ViewModel: ObservableObject{
    @Published var list = [Todo]()
    
    func getData(){
        
        // Get a reference to the database
        let db = Firestore.firestore()
        
        // Read the documents at spesific path
        db.collection("todos").getDocuments { snapshot, error in
            if error == nil {
                // No error
                if let snapshot = snapshot{
                    
                    
                    // Update the list property in the main thread 
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map { d in
                            return Todo(id: d.documentID, name: d["name"] as? String ?? "", notes: d["notes"] as? String ?? "")
                    }
                    
                    // Get all the documents and create Todos
                    
              
                    }
                }

            }else{
                // Error
            }
        }
        
    }
    
    
}
