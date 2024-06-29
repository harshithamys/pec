struct node* insert(struct node* node, int val) 
{ 
    /* If the tree(subtree) is empty, return a new node by calling newNode func.*/
    if (node == NULL) return newNode(val); 
    /* Else, we will do recursion down the tree to further subtrees */
    if (val < node->val) 
        node->left  = insert(node->left, val); 
    else if (val > node->val) 
        node->right = insert(node->right, val);    
      /* (Safety) return the node's pointer which is unchanged */
    return node; 
} 
