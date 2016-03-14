import Foundation

public func tip(bill: Double, minTip: Double, minTipPerc: Double) -> (tipPercent: Double, tipAmt: Double, totalBill: Double) {
    //why do i have to declare these variables here if already done so on the line above?
    var tipPercent: Double
    var tipAmt = bill*minTipPerc/100
    var totalBill: Double
    
    
    if tipAmt < minTip {
        tipAmt = minTip
        tipPercent = tipAmt/bill*100
        
        
    } else {
        
        tipPercent = minTipPerc
    }
    
    totalBill = bill + tipAmt
    return (tipPercent, tipAmt, totalBill)
}

