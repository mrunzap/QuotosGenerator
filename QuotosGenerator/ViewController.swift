//
//  ViewController.swift
//  QuotosGenerator
//
//  Created by donghun on 2022/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quotoLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!

    // make Array of quotos
    //
    var quotoList = [
            Quoto(contents: "오늘 할일은 내일로 미루어라", name:"강동훈")
            ,Quoto(contents: "오늘 할일은 내일로 미루어라", name:"강동훈1")
            ,Quoto(contents: "오늘 할일은 내일로 미루어라", name:"강동훈2")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        // quotoList index를 넣어서 불러온다
        
        // 
        let random = Int(arc4random_uniform(UInt32(quotoList.count)))
        self.quotoLabel.text = self.quotoList[random].contents
        self.nameLabel.text  = self.quotoList[random].name
    }
    
}

// let을 사용한 이유
//  생성한 명언은 변경할 수 없기 때문이다.
struct Quoto {
    let contents: String
    let name: String
}
