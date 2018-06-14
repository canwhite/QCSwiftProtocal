//
//  ViewController.swift
//  QCSwiftProtocalTest
//
//  Created by EricZhang on 2018/6/14.
//  Copyright © 2018年 BYX. All rights reserved.
//

import UIKit
//MARK:(1)接口继承
class ViewController: UIViewController,MyDelegate {
    

    
    
    
    var label:UILabel?;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //MARK:遵守协议
        let sVC:SecondViewController = SecondViewController();
        sVC.delegate = self;
        //加一个右侧按钮
        let item = UIBarButtonItem(title:"下一页",style:UIBarButtonItemStyle.plain,target:self,action:#selector(nextBtnClicked))
        self.navigationItem.rightBarButtonItem = item
        
        self.title = "首页";
        
        
        label = UILabel();
        label?.frame = CGRect.init(x: 0, y: 64, width: self.view.frame.size.width, height: 45);
        label?.backgroundColor = UIColor.cyan;
        label?.textColor = UIColor.black;
        label?.textAlignment = .center;
        label?.text = "下一页回调内容的显示,请点击右侧下一页";
        self.view.addSubview(label!);
        

        
        
        
        
    }
    @objc func nextBtnClicked() -> Void {
        
        
        let sVC:SecondViewController = SecondViewController();
        //MARK:(2)遵守协议
        sVC.delegate = self;
        self.navigationController?.pushViewController(sVC, animated:true);
        
    }
    //MARK:(3)方法实现
    func didDelegateText(text: String) {
        label?.text = text;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    


}

