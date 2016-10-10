https://www.hackerrank.com/challenges/ctci-is-binary-search-tree


// This solution is wrong because return the true for this tree 

		8
	5			9
1		6	3		10


    boolean checkBST(Node root) {
        // Stop condition
        if(root == null){
            return true;
        }
        // INVARIABLE: Node left is less than root.data and right greater than root.data
        // Check the invariable in subtrees 
        if (!(checkBST(root.left) && checkBST(root.right))){
            return false; 
        }
        
        // Check the invariable in root
        int dataLeft = root.left != null ? root.left.data : root.data - 1;
        int dataRight = root.right != null ? root.right.data : root.data + 1;
        return dataLeft < root.data && root.data < dataRight;
    }
