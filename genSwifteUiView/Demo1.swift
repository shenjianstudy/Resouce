import SwiftUI

struct ContentView: View {
    @State private var sortBy: String = "Minimum return rate (p.a.)"
    @State private var isAscending: Bool = true
    
    var body: some View {
        VStack {
            // Filter and Sorting Header
            VStack(alignment: .leading) {
                Text("Filter CPI Deposit(s) with 3 criteria")
                    .font(.headline)
                    .padding(.bottom, 5)
                
                Text("6 matching result(s) found")
                    .font(.subheadline)
                    .padding(.bottom, 5)
                
                Text("Beginner's guide to CPI Deposit")
                    .foregroundColor(.green)
                    .font(.subheadline)
                    .padding(.bottom, 20)
                
                HStack {
                    Text("Sort by")
                    
                    Picker(selection: $sortBy, label: Text("")) {
                        Text("Minimum return rate (p.a.)").tag("Minimum return rate (p.a.)")
                        Text("Maximum return rate (p.a.)").tag("Maximum return rate (p.a.)")
                    }
                    .pickerStyle(MenuPickerStyle())
                    
                    Spacer()
                    
                    Text("Ordering")
                    
                    Button(action: {
                        isAscending.toggle()
                    }) {
                        HStack {
                            if isAscending {
                                Image(systemName: "arrow.up")
                                Text("Ascending")
                            } else {
                                Image(systemName: "arrow.down")
                                Text("Descending")
                            }
                        }
                    }
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            }
            .padding()
            
            // Result Card
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("USD/JPY")
                        .font(.headline)
                    Spacer()
                    Text("JPY European Bullish")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Deposit currency")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text("JPY")
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("Minimum return rate (p.a.)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text("24.1200%")
                            .foregroundColor(.green)
                    }
                }
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Deposit period")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text("1 Month(s)")
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("Potential return rate (p.a.)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        Text("25.9200%")
                            .foregroundColor(.green)
                    }
                }
                
                Button(action: {
                    // 订阅操作
                }) {
                    Text("Subscribe")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                HStack {
                    Button(action: {
                        // Term Sheet操作
                    }) {
                        Text("Term Sheet")
                    }
                    Spacer()
                    Button(action: {
                        // Return Calculator操作
                    }) {
                        Text("Return calculator")
                    }
                }
                .padding(.top, 10)
            }
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}