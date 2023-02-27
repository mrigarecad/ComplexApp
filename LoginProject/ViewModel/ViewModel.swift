//
//  ViewModel.swift
//  LoginProject
//
//  Created by admin on 15/02/23.
//

import Foundation
import Firebase
class ViewModel : ObservableObject{
    @Published var user = Users(id: "",
                                     name: "",
                                     password: "")
    @Published var showMasterScreen = false
    
    
    func getData(username: String, password: String, testnumber1: String, testnumber2: String, testnumber3: String, testnumber4: String){
        // Reference to database
       
//
//
//        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
//        request.setValue("application/json", forHTTPHeaderField: "Accept")
//        request.httpMethod = "POST"
//
//
        
        
        //Firebase code
        print(username, password)
        let db = Firestore.firestore()
        let docRef = db.collection("users")


        //Read the documents at a specific path
        docRef.getDocuments { snapshot, error in
        //Check for errors
            if error == nil{
                if let snapshot = snapshot{
                    DispatchQueue.main.async { [self] in
                        for doc in snapshot.documents {
                            print("outputttttt \(doc)")
                            if doc.documentID == username  {
                                self.user = Users(id: doc.documentID,
                                             name: doc["name"] as? String ?? "",
                                             password: doc["password"] as? String ?? "")
                                self.showMasterScreen = true
                            }

                        }
                    }

                }
            }
            else{
                print(error as Any? ?? "")
            }
        }
        
    }
}
