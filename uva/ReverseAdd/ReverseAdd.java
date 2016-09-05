import java.io.*;

public class ReverseAdd {
	// utility function to read from stdin
	static String ReadLn (int maxLg){
        	byte lin[] = new byte [maxLg];
        	int lg = 0, car = -1;
        	String line = "";

        	try{
            		while (lg < maxLg){
                	car = System.in.read();
                	if ((car < 0) || (car == '\n')) break;
                lin [lg++] += car;
            	}
        }
        catch (IOException e)
        {
            return (null);
        }

        if ((car < 0) && (lg == 0)) return (null);  // eof
        return (new String (lin, 0, lg));
    }
	public static void main (String[] arg){
		System.out.println("This is a test");
	}
}
