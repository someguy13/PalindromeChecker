public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  return reverse(word).equalsIgnoreCase(clear(word));
}

public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length() - 1; i > -1; i --){
      if(Character.isLetter(str.charAt(i))){
        sNew = sNew + str.charAt(i);
      }
    }
    return sNew;
}

public String clear(String word){
  String sNew = new String();
  for(int i = 0; i < word.length(); i++){
    String t = word.substring(i,i + 1);
    if(Character.isLetter(word.charAt(i))){
      sNew = sNew + word.charAt(i);
    }
  }
  return sNew;
}


