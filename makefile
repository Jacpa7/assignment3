.PHONY: clean Dependency.java Main.java
clean:
	-rm *.class Dependency.java Main.java

Dependency.java:
	@curl "https://www.cs.drexel.edu/~smb393/CS571/Dependency.java" --output Dependency.java

Dependency.class: Dependency.java
	javac Dependency.java

Main.java:
	@curl "https://www.cs.drexel.edu/~smb393/CS571/Main.java" --output Main.java

Main.class: clean Main.java Dependency.class
	javac Main.java

run: Main.class
	java Main


