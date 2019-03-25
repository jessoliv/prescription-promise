//
//  User.swift
//  Prescription Promise 1-1
//
//  Created by William Farley on 3/25/19.
//  Copyright © 2019 Jessica Olivieri. All rights reserved.
//

import Foundation
import AWSAppSync

class User {
    
    var appSyncClient: AWSAppSyncClient
    
    var firstName: String
    var lastName: String
    var birthdate: String
    var address: String
    var city: String
    var state: String
    var zipCode: String
    
    var insuranceInfo: InsuranceInfo
//    var transactions: [Transaction]
    
    init(awsAppSync: AWSAppSyncClient) {
        appSyncClient = awsAppSync
        firstName = ""
        lastName = ""
        birthdate = ""
        address = ""
        city = ""
        state = ""
        zipCode = ""
        insuranceInfo = InsuranceInfo()
//        transactions = [Transaction]()
    }
    
    // save data
//    func runMutation(){
//        let mutationInput = CreateTodoInput(name: "Use AppSync", description:"Realtime and Offline")
//        appSyncClient?.perform(mutation: CreateTodoMutation(input: mutationInput)) { (result, error) in
//            if let error = error as? AWSAppSyncClientError {
//                print("Error occurred: \(error.localizedDescription )")
//            }
//            if let resultError = result?.errors {
//                print("Error saving the item on server: \(resultError)")
//                return
//            }
//        }
//    }
    
    // load data
//    func runQuery(){
//        appSyncClient?.fetch(query: ListTodosQuery(), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
//            if error != nil {
//                print(error?.localizedDescription ?? "")
//                return
//            }
//            result?.data?.listTodos?.items!.forEach { print(($0?.name)! + " " + ($0?.description)!) }
//        }
//    }
}

class InsuranceInfo {
    var provider: String
    var id: String
    var group: String
    var cardImageFront: Data
    var cardImageBack: Data
    init() {
        provider = ""
        id = ""
        group = ""
        cardImageFront = Data()
        cardImageBack = Data()
    }
}

//class Transaction {
//    var sender: User
//    var recipient: User
//    var drug: Drug
//    init() {
//        sender = User()
//        recipient = User()
//        drug = Drug()
//    }
//}

class Drug {
    var drugName: String
    var expirationDate: String
    var prescriptionDate: String
    var doctor: String
    var doctorImage: Data
    init() {
        drugName = ""
        expirationDate = ""
        prescriptionDate = ""
        doctor = ""
        doctorImage = Data()
    }
}
