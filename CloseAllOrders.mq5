//+------------------------------------------------------------------+
//|                                                        Close.mq5 |
//|                        Copyright 2018, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"

#include <Trade/Trade.mqh>
CTrade m_trade;
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
   Close();

  }
//+------------------------------------------------------------------+

void Close()
  {
   int x=PositionsTotal()-1;
   while(x<0)
     {
      if(m_trade.PositionClose(PositionGetSymbol(x)))x--;
     }
  }
//+------------------------------------------------------------------+
