//
//  ViewController.swift
//  Sync & Async
//
//  Created by 정재 on 2023/04/28.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.example1()
//        self.example2()
//        self.example3()
    }
    
    //동기가 먼저 실행된 후에, 비동기가 실행된다.
    func example1() {
        //비동기
        DispatchQueue.main.async {
            for i in 1...5 {
                print("\(i)번 여자")
            }
        }
        //동기
        for i in 1...5 {
            print("\(i)번 남자")
        }
    }
    //동기에서 return을 걸어주고 구문을 끝내도 비동기는 문제 없이 실행이 된다.
    func example2() {
        //비동기
        DispatchQueue.main.async {
            for i in 1...5 {
                print("\(i)번 여자")
            }
        }
        //동기
        for i in 1...5 {
            print("\(i)번 남자")
            
            return
        }
    }
    //main 큐와 다르게 global 큐는 "high, default, low, background"의 우선순위에 따라 동기와 비동기 순서 상관 없이 실행이 된다.
    func example3() {
        //비동기
        DispatchQueue.global().async {
            for i in 1...5 {
                print("\(i)번 여자")
            }
        }
        //동기
        for i in 1...5 {
            print("\(i)번 남자")
        }
    }


}
