    void checkBST(Node root, Vector<Integer> vector){
        if(root == null){
            return;
        }
        
        checkBST(root.left, vector);
        //System.out.println(root.data);
        vector.addElement(root.data);
        checkBST(root.right, vector);
    }
    boolean checkBST(Node root) {
        Vector<Integer> vec = new Vector<Integer>();
        checkBST(root, vec);
        int temp = -1;
        for (int i = 0; i < vec.size(); i++)
        {
           if(temp < vec.get(i)){ 
               temp = vec.get(i);
           }else{
               return false;
           }
        }
        return true;
    }
