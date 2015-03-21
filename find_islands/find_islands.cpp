#include <iostream>
#include <string>
#include <vector>
#include <fstream>

using namespace std;

class Node {
  public:
    int value; 
    Node * next;
    Node ();
};

Node::Node () {
	value = 0;
	next = NULL;
}



int main () {
	int a, b;

	vector<Node> myvector (10);

	fstream myfile("input.txt", ios_base::in);
	while (myfile >> a >> b )
	{
		if( myvector.at(a).value == 0 ) 
		{
			cout<<"Hola"<<endl;
			myvector.at(a).value = a;
			Node * next = new Node();
			next->value = b ;
			myvector.at(a).next = next;
		} 	
	}
	

	return 0;
}