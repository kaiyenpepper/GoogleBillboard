public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
    String digits = "";
    double s = 0;
    for(int i = 2; i < 300; i++){
      digits = e.substring(i,i + 10);
      s = Double.parseDouble(digits);
      if(isPrime(s) == true){
        System.out.println(s);
        break;
      }
    }    
} 

public boolean isPrime(double num){
  boolean isPrime = true;
  if(num <= 1){
    isPrime = false;
  }
  for(int i = 2; i <= Math.sqrt(num); i++){
    if(num%i == 0 && num > 1){
      isPrime = false;
    }
  }
  return isPrime;
}
