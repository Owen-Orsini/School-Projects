/**
 * This class provides a convenient way to test shuffling methods.
 */
 
import java.util.*;
public class Main {
  
  //method stolen from stackoverflow to round up division problems
  public static long roundUp(long num, long divisor)
  { 
    return (num + divisor - 1) / divisor;
  }
  public static int getRandomNumber(int min, int max)
  {
    // double rand = (Math.random() * 
    // return rand.nextInt
    Random r = new Random();
    
    return r.nextInt(((max - min) + 1 ) + min);
  }
  public static String flip()
  {
    int tempval = getRandomNumber(1, 3);
    if (tempval < 2)
    {
      return "tails.";
    }
    else
    {
      return "heads.";
    }
  }
  public static boolean arePermutations(int[] array1, int[] array2)
  {
    // check if arrays same length, if not return false, if yes continue
    if (array1.length != array2.length)
    {
      return false;
    }
    // sort array1
    for (int i = 0; i < array1.length - 1; i++)
    {
      int smallest = i;
      for (int j = i+1; j < array1.length; j++)
      {
        if(array1[j] < array1[smallest])
        {
          smallest = j;
        }
      }
      int temp = array1[smallest];
      array1[smallest] = array1[i];
      array1[i] = temp;
    }
    // sort array2
    for (int i = 0; i < array2.length - 1; i++)
    {
      int smallest = i;
      for (int j = i+1; j < array2.length; j++)
      {
        if(array2[j] < array2[smallest])
        {
          smallest = j;
        }
      }
      int temp = array2[smallest];
      array2[smallest] = array2[i];
      array2[i] = temp;
    }

    for (int i = 0; i < array2.length; i++)
    {
      if (array1[i] != array2[i])
      {
        i = array2.length;
        return false;
      }
    }
    return true;
    
  }

	/**
	 * The number of consecutive shuffle steps to be performed in each call
	 * to each sorting procedure.
	 */
	private static final int SHUFFLE_COUNT = 5;


	/**
	 * Tests shuffling methods.
	 * @param args is not used.
	 */
	public static void main(String[] args) {

    
		System.out.println("Results of " + SHUFFLE_COUNT +
								 " consecutive perfect shuffles:");
		int[] values1 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
		for (int j = 1; j <= SHUFFLE_COUNT; j++) {
			perfectShuffle(values1);
			System.out.print("  " + j + ":");
			for (int k = 0; k < values1.length; k++) {
				System.out.print(" " + values1[k]);
			}
			System.out.println();
		}
		System.out.println();

		System.out.println("Results of " + SHUFFLE_COUNT +
								 " consecutive efficient selection shuffles:");
		int[] values2 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
		for (int j = 1; j <= SHUFFLE_COUNT; j++) {
			selectionShuffle(values2);
			System.out.print("  " + j + ":");
			for (int k = 0; k < values2.length; k++) {
				System.out.print(" " + values2[k]);
			}
			System.out.println();
		}
		System.out.println();

    System.out.println("Results of " + SHUFFLE_COUNT +
                " consecutive weighted coin flips:");
    for (int j = 1; j <= SHUFFLE_COUNT; j++)
    {
      System.out.println(flip());
    }
    System.out.println();


    int[] val1 = {1, 2, 3, 4, 5, 6, 6};
    int[] val2 = {5, 4, 3, 2, 1, 6, 7};

    boolean perm = arePermutations(val1, val2);
    System.out.println("Permutations? " + perm);

    int[] testval = {1, 2 , 3, 4};
    System.out.println(testval.length);


    // boolean perm = arePermutations(val1, val2);
    // System.out.println("are permutations? "+ perm);
	}


	/**
	 * Apply a "perfect shuffle" to the argument.
	 * The perfect shuffle algorithm splits the deck in half, then interleaves
	 * the cards in one half with the cards in the other.
	 * @param values is an array of integers simulating cards to be shuffled.
	 */
	public static void perfectShuffle(int[] values) 
  {
    //declare valLength to be the length of values
    int valLength = values.length; 
    // System.out.println("Length of values array: " + valLength);

    int halftemp = 0;

    //declare halfLength to be half the value values, rounded up
    if(valLength % 2 == 0)
    {
      halftemp = valLength / 2;
    }
    else
    {
      halftemp = (int) roundUp(valLength, 2); 
    }

    int halfLength = halftemp;

    // System.out.println("Half length: " + halfLength);

     //declare list shuffled to be the length of valLength
    int shuffled[] = new int[valLength];

    //declare k equal to zero
    int k = 0; 

    /** 
    * For j = 0 to halfLength
    *
    */
    for (int j = 0; j < halfLength; j++)
    {
      shuffled[k] = values[j];
      k = k + 2;
    }
    k = 1;
    for (int j = (halfLength); j < (valLength); j++)
    {
      shuffled[k] = values[j];
      k = k + 2;
    }
    for(int i = 0; i < valLength; i++)
    {
      values[i] = shuffled[i];
    }

	}

	/**
	 * Apply an "efficient selection shuffle" to the argument.
	 * The selection shuffle algorithm conceptually maintains two sequences
	 * of cards: the selected cards (initially empty) and the not-yet-selected
	 * cards (initially the entire deck). It repeatedly does the following until
	 * all cards have been selected: randomly remove a card from those not yet
	 * selected and add it to the selected cards.
	 * An efficient version of this algorithm makes use of arrays to avoid
	 * searching for an as-yet-unselected card.
	 * @param values is an array of integers simulating cards to be shuffled.
	 */
	public static void selectionShuffle(int[] values)
  {
    int valLength = values.length;
    int shuffled[] = new int[valLength];
    for(int k = (valLength - 1); k > 1; k--)
    {
      int r = getRandomNumber(0, k);

      int kval = values[k];
      int rval = values[r];

      values[k] = rval;
      values[r] = kval;

    }

	}
}
