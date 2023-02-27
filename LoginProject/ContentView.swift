//
//  ContentView.swift
//  ComplexApp
//
//  Created by adas on 16/02/23.
//

import SwiftUI

enum FocusText{
    case username, password, testNum1, testNum2, testNum3, testNum4
}

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @ObservedObject var model = ViewModel()
    @FocusState private var focusedField: FocusText?
    
    @State var testNumber1Tapped = false
    @State var testNumber2 = ""
    @State var testNumber3 = ""
    @State var testNumber4 = ""
    
    @StateObject var manager = TFManager()
    
    
    // MARK: - BODY
    var body: some View {
        
        if #available(iOS 16.0, *) {
            NavigationStack{
                VStack {
                    HStack {
                        Image("BSC_Logo")
                        Spacer()
                        Text("Testaufgaben").font(.largeTitle)
                    } //: HSTACK
                    
                    Text("Anmeldung")
                        .font(.title)
                        .foregroundColor(Color("BSC_Green"))
                    Text("Nachname")
                        .font(.body)
                        .padding(.vertical)
                    TextField(
                        "User name (email address)",
                        text: $username
                    )
                    .focused($focusedField, equals: .username)
                    .submitLabel(.next)
                    .onSubmit {
                        focusedField = .password
                    }
                    .padding(.all)
                    .border(Color("BSC_Green")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                    .cornerRadius(3.0)
                    Text("Passwort")
                        .font(.body)
                        .padding(.vertical)
                    TextField(
                        "Passwort",
                        text: $password
                    )
                    .focused($focusedField, equals: .password)
                    .submitLabel(.next)
                    .onSubmit {
                        focusedField = .testNum1
                    }
                    .padding(.all)
                    .border(Color("BSC_Green")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                    .cornerRadius(3.0)
                    Text("Testnummer")
                        .font(.body)
                        .padding(.vertical)
                    HStack {
                        // we're going to limit the textfield length
                        
                        TextField("1234", text: $manager.testNumber1) { (status) in
                            // it will fire when textfield is clicked
                            if status {
                                withAnimation(.easeIn) {
                                    testNumber1Tapped = true
                                }
                            }
                            
                        } onCommit: {
                            // it will fire when return button is pressed
                            if manager.testNumber1 == "" {
                                // do something
                                withAnimation(.easeOut) {
                                    testNumber1Tapped = false
                                }
                            }
                            
                        }
                        .focused($focusedField, equals: .testNum1)
                        .submitLabel(.next)
                        .onSubmit {
                            focusedField = .testNum2
                        }
                        .padding()
                        .border(Color("BSC_Green")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                        .cornerRadius(3.0)
                        //                    .keyboardType(.decimalPad)
                        
                        TextField("1234", text: $manager.testNumber2)
                            .focused($focusedField, equals: .testNum2)
                            .submitLabel(.next)
                            .onSubmit {
                                focusedField = .testNum3
                            }
                            .padding()
                            .border(Color("BSC_Green")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                            .cornerRadius(3.0)
                        //                        .keyboardType(.decimalPad)
                        TextField("1234", text: $manager.testNumber3)
                            .focused($focusedField, equals: .testNum3)
                            .submitLabel(.next)
                            .onSubmit {
                                focusedField = .testNum4
                            }
                            .padding()
                            .border(Color("BSC_Green")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                            .cornerRadius(3.0)
                            .keyboardType(.decimalPad)
                        TextField("1234", text: $manager.testNumber4)
                            .focused($focusedField, equals: .testNum4)
                            .submitLabel(.done)
                            .onSubmit {
                                focusedField = nil
                            }
                            .padding()
                            .border(Color("BSC_Green")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1)
                            .cornerRadius(3.0)
                            .keyboardType(.decimalPad)
                        
                        
                    } //: HSTACK
                    .padding(.bottom)
                    
                    // Button
                    Button("Anmelden") {
                        model.getData(username: username.lowercased(), password: password.lowercased(),	
                                      testnumber1: manager.testNumber1,
                                      testnumber2: testNumber2,
                                      testnumber3: testNumber3,
                                      testnumber4: testNumber4
                                      
                        )
                    }
                    .foregroundColor(Color.black)
                    .padding(.all)
                    .background(Color("BSC_Green"))
                    .cornerRadius(3.0)
                    
                    
                } //: VSTACK
                .padding(.horizontal)
                .navigationBarHidden(true)
                .navigationDestination(isPresented: $model.showMasterScreen) {
                    MasterView().navigationBarBackButtonHidden(true)
                }
            }
        } else {
            // Fallback on earlier versions
        } //: NAVIGATIONSTACK
        
        
    } //: BODY
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class TFManager: ObservableObject {
    
    func isValidNumber(string: String) -> Bool {
        let num = Int(string)
        
        // if focused and nothing is typed
        if num != nil || string == "" {
            print("Valid Integer ")
            return true
        }
        else {
            print("Not Valid Integer")
            return false
        }
    }
    
    
    @Published var text = ""
    @Published var testNumber1 = "" {
        // we're going to use didSet Function before assigning the new value so that we can check the count...
        didSet {
            if isValidNumber(string: oldValue) {
                if testNumber1.count > 3 && oldValue.count <= 3 {
                    testNumber1 = oldValue
                }
            }
            else {
                testNumber1 = ""
            }
        }
    }
    
    @Published var testNumber2 = "" {
        // we're going to use didSet Function before assigning the new value so that we can check the count...
        didSet {
            if isValidNumber(string: oldValue) {
                if testNumber2.count > 3 && oldValue.count <= 3 {
                    testNumber2 = oldValue
                }
            }
            else {
                testNumber2 = ""
            }
        }
    }
    
    @Published var testNumber3 = "" {
        // we're going to use didSet Function before assigning the new value so that we can check the count...
        didSet {
            if isValidNumber(string: oldValue) {
                if testNumber3.count > 3 && oldValue.count <= 3 {
                    testNumber3 = oldValue
                }
            }
            else {
                testNumber3 = ""
            }
        }
    }
    
    @Published var testNumber4 = "" {
        // we're going to use didSet Function before assigning the new value so that we can check the count...
        didSet {
            if isValidNumber(string: oldValue) {
                if testNumber4.count > 4 && oldValue.count <= 4 {
                    testNumber4 = oldValue
                }
            }
            else {
                testNumber4 = ""
            }
        }
    }
}

