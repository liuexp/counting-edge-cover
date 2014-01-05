
In this talk I will start with edge covers, and what it means to count them.
Some related problems, such as matching, and a special class of CNF formulae known as Rtw-Mon-CNF will also be discussed.
Then I will move on to our main result, an FPTAS for counting edge covers, which is based on a technique known as correlation decay.

Now first of all, basic definitions.

# Edge Covers
An edge cover of the graph is a just set of edges such that every vertex is covered by some edge.

Here is an example.
Let's consider the Petersen graph.
This would be one of its edge covers.
You may check that every vertices are incident to some edge in red.

Now, it's clear that the decision problem is trivial.
We can always take the set of all edges to cover all vertices.

You may also notice that in this particular example, the edge cover is also a perfect matching.
Turns out this is not a coincidence and we'll get to that in a moment.

# Counting Problems
Now, counting edge covers, as its name suggests, is to count the number of edge covers in a graph.

While both decision and optimization (minimum edge covers) version of edge cover is easy, the counting version is more challenging and interesting.
Even if we restrict the input graph to be 3-regular, counting edge covers is still \#P-complete.

In general, besides theoretical computer science, counting problems could be related to many problems from other discipline.
* from statistical physics
* enumerative combinatorics
* machine learning
* game theory
* database community.
* ...

# Approximate Counting

That being said, we agree that counting in general is interesting, however, exact counting is usually hard.
So we are interested in their approximate version, such as the notion of FTPAS and FPRAS

For an algorithm to be an FPTAS, it's required that given a desired multiplicative precision by epsilon, the algorithm outputs an answer within polynomial time that achieves the precison.

A randomized relaxation is known as FPRAS, where random bits are used and it's allowed to only achieve the desired precision with high probability.

In general, edge cover could be related to many problems such as:
* Matching, vertex cycle cover, or k-factor problem in general. 
* read twice monotone CNF formulae.
* Holant problems in general.

# Edge Covers vs. Matching

In brief, counting perfect matching can always be solved by an oracle that counts minimum edge covers, in terms of both exact or approximate counting.

In addition, a minimum edge cover could be found simply by extending a maximum matching greedily, adding an edge for every not-yet-covered vertex.

Here's an illustration, on the left a minimum edge cover could be found just by a perfect matching, and on the right we need to add an edge for the not-yet-covered vertex, in addition to the maximal matching.

# Edge Covers vs. Rtw-Mon-CNF

Another way of interpreting the edge cover is read twice monotone CNF (Rtw-Mon-CNF) formulae.
By read twice, every variable appears at most twice.
And by monotone, the underlying boolean function is monotone, or equivalently, every variable appears positively.

By identifying edges as variables, and vertices as clauses, it's easy to see that these two concepts are essentially the same.

They are representation of one and the other, in the sense that the edge covers of the graph representation are in one-to-one correspondence to satisfying assignment of the formulae.

Here is an illustration of what we mean by edges are variables and vertices are clauses.


# Main Results
Now we are ready for our main result.

Previously, for the counting edge cover problem, only an MCMC based FPRAS is known for graphs with maximum degree $3$.
For the famous counting DNF and counting matching problems, also only FPRAS is known and it's a long standing open problem to derandomize them.
For counting perfect matchings, it's still open whether or not even an FPRAS exists.

For anti-ferromagnetic 2-spins systems, including counting independent sets, an FPTAS is known based on the correlation decay technique.
The interesting thing is that this goes beyond the best known MCMC-based FPRAS and achieved the boundary of approximability in terms of maximum degree.

This leads to the natural question that how far correlation decay technique could get in designing FPTAS for counting problems.
In view of this, our result also provides a supporting evidence in this direction.
We show an FPTAS for counting edge covers in general graphs.
It's correlation decay based, and the tractable range also exceeds the sampling based FPRAS.

Here's a sketch of our proof, let EC(G) be the set of edge covers, the overall workflow is as follows:
First we relate the counting problem with a marginal probability denoted by P(G,e).
Next we derive a computation tree recursion for P(G,e), and truncate it at depth L for some suitable notion of tree depth, and denote it by P(G,e,L).
Finally we show that the error between the truncated estimate and the actual value decays exponentially fast in the chosen tree depth L.

Before we go through the details, let me introduce how sub-problems are constructed.
This notion is gonna be the only concept you ever need to keep in mind to follow the rest of the talk.

A dangling edge is just a singleton edge with only one end-point.

We define two removal operations on the graph, where G minus an edge gives you a copy with that edge removed, and graph removing a vertex means besides removing the vertex, we make every incident edge dangling.

Here is an example, the edge e is dangling on figure a), and for removing a vertex, besides removing the vertex itself, every incident edges is made dangling.
