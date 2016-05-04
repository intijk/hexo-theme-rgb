#include <iostream>
#include "stdio.h"
using namespace std;
class A: public B{
	int a,b,c;
	A():a(1),b(2),c(3){};
	~A();
};
int main(int argc, char* argv[]){
	A* p=new A();
	printf("%d\n", p->a);
	cout<<p->b;	
	return 0;
}
