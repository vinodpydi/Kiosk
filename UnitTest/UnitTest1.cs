using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using BondTech.HotKeyManagement.WPF;

namespace UnitTest
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            //Arrange

            Employ objEmployee = new Employ();
            String firstName = "Vinod";
            String lastName = "Pydi";
            String expected = "Vinod";
            String expected1 = "Vinod Pydi";
            String actual;
            String actual1;

            //Act 
            actual = objEmployee.GetName(firstName, lastName);
            actual1 = objEmployee.GetName1(firstName, lastName);

            //Assert  
            Assert.AreEqual(expected, actual);
            Assert.AreEqual(expected1, actual1);  
        }

        [TestMethod]
        public void TestMethod2()
        {
            //Arrange  
            Employ objEmployee = new Employ();
            String firstName = "Vinod";
            String lastName = "Pydi";
           
            String expected1 = "Vinod Pydi";
         
            String actual1;

           
            actual1 = objEmployee.GetName1(firstName, lastName);

            //Assert  
         
            Assert.AreEqual(expected1, actual1);
        }

       
    }
}
