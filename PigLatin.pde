public void setup() 
{
  String[] lines = loadStrings("words.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
  public int findFirstVowel(String word){
  for(int pos = 0; pos < word.length(); pos++)
    {
      if(word.substring(pos, pos+1).equals("a"))
      {
        return pos;
      }
      else if(word.substring(pos, pos+1).equals("e"))
      {
        return pos;
      }
      else if(word.substring(pos, pos+1).equals("i"))
      {
        return pos;
      }
      else if(word.substring(pos, pos+1).equals("o"))
      {
        return pos;
      }
      else if(word.substring(pos, pos+1).equals("u"))
      {
        return pos;
      }
      
    }
    return -1;
}

public String pigLatin(String word)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(word) == -1)
  {
    return word + "ay";
  }
  else if(findFirstVowel(word) == 0)
  {
    return word + "way";
  }
  else if((word.substring(0,1).equals("q") && (word.substring(1,2).equals("u"))))
      {
        return word.substring(2) + word.substring(0,2) + "ay"; 
      }
  else if(findFirstVowel(word) > 0)
  {
    return word.substring(1) + word.substring(0, 1) + "ay";
  }
  else
  {
    return "ERROR!";
  }
}