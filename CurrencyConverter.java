import java.util.*;
import java.text.DecimalFormat;

public class CurrencyConverter {

        public static void main(String[] args) {
                
                if (args.length == 0){
                         System.out.println("No input data provided. Please run again with input data in correct format(Amount Currency)");
                        
                        } else { 
                        
                        double amount, dollar, pound, code, euro;
                        DecimalFormat f = new DecimalFormat("##.##");
                        String currency = args[1].toLowerCase();
                        System.out.println(currency);  
                        
                        if (args[1].toLowerCase().equals("dollars") || args[1].toLowerCase().equals("pounds") || args[1].toLowerCase().equals("euros")){
                        
                                             amount = Integer.parseInt(args[0]);
                                             // For amounts Conversion
                                             switch (currency){
                                             case "dollars" :
                                             // For Dollar Conversion
                                              pound = amount * 0.74;
                                              System.out.println(amount + " Dollars = " + f.format(pound) + " Pounds");
                                              euro = amount * 0.88;
                                              System.out.println(amount + " Dollars = " + f.format(euro) + " Euros");
                                              break;
                                              case "pounds":
                                              // For Pound Conversion
                                              dollar = amount * 1.36;
                                              System.out.println(amount + " Pounds = " + f.format(dollar) + " Dollars");
                                              euro = amount * 1.19;
                                              System.out.println(amount + " Pound = " + f.format(euro) + " Euros");
                                              break;
                                              case "euros":
                                              // For Euro Conversion
                                              dollar = amount * 1.13;
                                              System.out.println(amount + " Euros = " + f.format(dollar) + " Dollars");
                                              pound = amount * 0.84;
                                              System.out.println(amount + " Euros = " + f.format(pound) + " Pounds");
                                              break;}
                                              
                                              System.out.println("Thank you for using the converter.");
                        } else {
                                             System.out.println("Invaild input data provided. Please run again with input data in correct format(Amount Currency)");
                        }                         
                }
         }

}
//test change
//vid change
