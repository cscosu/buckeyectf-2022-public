import java.util.Scanner;

import java.io.BufferedReader;
import java.io.FileReader;

public class soda {

    static final int NUM_DRINKS = 12;

    static boolean bystanders = true;
    static float wallet = 5f;

    public static void main(String[] args) {
        VendingMachine machine = new VendingMachine();
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("\nThe prophecy states that worthy customers receive flags in their cans...");
        String cmd;
        while(true) {
            System.out.println("\n" + machine);
            System.out.println(String.format("I have $%.02f in my wallet", wallet));
            System.out.print("command> ");
            try {
                cmd = scanner.nextLine();
                if(cmd.isEmpty()) break;
                String[] tokens = cmd.split(" ");
                processCommand(machine, tokens);
            } catch(Exception e) {
                break;
            }
            
        }
        System.out.println();
        scanner.close();
    }

    private static void processCommand(VendingMachine machine, String[] tokens) {
        if(tokens[0].equalsIgnoreCase("help")) {
            System.out.println(">> You're telling me you don't know how to use a vending machine?");
            return;
        }

        if(tokens[0].equalsIgnoreCase("purchase")) {
            if(tokens.length > 1) {
                try {
                    int which = Integer.parseInt(tokens[1]);
                    if(which < 1 || which > NUM_DRINKS) throw new RuntimeException();
                    machine.buy(which - 1);
                    return;
                } catch(Exception e) {
                    System.out.println(">> That's not a real choice");
                    return;
                }
            } else {
                System.out.println(">> Purchase what?");
                return;
            }
        }

        if(tokens[0].equalsIgnoreCase("punch")) {
            System.out.println(">> That's not a good idea");
            return;
        }

        if(tokens[0].equalsIgnoreCase("kick")) {
            System.out.println(">> That's a terrible idea");
            return;
        }

        if(tokens[0].equalsIgnoreCase("shake")) {
            System.out.println(">> That's the worst idea ever");
            return;
        }

        if(tokens[0].equalsIgnoreCase("shatter")) {
            System.out.println(">> What is wrong with you???");
            return;
        }

        if(tokens[0].equalsIgnoreCase("reach")) {
            if(bystanders) {
                System.out.println(">> I can't do that with people around!\n>> They'll think I'm stealing!");
                return;
            } else {
                int knocked = machine.reach();
                machine.dropped += knocked;
                if(knocked > 0) {
                    System.out.println(">> Ok, here goes... gonna reach through the door and try to knock it down...");
                    pause(3);
                    System.out.println(">> !!! I heard something fall!");
                } else {
                    System.out.println(">> There's nothing to reach for");
                }
                return;
            }
        }

        if(tokens[0].equalsIgnoreCase("wait")) {
            int waitTime = 0;
            try {
                waitTime = Integer.parseInt(tokens[1]);
            } catch(Exception e) {
                System.out.println(">> Not sure what you mean");
                return;
            }
            pause(waitTime);
            if(waitTime >= 10) {
                bystanders = false;
                System.out.println(">> ...Looks like nobody's around...");
            } else {
                bystanders = true;
                System.out.println(">> People are walking down the street.");
            }
            return;
        }

        if(tokens[0].equalsIgnoreCase("tap")) {
            System.out.println(">> Tapping the glass is harmless, right?");
            pause(1);
            machine.tap();
            System.out.println(">> Not sure if that helped at all...");
            return;
        }

        if(tokens[0].equalsIgnoreCase("grab")) {
            if(machine.dropped > 0) {
                System.out.println(">> Alright!! Let's see what I got!");
                machine.retrieve();
            } else {
                System.out.println(">> There's nothing to grab...");
            }
            return;
        }

        System.out.println(">> Not sure what you mean");
    }

    private static void printFlag() {
        try {
            BufferedReader br = new BufferedReader(new FileReader("flag.txt"));
            System.out.println(">> WOAH!! There's a flag in here!!");
            String line;
            while ((line = br.readLine()) != null) {
                System.out.println(line);
            }
        } catch(Exception e) {
            System.out.println(">> You find a piece of paper in the can! It reads:");
            System.out.println("\n\t\"You are not worthy\"\n");
        }
    }

