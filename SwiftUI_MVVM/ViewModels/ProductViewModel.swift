//
//  ProductViewModel.swift
//  SwiftUI_MVVM
//
//  Created by Chaman Sharma on 02/01/24.
//

import UIKit

class ProductViewModel: ObservableObject {
    @Published var productItems = [ProductModel]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        productItems.append(ProductModel(id: 1, productName: "iPhone 9", productDescription: "An apple mobile which is nothing like apple", image: "https://i.dummyjson.com/data/products/1/thumbnail.jpg", price: "549"))
        productItems.append(ProductModel(id: 2, productName: "iPhone X", productDescription: "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...", image: "https://i.dummyjson.com/data/products/2/thumbnail.jpg", price: "899"))
        productItems.append(ProductModel(id: 3, productName: "Samsung Universe 9", productDescription: "Samsung's new variant which goes beyond Galaxy to the Universe", image: "https://i.dummyjson.com/data/products/3/thumbnail.jpg", price: "1249"))
        productItems.append(ProductModel(id: 4, productName: "OPPOF19", productDescription: "OPPO F19 is officially announced on April 2021", image: "https://i.dummyjson.com/data/products/4/thumbnail.jpg", price: "280"))
        productItems.append(ProductModel(id: 5, productName: "Huawei P30", productDescription: "Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.", image: "https://i.dummyjson.com/data/products/5/thumbnail.jpg", price: "499"))
        productItems.append(ProductModel(id: 6, productName: "MacBook Pro", productDescription: "MacBook Pro 2021 with mini-LED display may launch between September, November", image: "https://i.dummyjson.com/data/products/6/thumbnail.png", price: "1749"))
        productItems.append(ProductModel(id: 7, productName: "Samsung Galaxy Book", productDescription: "Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched", image: "https://i.dummyjson.com/data/products/7/thumbnail.jpg", price: "1499"))
        productItems.append(ProductModel(id: 8, productName: "Microsoft Surface Laptop 4", productDescription: "Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.", image: "https://i.dummyjson.com/data/products/8/thumbnail.jpg", price: "1499"))
        productItems.append(ProductModel(id: 9, productName: "Infinix INBOOK", productDescription: "Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty", image: "https://i.dummyjson.com/data/products/9/thumbnail.jpg", price: "1099"))
     }
}
