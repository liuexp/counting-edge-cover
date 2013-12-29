First of all, what is an edge cover.

# Edge Covers
This concept is from graph theory and belongs to the class of covering problems. Given an undirected input graph, an edge cover of it is a set of edges such that every vertex is incident to at least one edge from the set.
Here is an example, we highlight the edges being chosen. 
It's clear that for any graph without isolated vertices, there is always an edge cover which is just the set of all edges.
So the decision problem is trivial.

Edge cover is related to many problems:
* Matching, vertex cycle cover, or k-factor problem in general. 
In brief, a perfect matching is always a minimum edge cover. 
But the converse is not true. Yet they are not that much far away.
Here is an example.
On the left, the edges chosen turns out to be not only an edge cover, but also a perfect matching, while on the right is a maximum matching but not an edge cover.

In fact, the size of min. edge cover plus the size of max. matching is always the number of vertices.
For a graph with perfect matching, they are both exactly at half of the number of vertices.

This led to a greedy algorithm based on a maximum matching that solves the optimization problem of edge cover.

Unlike the decision or optimization problem, the counting version is a #P-complete problem even if the input graph is 3-regular.

So we studied its approximate version, and show an FPTAS.

* More generally, it is a holant problem with signature XXX.
While holant framework has been well-studied in terms of exact counting, its approximate counting counterpart in general is still wide open.
In this view, matching is an at-most-one constraint on every vertex, and edge cover is at-least-one.

* Alternatively, it is also known as read twice monotone CNF (Rtw-Mon-CNF).
Here we view each edge as a boolean variable. As an edge has two incident vertices, it's read-twice. The constraint on every vertex gets translated to a monotone OR function.

# Remarks
Comparisons of Paradigms: MCMC vs. correlation decay.
changing the picture.

# Main Results
TBA.
