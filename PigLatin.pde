public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
  //not used
}
public int findFirstVowel(String sWord)
  //precondition: sWord is a valid String of length greater than 0.
  //postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for (int pos = 0; pos < sWord.length(); pos++)
  {
    if (sWord.substring(pos, pos+1).equals("a"))
    {
      return 0;
    } else if (sWord.substring(pos, pos+1).equals("e"))
    {
      return 0;
    } else if (sWord.substring(pos, pos+1).equals("i"))
    {
      return 0;
    } else if (sWord.substring(pos, pos+1).equals("o"))
    {
      return 0;
    } else if (sWord.substring(pos, pos+1).equals("u"))
    {
      return 0;
    }else if ((sWord.substring(pos, pos+1).equals("q") && (sWord.substring(pos+1, pos+2).equals("u"))))
    {
     return -2; 
    }
  }
  return -1;
}

public String pigLatin(String sWord)
  //precondition: sWord is a valid String of length greater than 0
  //postcondition: returns the pig latin equivalent of sWord
{
  if (findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  
  else if(findFirstVowel(sWord) == 0)
  {
   return sWord + "way";
  }
  else if(findFirstVowel(sWord) > 0)
  {
    sWord = sWord.subtstring(1) + sWord(0,1) + "ay";
  }
 // else if(findFirstVowel(sWord) != -1 && findFirstVowel(sWord) == -2)
  //{
  //  return sWord + "way";
 // }
  else
  {
    return sWord;
  }
}