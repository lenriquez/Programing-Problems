/* Hidden stub code will pass a root argument to the function below. Complete the function to solve the challenge. Hint: you may want to write one or more helper functions.  

The Node class is defined as follows:*/
    class Node {
        int data;
        Node left;
        Node right;
     }


class Solution{

    boolean checkBST(Node node){
      if (node == null){
        return true;
      }
      
      boolean left = node.left != null? node.left.data < node.data: true;      
      boolean right = node.right != null ? node.right.data > node.data : true;
      return (right && left) ? checkBST(node.right) && checkBST(node.left) : false;
    }

}

