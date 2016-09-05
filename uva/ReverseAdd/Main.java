
import java.io.IOException;
import java.util.Scanner;

class Main {
    int numberInput = 0;
    StringBuffer resultStr = new StringBuffer ("");  
    
    public long ReadLine(){
      Scanner in = new Scanner(System.in);
      long n = in.nextInt();
      
      if( numberInput == 0 ){
          numberInput = (int)n;
          n = ReadLine();
      }else{
          numberInput-=1;
      }
          
      return n;
    }
    
    public long reverse(long number){
        long reverse = 0L;
 
        while( number != 0 )
        {
            reverse = reverse * 10;
            reverse = reverse + number%10;
            number = number/10;
        }
        return reverse;
    }
    
    public void solve(long number){
        int iteration = 0;
        long result = 0L;
        
        do{
            result = reverse(number);
            // System.out.println(" "+number+" "+result);
            if (number == result){
                resultStr.append(iteration + " " + result);
                if(numberInput != 0){
                    resultStr.append("\n");
                }
                return;
            }else{
                iteration += 1;
                number += result; 
            }
            //System.out.println("really!!");
        }while(iteration < 1000);
    }
         
    public void run(){
       do{
           solve(ReadLine());
        }while( numberInput > 0);
        System.out.println(resultStr);
    }
    
    public static void main(String a[]){
        (new Main()).run();
    }
}

