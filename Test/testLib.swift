/*Sandor Orszagh simple Test Lib for Repl.it 2020.06.29         */
////////////How work:You dont have to touch this file/////////////
/// NEW test:                                                   //
/// -----------                                                 //
/// Edit the test.swift file                                    //
/// Write a new test func unit copy and rename the templateTest //
/// Update addTest func with addUnit(unit:newTest)              //
/// Follow the struct of templateTest FUNCTIONS                 //
///                                                             //
/// Call the tests:                                             //
/// ----------------                                            //
/// let tests = Test()                                          //
/// tests.iWantToSeeThePassedTestsAlso(true)                    //
/// tests.addTests()                                            //
/// tests.RunAllTests()                                         //
///                                                             //
/// Keep Calm and Debug                                           //
//////////////////////////////////////////////////////////////////

import Foundation
class TestLib
{
  typealias testType = (isPassedTheTest:Bool,nameOfTest:String,comment:String)
  var units : Array<()->testType> = []
  var viewOk : Bool = true
  var errorNumber : Int = 0

  
  func RunAllTests()
  {
    let currentDateTime = Date()
    print("")
    print("TEST UNITS : \(currentDateTime)")
    print("----------------------------------------------------------")
    print("")

    for us in units
    {
      var unitResult : testType
      unitResult = us()

      printTest(fallTheTest:!unitResult.isPassedTheTest,nameOfTest:unitResult.nameOfTest, comment:unitResult.comment)
    }
    //setFruitIndexTestBeetwen0_maxIndex()
    //print("")
    print("----------------------------------------------------------")
    print("\u{001B}[0;32mTD Errors: \(errorNumber)")
  }
/////////////////////////////////////////////////////////////////

  func equal<T: Comparable>(_ expected_: T, _ calculated_: T) -> Bool
  {
    return equal(expected:expected_, calculated:calculated_)
  }

  func equal<T: Comparable>(expected: T, calculated: T) -> Bool
  {
    var ret = false
    if expected == calculated
    {
      ret = true
    }
    return ret
  }

  func iWantToSeeThePassedTestsAlso(_ ok:Bool)
  {
    viewOk = ok
  }
  func configUnit(isPassedTheTest:Bool,nameOfTest:String,comment:String) -> testType
  {
    var result : testType
    result.isPassedTheTest = isPassedTheTest
    result.nameOfTest = nameOfTest
    result.comment = comment
    return result
  }
  
  func addUnit(unit: @escaping ()->testType)
  {
    units.append(unit)
  }
  
  func printOk(ok:String)
  {
    if viewOk 
    {
      print("\u{001B}[0;37m"+ok)
    }
  }

  func printError(error:String)
  {
    print("\u{001B}[0;32m"+error)
  }
  
  func printNil()
  {print("\u{001B}[0;34m"+"!!!!The test not working right!!!!")}
 
  func printTest(fallTheTest:Bool?, nameOfTest:String, comment:String)
  {
    if let fall = fallTheTest 
    {
      if fall
      {
        errorNumber = errorNumber + 1
        printError(error:"Error: \(nameOfTest) \(comment)")
      } else
      {
        printOk(ok:"Ok:  \(nameOfTest) \(comment)") 
      }
    }
    else 
    {
      printNil()
    }
  }
//////////////////////////////////////////////////////////////////////////6  
    //printTest(fallTheTest:fallTheTest, nameOfTest:"slipRowOneTest", comment:" -egy sort csusztatna")

} //End;
