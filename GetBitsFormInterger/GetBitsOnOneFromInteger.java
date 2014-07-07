


public class GetBitsOnOneFromInteger{

	public static int bitCount(int i) {
	    // HD, Figure 5-2
	    i = i - ((i >>> 1) & 0x55555555); //101010101010101010101010101
	    i = (i & 0x33333333) + ((i >>> 2) & 0x33333333); //110011001100110011001100110
	    i = (i + (i >>> 4)) & 0x0f0f0f0f; //111100001111000011110000111
	    i = i + (i >>> 8);
	    i = i + (i >>> 16);
	    return i & 0x3f; //111111
	}

	public static void main(String[] args) {
		System.out.println("--"+GetBitsOnOneFromInteger.bitCount(2));

	}
}