//
//  ContentView.swift
//  SwiftUI_MVVM
//
//  Created by Chaman Sharma on 01/01/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var productViewModel = ProductViewModel()
    @State private var selectedIndex = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer(minLength: 70)
                    Picker("Table Type", selection: $selectedIndex,
                           content: {
                        Text("Grouped").tag(0)
                        Text("Plain").tag(1)
                    })
                    .pickerStyle(SegmentedPickerStyle())
                    .padding([.leading, .trailing], 20)
                    .background(Color.clear)
                    
                    ZStack {
                        List(self.productViewModel.productItems) { productItem in
                            CustomListCell(productModel: productItem)
                        }
                        . modifier(DeviceAdaptedListStyle(isGrouped:  selectedIndex == 0))
                        .listStyle(.plain)
                        .scrollContentBackground(.hidden)
                        .cornerRadius(2.0)
                        .scrollIndicators(.hidden)
                        
                    }
                }.background(Color.clear)
            }
            .background(Color(red: 235/255, green: 235/255, blue: 235/255))
            .ignoresSafeArea()
        }.navigationBarHidden(true)
    }
}

struct CustomListCell: View {
    let productModel: ProductModel?
    let width: CGFloat = UIScreen.main.bounds.width
    
    var body: some View {
        ZStack(alignment: .leading) {
            VStack {
                HStack {
                    VStack {
                        AsyncImage(url:URL(string: productModel?.image ?? "")) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                    } .frame(width:50, height:50)
                    Spacer(minLength: 1)
                    VStack(alignment: .leading) {
                        Text(productModel?.productName ?? "")
                            .font(.system(size: 18.0))
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                        Text(productModel?.productDescription ?? "")
                            .font(.system(size: 14.0))
                            .fontWeight(.regular)
                            .foregroundColor(Color(red: 150/255, green: 150/255, blue: 150/255))
                    }.frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 15)
                    Spacer()
                }
                Divider()
            }
        }
        .listRowSeparator(.hidden)
    }
}

#Preview {
    ContentView()
}

struct DeviceAdaptedListStyle: ViewModifier {
  var isGrouped: Bool = true

  @ViewBuilder func body(content: Content) -> some View {
    if isGrouped {
      content.listStyle(.insetGrouped)
    } else {
      content.listStyle(.grouped)
    }
  }
}


