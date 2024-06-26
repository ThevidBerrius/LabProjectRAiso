﻿using LabProjectRAiso.Factory;
using LabProjectRAiso.Model;
using LabProjectRAiso.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LabProjectRAiso.Handler
{
    public class UserHandler
    {
        public static String LoginHandler(String name, String password)
        {
            MsUser user = UserRepository.GetUser(name, password);
            return user != null ? "Success" : "Username / Password is incorrect";
        }

        public static String RegisterHandler(String username)
        {
            MsUser user = UserRepository.GetUserByUsername(username);
            return user == null ? "Success" : "Username already used";
        }

        public static void InsertHandler (String username, DateTime DOB, String gender, String address, String password, String phone)
        {
            MsUser user = MsUserFactory.CreateMsUser(username, gender, DOB, phone, address, password, "Customer");
            UserRepository.InsertUser(user);
        }

        public static MsUser GetUserByUserName(String username)
        {
            MsUser user = UserRepository.GetUserByUserName(username);
            return user;
        }
        public static String GetUserRole(String userID)
        {
            MsUser user = UserRepository.GetUserByUserId(userID);
            return user.UserRole;
        }

        public static MsUser GetUserByID(String userID)
        {
            MsUser user = UserRepository.GetUserByUserId(userID);
            return user;
        }

        public static String UpdateHandler(String name, String nameBeforeUpdated)
        {
            MsUser user = UserRepository.GetUserByUserName(name);
            if(name.Equals(nameBeforeUpdated))
            {
                return "Success";
            }
            else
            {
                return user == null ? "Success" : "Username already exists";
            }
        }

        public static void UpdateUser(String username, DateTime DOB, String gender, String address, String password, String phone, int UserID)
        {
            UserRepository.UpdateUser(username, DOB, gender, address, password, phone, UserID);
        }
    }
}