    private static void pause(int seconds) {
        try {
            for(int i = 0; i < seconds; i++) {
                System.out.print(". ");
                Thread.sleep(1000);
            }
        } catch(Exception e) {}
        System.out.println();
    }
    
    static class VendingMachine {

        Drink[] drinks = new Drink[NUM_DRINKS];
        public int dropped = 0;

        public VendingMachine()
        {
            for(int i = 0; i < NUM_DRINKS; i++) {
                drinks[i] = new Drink();
            }
        }

        public boolean hasDroppedDrinks() {
            for(int i = 0; i < NUM_DRINKS; i++) {
                if(drinks[i].status == Drink.DrinkStatus.DROPPED) {
                    return true;
                }
            }
            return false;
        }

        public void buy(int index) {
            if(drinks[index].status != Drink.DrinkStatus.READY) {
                System.out.println(">> [OUT OF STOCK]");
                return;
            }

            if(wallet > drinks[index].cost) {
                System.out.println(">> [VENDING]");
                pause(5);
                System.out.println(">> ...Wait... IT'S STUCK?? NOOOOOO");
                drinks[index].status = Drink.DrinkStatus.STUCK;
                wallet = wallet - drinks[index].cost;
                return;
            }

            System.out.println(">> I don't have enough money :(");
        }

        public void tap() {
            for(int i = 0; i < NUM_DRINKS; i++) {
                if(drinks[i].status == Drink.DrinkStatus.STUCK && drinks[i].stuck > 0) {
                    drinks[i].stuck--;
                }
            }
        }

        public int reach() {
            int dropped = 0;
            for(int i = 0; i < NUM_DRINKS; i++) {
                if(drinks[i].status == Drink.DrinkStatus.STUCK && drinks[i].stuck == 0) {
                    drinks[i].status = Drink.DrinkStatus.DROPPED;
                    dropped++;
                }
            }
            return dropped;
        }

        public void retrieve() {
            int indexMax = -1;
            float priceMax = -1f;
            for(int i = 0; i < NUM_DRINKS; i++) {
                if(drinks[i].status != Drink.DrinkStatus.EMPTY) {
                    if(drinks[i].cost > priceMax) {
                        indexMax = i;
                        priceMax = drinks[i].cost;
                    }
                }
            }

            if(drinks[indexMax].status == Drink.DrinkStatus.DROPPED) {
                printFlag();
            } else {
                System.out.println(">> No flags in here... was the prophecy a lie...?");
            }
        }

        @Override
        public String toString() {
            String text = "-------".repeat(NUM_DRINKS / 2) + "-\n";
            for(int i = 0; i < 6; i++) {
                for(int j = 0; j < NUM_DRINKS / 2; j++) {
                    text += drinks[j].asText(j+1)[i];
                }
                text += "|\n";
            }
            text += "-------".repeat(NUM_DRINKS / 2) + "-\n";
            for(int i = 0; i < 6; i++) {
                for(int j = NUM_DRINKS / 2; j < NUM_DRINKS; j++) {
                    text += drinks[j].asText(j+1)[i];
                }
                text += "|\n";
            }
            text += "-------".repeat(NUM_DRINKS / 2) + "-\n";
            return text;
        }
    }

    static class Drink {

        float cost;
        DrinkStatus status;
        int stuck;

        public Drink() {
            cost = (float)(Math.random() * 6);
            status = (Math.random() > .75f) ? DrinkStatus.EMPTY : DrinkStatus.READY;
            stuck = 3;
        }

        public String getCostLabel() {
            return String.format("%1.02f", cost);
        }

        public String[] asText(int spot) {
            String empty[] =
            { "| " + spot + (spot < 10 ? "    " : "   "),
              "|      ",
              "|      ",
              "|      ",
              "|      ",
              "| " + getCostLabel() + " "};

            if(status != DrinkStatus.EMPTY && status != DrinkStatus.DROPPED) {
                String occupied[] =
                { 
                  "| " + spot + (spot < 10 ? "    " : "   "),
                  "|  __  ",
                  status == DrinkStatus.STUCK ? "| |**| " : "| |  | ",
                  "| |__| ",
                  "|      ",
                  "| " + getCostLabel() + " "};
                return occupied;
            }

            return empty;
        }

        enum DrinkStatus {
            EMPTY,
            READY,
            STUCK,
            DROPPED
        }
    }
}
