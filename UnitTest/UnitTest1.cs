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
            Employee objEmployee = new Employee();
            String firstName = "Vinod";
            String lastName = "Pydi";
            String expected = "Vinod";
            String actual;
            //Act  
            actual = objEmployee.GetName(firstName, lastName);
            //Assert  
            Assert.AreEqual(expected, actual);  
        }
    }
}
