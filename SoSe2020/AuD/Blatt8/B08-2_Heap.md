

Erläutere die Datenstruktur Heap (MinHeap, wie in der Vorlesung vorgestellt) an einem Beispiel und
nenne die Eigenschaften des Heap! Zeige die Darstellung des Heap in einem Feld!


	in Binärbaum ist einHeap, wenn für jeder Knoten größer ist als Elternknoten.
	
		1
	  /   \
	 4	   3
	/ \	  / \
   6   8  7  5
   
   Jeder Knoten ist größer als sein Vorgänger, jedoch sind sie nicht geordnet
	
In einem MinHeap seien alle Elemente verschieden.

    Wo befindet sich das größte Element?
		Das größte Element ist in der untersten Ebene
		
    Ist ein Feld, das in aufsteigend sortierter Reihenfolge vorliegt, ein Heap?
		Ja

Welche Vertauschungen für das Beispiel:

 E, A, S, Y, Q, U, E, S, T, I, O, N
 oder
 5, 1, 19, 25, 17, 21, 5, 19, 20, 9, 15, 14

müssen (bei upHeap und bei downHeap) vorgenommen werden, um ein ungeordnetes Feld in einen MinHeap zu überführen?

Wie groß ist die Komplexität des jeweiligen Vorgehens (upHeap/downHeap) in O-Notation im schlechtesten Fall?
	O(n)