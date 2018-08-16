//
//  ViewController.swift
//  DrawLineChartGridBackground
//
//  Created by Huang on 2018/8/16.
//  Copyright © 2018年 HuangLiangJun. All rights reserved.
//

import UIKit
import Charts


class ViewController: UIViewController {

    @IBOutlet weak var lineChartView: LineChartView!
    let data = [5.0, 10.0, 20.0, 25.0, 30.0, 50.0, 66.0, 77.0, 88.0, 93.0]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        chartViewSetup()
        
        
    }
    
    func chartViewSetup() {
        
        var yValues : [ChartDataEntry] = [ChartDataEntry]()
        for i in data.enumerated() {
            let x = Double(i.offset)
            let y = i.element
            let entry = ChartDataEntry(x: x, y: y)
            yValues.append(entry)
        }
        
        let lineChartData = LineChartData()
        let ds = LineChartDataSet(values: yValues, label: "Test")
        ds.lineWidth = 1.5
        lineChartData.addDataSet(ds)
        lineChartData.setDrawValues(true)
        
        let leftAxis = lineChartView.leftAxis
        leftAxis.labelFont = .systemFont(ofSize: 10, weight: .light)
        leftAxis.axisMinimum = 0
        leftAxis.axisMaximum = 100 // y軸單位 0~100
        
        self.lineChartView.chartDescription?.text = ""
        self.lineChartView.drawGridBackgroundEnabled = true
        self.lineChartView.data = lineChartData
        
        
    }


}

