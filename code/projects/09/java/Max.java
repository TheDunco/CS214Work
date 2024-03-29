/* Max.java finds the maximum values in Java linked lists.
 *
 * Begun by: Dr. Adams, CS 214 at Calvin College.
 * Completed by: Duncan Van Keulen, extended for project 09
 * Date: 4/20/2020
 */

import java.util.LinkedList;
import java.util.Iterator;
import java.util.Collections;

public class Max {

  public static void main(String [] args) {
    // define list1, list2, list3 here ...
    LinkedList<Integer> list1 = new LinkedList<Integer>();
    LinkedList<Integer> list2 = new LinkedList<Integer>();
    LinkedList<Integer> list3 = new LinkedList<Integer>();
    LinkedList<Integer> list4 = new LinkedList<Integer>();
    


    list1.add(99);    // 99, 88, 77, 66, 55
    list1.add(88);    // max is first
    list1.add(77);
    list1.add(66);  
    list1.add(55);

    list2.add(55);    // 55, 66, 77, 88, 99
    list2.add(66);    // max is last
    list2.add(77);  
    list2.add(88);  
    list2.add(99);  
  
    list3.add(55);    // 55, 77, 99, 88, 66
    list3.add(77);    // max is in the middle
    list3.add(99);  
    list3.add(88);  
    list3.add(66);  
  
    print(list1); 
    print(list2); 
    print(list3);

   // display maxima of the 3 lists...
    System.out.println("Max of list1: " + Collections.max(list1));
    System.out.println("Max of list2: " + Collections.max(list2));
    System.out.println("Max of list3: " + Collections.max(list3));

    // test the search method by searching for 99...
    System.out.println("\nThe position of 99 in list1 is: " + search(list1, 99));
    System.out.println("The position of 99 in list2 is: " + search(list2, 99));
    System.out.println("The position of 99 in list3 is: " + search(list3, 99));

    // populate list4 with values not including 99 to test on that
    list4.add(11);
    list4.add(22);
    list4.add(33);
    list4.add(44);
    list4.add(55);
    list4.add(66);
    list4.add(77);
    list4.add(88);
    list4.add(00);

    System.out.print("The position of 99 in list4 (should return -1) is... ");
    if(search(list4, 99) == -1) {
      System.out.println("Requested value not found: search returned (" + search(list4, 99) + ")");
    }


  }

  /**
   * print() displays a LinkedList on the console.
   *
   * @param: aList, a LinkedList<Integer>
   * 
   *                Postcondition: the Integer values in aList have been displayed
   *                to System.out, separated by spaces.
   */
  public static void print(LinkedList<Integer> aList) {
    Iterator<Integer> listIterator = aList.iterator();
    while (listIterator.hasNext()) {
        System.out.print(listIterator.next() + " ");
    }
    System.out.print('\n');
  }

  /*
  * search() traverses and searches a LinkedList for a value
  * @param: aList, a LinkedList<Integer>
  * @param: aValue, an integer; the value to be searched for
  * Return: The location of the value in the list, or -1 if not found
  */
  public static int search(LinkedList<Integer> aList, int aValue) {
    for(int i = 0; i < aList.size(); i++) {
      if(aValue == aList.get(i)) {
        return i;
      }
    }
    return -1;
  }
}
