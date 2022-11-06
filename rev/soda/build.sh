rm -f *.class
rm -f *.jar
javac soda.java
jar --create --file soda.jar -e soda *.class
rm -f *.class

