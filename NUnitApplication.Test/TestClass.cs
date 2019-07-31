
using BondTech.HotKeyManagement.WPF;
using NUnit.Framework;
using System;

//Add the Whitespaces and changes are not reflecting in Jenkins
namespace NUnitApplication.Test
{
    [TestFixture]
    public class TestClass
    {
        //Add a comment to test the logs
         [TestCase]
        public void UnitTestMethod()
        {
            //Arrange N unit
            Employ objEmployee = new Employ();
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
