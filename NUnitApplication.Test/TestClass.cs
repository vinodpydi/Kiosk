using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BondTech.HotKeyManagement.WPF;

namespace NUnitApplication.Test
{
    [TestFixture]
    public class TestClass
    {
         [TestCase]
        public void UnitTestMethod()
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
