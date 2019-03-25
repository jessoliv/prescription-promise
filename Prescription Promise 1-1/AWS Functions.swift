////
////  AWS Functions.swift
////  Prescription Promise 1-1
////
////  Created by William Farley on 3/16/19.
////  Copyright © 2019 Jessica Olivieri. All rights reserved.
////
//
//import Foundation
//import AWSAppSync
//
//class AWSFunctions {
//
//    /*
//     import AWSAppSync
//
//     class Todos: UIViewController{
//     //Reference AppSync client
//     var appSyncClient: AWSAppSyncClient?
//
//     override func viewDidLoad() {
//     super.viewDidLoad()
//     let appDelegate = UIApplication.shared.delegate as! AppDelegate
//     user.appSyncClient = appDelegate.appSyncClient
//     }
//     }
// */
//
//    var discard: Cancellable?
//
//    func subscribe() {
//        do {
//            discard = try appSyncClient?.subscribe(subscription: OnCreateTodoSubscription(), resultHandler: { (result, transaction, error) in
//                if let result = result {
//                    print(result.data!.onCreateTodo!.name + " " + result.data!.onCreateTodo!.description!)
//                } else if let error = error {
//                    print(error.localizedDescription)
//                }
//            })
//        } catch {
//            print("Error starting subscription.")
//        }
//    }
//
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
//
//    // if you want to mutate then query
//    func runMutation(){
//        let mutationInput = CreateTodoInput(name: "Use AppSync", description:"Realtime and Offline")
//        appSyncClient?.perform(mutation: CreateTodoMutation(input: mutationInput)) { [weak self] (result, error) in
//            // ... do whatever error checking or processing you wish here
//            self?.runQuery()
//        }
//    }
//
//    func runQuery(){
//        appSyncClient?.fetch(query: ListTodosQuery(), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
//            if error != nil {
//                print(error?.localizedDescription ?? "")
//                return
//            }
//            result?.data?.listTodos?.items!.forEach { print(($0?.name)! + " " + ($0?.description)!) }
//        }
//    }
//
//
//}
