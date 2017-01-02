#include<fstream>
#define loop(i,j,s) for(int i=j;i<s;i++)
void makeIn(int i,std::fstream* in){
	int size,size2;
	switch(i){
			case 0:
				size=10; break;
			case 1:
				size=15; break;
			case 2:
				size=20; break;
			case 3:
				size=25; break;
			case 4:
				size=30; break;
			case 5:
				size=35;  break;
			case 6:
				size=40; break;
			case 7:
				size=45; break;
			case 8:
				size=50; break;
			case 9:
				size=1000; break;	
			default:
				size=2000; break;									
		}
		int count = size;
		int a,b,c,n;
		(*in)<<size<<"\n";	
		loop(z,0,size){		
			a=rand()%40;
			(*in)<<a<<" ";		
		}
}
