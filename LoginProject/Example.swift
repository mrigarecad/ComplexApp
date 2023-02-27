import SwiftUI

struct Example: View {
    let exampleListOptions = ["Diese Aussage ist richtig.", "Diese Aussage ist falsch.", "Zu dieser Aussage gibt es keine Angaben im Text."]
    @State var selectedOption: String? = nil
    
    var body: some View {
        VStack {
            HStack {
                Image("BSC_Logo")
                Spacer()
                Text("Deutsch Textverständnis")
                    .font(.headline)
                    .foregroundColor(Color.black)
            }
            Divider()
            ScrollView {
                HStack {
                    Text("Probeaufgabe")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.vertical)
                
                HStack {
                    Text("Unten siehst du einen Text. Lies ihn sorgfältig durch. Unter dem Text findest du eine Aussage.")
                        .font(.body)
                        .fontWeight(.semibold)
                    Spacer()
                }
                
                HStack {
                    Text("""
                            Wildschweine am Flughafen
                            Ein Wildschwein hat in Prag dafür gesorgt, dass eine Maschine der russischen Fluggesellschaft Aeroflot nicht starten konnte. Bisher hatten Wildschweine nur in der Umgebung des Flughafens Schäden angerichtet. Manchmal haben sie sogar Hunde angegriffen. Aber es ist neu, dass sie sogar auf den Flughafen vordringen. Das Flugzeug konnte dann mit einer Verspätung von 20 Minuten doch noch starten.
                            """)
                        .font(.body)
                    Spacer()
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                
                HStack {
                    Text("Aussage")
                        .font(.body)
                        .fontWeight(.semibold)
                    Spacer()
                }
                .padding(.top)
                
                HStack {
                    Text("Ein Jäger musste die Wildschweine vertreiben.")
                        .font(.body)
                        .fontWeight(.semibold)
                    Spacer()
                }
                .padding(.bottom)
                
                HStack {
                    Text("Antwort")
                        .font(.title2)
                        .foregroundColor(Color("BSC_Green"))
                    Spacer()
                }.padding(.top)
                
     
                HStack {
                    List {
                        Section("My"){
                            ForEach(exampleListOptions, id: \.self) { item in
                                SelectionCell(selectedOption: item, isSelected: self.$selectedOption)
                            }
                        }
                    }.padding(/*@START_MENU_TOKEN@*/.all, 0.0/*@END_MENU_TOKEN@*/).frame(height: 220.0).cornerRadius(/*@START_MENU_TOKEN@*/6.0/*@END_MENU_TOKEN@*/)
//                        .scrollContentBackground(.hidden)
                    Spacer()
                }
                    
             
                
                
                HStack {
                    Button("Gebiet beenden") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.buttonStyle(GreenBorderButton())
                    
                    Spacer()
                    Button("Vorherige Seite") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.buttonStyle(BSCGreenFillButton())
                    
                    Button("Nächste Seite") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }.buttonStyle(BSCGreenFillButton())
                }
                .padding(.vertical)
                HStack{
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 32.0, height: 32.0)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("BSC_Light_Green")/*@END_MENU_TOKEN@*/)
                    Text("Gelöst")
                        .font(.body)
                    RoundedRectangle(cornerRadius: 4)
                      .stroke(Color.black, lineWidth: 1)
                      .frame(width: 31, height: 31)
                    Text("Ungelöst")
                        .font(.body)
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 32.0, height: 32.0)
                    Text("Aktuell")
                        .font(.body)
                        
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
                
                ScrollView(.horizontal) {
                    HStack {
                        Button("1") {}
                        .buttonStyle(GreenFillButton())
                        Button("2") {}
                        .buttonStyle(GreenFillButton())
                        Button("3") {}
                        .buttonStyle(BlackFillButton())
                        Button("4") {}
                        .buttonStyle(BlackBorderButton())
                        Button("5") {}
                        .buttonStyle(BlackBorderButton())
                        Button("6") {}
                        .buttonStyle(BlackBorderButton())
                        Button("7") {}
                        .buttonStyle(BlackBorderButton())
                    }
                    
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Light_Gray")/*@END_MENU_TOKEN@*/)
            }
            .padding(.bottom)
            
        }
        .padding(.horizontal)
    }
}

struct SelectionCell: View {

    let selectedOption: String
    @Binding var isSelected: String?

    var body: some View {
        HStack {
            Text(selectedOption)
            Spacer()
            if selectedOption == isSelected {
                Image(systemName: "checkmark")
                    .foregroundColor(.accentColor)
            }
        }   .onTapGesture {
                self.isSelected = self.selectedOption
            }
    }
}

struct Example_Previews: PreviewProvider {
    static var previews: some View {
        Example()
    }
}
