//
//  PageViewController.swift
//  PageControl
//
//  Created by Administrator on 2018/11/9.
//  Copyright © 2018年 Apple, Inc. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource {

    var viewList = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let vc1 = storyboard?.instantiateViewController(withIdentifier: "one")
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "two")
        let vc3 = storyboard?.instantiateViewController(withIdentifier: "three")
        
        viewList = [vc1, vc2, vc3] as! [UIViewController]
        
        setViewControllers([viewList[1]], direction: .forward, animated: true, completion: nil)
        
        dataSource = self
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let index = viewList.firstIndex(of: viewController), index < viewList.count - 1 {
            return viewList[index+1]
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if let index = viewList.firstIndex(of: viewController), index > 0 {
            return viewList[index - 1]
        }
        return nil
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
