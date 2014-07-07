


string = "(1, (2,(),()),(3,(),()))"

def read str
	# stop condition

	#Create a node
	node = Node.new
	#Add value to the node

	#Add left child 

	#Add right child

end




























     5
  3     7 
 1 4   9 n las sillas de la WWF
 6
    
( 1 () () )

()  -> empty  tree
( 1 () () ) -> single node


( 5 ( 3 ( 1 () () ) ( 4 () () ) )
    ( 7 ( 9 () () ) ( 6 () () ) ) )


class Node:
    datum = None
    left = None
    right = None

def encode(node):
    if node==None:
       return " () "
    else :
       return "( %s %s %s )"%(node.datum, encode(node.left), encode(node.right))


def decode(string):
    tokens = string.split(" ")
    it = iterator(tokens)
    
    def next_token():
        return it.next()
    
    def aux_decode():
        tk = next_token()
        assert tk=="("

        tk = next_token()
        if tk==")":
            return None
          
        node = Node()
        node.datum = tk
        node.left = aux_decode()
        node.right = aux_decode()
        assert next_token()==")"
        
        return node

    return aux_decode()


def decode_file(filename):
   f = open(filename)
   tree = decode(filename.read())
   f.close()
   return tree       
   

def encode_to_file(tree, filename):
   f = open(filename, "w")
   f.write( encode(tree) )
   f.close()


()

( 3 () ( 4 () 4 ) )


tree = node ( ... ( node ... ) )

encode(tree) 
