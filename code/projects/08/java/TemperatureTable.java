/* TempeartureTable.java implements the Temperature
* class for use in making a temperature table
* Student: Duncan Van Keulen
* Date: 4/9/2020
*************************************************/
import java.util.Scanner;

public class TemperatureTable {
    public static void main(String[] args) {
        
        Scanner keyboard = new Scanner(System.in);
        
        Temperature baseTemp = new Temperature();
        Temperature limitTemp = new Temperature();
        double stepValue;

        // Have the user enter...
        // The starting temperature
        System.out.println("Input the starting temperature: ");
        baseTemp.enterTemperature(keyboard.nextLine());
        
        // The limit temperature
        System.out.println("Input the limit temperature: ");
        limitTemp.enterTemperature(keyboard.nextLine());

        // The step value
        System.out.println("Input the step value: ");
        stepValue = keyboard.nextDouble();

        // Run through and format the tables while the basetemp is less than the limit temp
        while(baseTemp.lessThan(limitTemp)) {
            System.out.printf("%s    %s    %s\n", 
                    baseTemp.toFahrenheit().toString(), 
                    baseTemp.toCelsius().toString(),
                    baseTemp.toKelvin().toString());
            
            // Raise the value of baseTemp's degree by the stepValue
            baseTemp = baseTemp.raise(baseTemp, stepValue);
        }
    }
}