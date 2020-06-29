/*Sandor Orszagh simple Test Lib for Repl.it 2020.06.29         */
////////////How work:ReadMe.txt///////////////////////////////////
////////////Keep Calm and Debug                                   //
//////////////////////////////////////////////////////////////////
class Test : TestLib
{
 func addTests()
 {
    addUnit(unit:templateTest)
 }

///////////////////UNITS FUNCTIONS////////////////////////////////////////////////////////////
  func templateTest() -> (Bool,String,String)
  {
    var result = configUnit(isPassedTheTest:false, nameOfTest:"templateTest", comment:"Just check the test system")
    //WRITE TO HERE YOUR TEST and make update:  result.isPassedTheTest= false or true//////////



    result.isPassedTheTest = 1==2 //
    //result.isPassedTheTest = equal(expected:a,calculated:a)
    ///////////////////////////////////////////////////////////////////////////////////////////
    //result.isPassedTheTest = true
    return result
  }


  
///////////////////////////////////////////////////////////////////////////////////////////////


}