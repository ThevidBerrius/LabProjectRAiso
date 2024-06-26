﻿using LabProjectRAiso.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LabProjectRAiso.Factory
{
    public class TransactionDetailFactory
    {
        public static TransactionDetail CreateTransactionDetail(int TransactionID, int StationeryID, int Quantity)
        {
            TransactionDetail transactionDetail = new TransactionDetail()
            {
                TransactionID = TransactionID,
                StationeryID = StationeryID,
                Quantity = Quantity
            };
            return transactionDetail;
        }
    }
}