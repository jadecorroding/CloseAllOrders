//+------------------------------------------------------------------+
//|                                                CloseAllOrdes.mq5 |
//|                                  Copyright 2018, Jade Corroding. |
//|                            https://www.twitter.com/jadecorroding |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, Jade Corroding."
#property link      "https://www.twitter.com/jadecorroding"
#property version   "1.00"

#include <Trade/Trade.mqh>
CTrade m_trade;
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   CloseAllOrders();

  }
//+------------------------------------------------------------------+

void CloseAllOrders()
  {
   int x=PositionsTotal()-1;
   while(x<0)
     {
      if(m_trade.PositionClose(PositionGetSymbol(x)))x--;
     }

  }
//+------------------------------------------------------------------+
