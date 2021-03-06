//
//  HomeViewController.swift
//  DouYu
//
//  Created by 齐慕伟 on 2016/10/15.
//  Copyright © 2016年 MuWei. All rights reserved.
//

import UIKit

private let kTitleViewH : CGFloat = 40

class HomeViewController: UIViewController {

    // MARK:- 懒加载
    fileprivate lazy var pageTitleView : PageTitleView = {
        
        let titleFrame = CGRect(x: 0, y:kStatusBarH + kNavigationBarH, width: kScreenW, height: kTitleViewH)
        let titles = ["推荐", "游戏", "娱乐", "趣玩"]
        let titleView = PageTitleView(frame: titleFrame, titles: titles)
//        titleView.delegate = self
        return titleView
    }()
    
    // MARK:- 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置UI
        setupUI()
    }

}


// MARK:- 设置UI界面

extension HomeViewController {
    fileprivate func setupUI() {
        
        // 0.不需要调整UIScrollView的内边距
        automaticallyAdjustsScrollViewInsets = false
        
        setupNavigationBar()
        
        view.addSubview(pageTitleView)
    }
    
    fileprivate func setupNavigationBar() {
        
        // 1.设置左侧的Item
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        
        // 2.设置右侧的Item
        let size = CGSize(width: 40, height: 40)
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [historyItem, searchItem, qrcodeItem]

        
    }
}
