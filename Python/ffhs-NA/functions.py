import networkx as nx
import matplotlib.pyplot as plt
from random import random

def get_highest_degree(G,num=1):
    return (sorted(G.degree,key=lambda x: x[1], reverse=True))[0:num]

def get_all_with_degree(G,deg=1):
    return [s for s in nx.degree(G) if s[1] == deg]

def get_highest_betweenness(G,num=1):
    return sorted(nx.algorithms.centrality.betweenness_centrality(G,normalized=False).items(),key=lambda x: x[1], reverse=True)[0:num]

def generate_random_graph(n, p):
    V = set([v for v in range(n)])
    E = set()
    for combination in combinations(V, 2):
        a = random()
        if a < p:
            E.add(combination)

    g = nx.Graph()
    g.add_nodes_from(V)
    g.add_edges_from(E)
    return g

def remove_node_degree(G,minimum=0):
    d = dict(G.degree)
    remove_node = []
    for node in G:
        if d[node] < minimum: 
            remove_node.append(node)
    for i in remove_node:
        G.remove_node(i)
    return G

def new_graph(source):
    Data = open(source,"r")
    rows = [f.split(',') for f in Data][2:]

    G = nx.Graph()
    for n in rows[0:80000]:
        source = n[0].replace('\n','')
        destination = n[1].replace('\n','')
        G.add_node(source)
        G.add_node(destination)
        G.add_edge(source,destination,alpha=0.5)
        #print(source,desti)
    return G


def show_graph(G):
    d = dict(G.degree)
    pos = nx.spring_layout(G,k=0.15,iterations=50)
    nx.draw(G, pos=pos,node_color='orange', with_labels=True, node_size=[d[k]*10 for k in d],font_size=18,width=0.2)
    plt.rcParams['figure.figsize'] = [30, 25]
    plt.title("Spring Layout")
    plt.show()