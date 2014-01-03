

To start with, I will talk about edge covers, and its relation to matching, to a special class of CNF formulae known as Rtw-Mon-CNF, and why its counting version is interesting.
Then I will move on to our main result, an FPTAS for counting edge covers, which is based on a technique known as correlation decay.

Now first of all, basic definitions.

# Edge Covers
The concept of edge cover comes from graph theory and belongs to the class of covering problems. It is defined similarly as vertex covers. Given an undirected input graph, an edge cover of the graph is a set of edges such that every vertex is incident to at least one edge from the set.

Here is an example edge cover for the Petersen graph, we highlight the edges being chosen in red. 

So the decision problem is trivial. We can always take the set of all edges to cover all vertices.
In this example, this edge cover is also a perfect matching.
This is not a coincidence and these two concepts are closely related.

In general, edge cover could be related to many problems such as:
* Matching, vertex cycle cover, or k-factor problem in general. 
* read twice monotone CNF formulae.
* Holant problems in general.

In brief, a perfect matching is always a minimum edge cover. 
So counting perfect matching can be solved by an oracle that counts minimum edge covers, whether exact or approximate counting.
Though the converse is not true. Yet the two concepts are not so different.
Here is an illustration.

A minimum edge cover could be found by extending a maximum matching greedily, an edge for every not-yet covered vertex.

Unlike the decision or optimization problem, the counting version is a #P-complete problem even if the input graph is 3-regular.

So we studied its approximate version, and show an FPTAS.

* More generally, it is a holant problem with signature XXX.
While holant framework has been well-studied in terms of exact counting, its approximate counting counterpart in general is still wide open.
In this view, matching is an at-most-one constraint on every vertex, and edge cover is at-least-one.

* Alternatively, it is also known as read twice monotone CNF (Rtw-Mon-CNF).
Here we view each edge as a boolean variable. As an edge has two incident vertices, it's read-twice. The constraint on every vertex gets translated to a monotone OR function.

# Counting Problems
Next let's introduce what is a counting problem.
* Counting SAT.
* Counting colorings.
* Counting Independent sets (or vertex cover).
* ...

Besides theoretical computer science, counting problems are also related to many problems from other discipline.
* Partition function of Statistical physics.
* Graph polynomials.
* Sampling, learning and inference.
* Query evaluations of probabilistic database.
* ...

# Remarks
A common paradigm for designing approximate counting algorithms is to relate counting with a probability distribution.
This is especially the case in randomized counting, and is also refered as counting vs. sampling.
For randomized sampling, the most successful approach is by Markov chains.
On the other hand, the recent developments of correlation based deterministic FPTAS is changing the picture.
One most successful example is in anti-ferromagnetic two-spin systems.

Comparisons of Paradigms: MCMC vs. correlation decay.

# Main Results
TBA.
