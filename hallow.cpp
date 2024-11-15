#include <bits/stdc++.h>
using namespace std;

int main(int argc, char *argv[]) {
	int c, n;
	while(cin>>c>>n, c != 0 and n != 0){
		vector<int>v(n), aparicion(c, -1);
		aparicion[0] = 0;
		for(int i=0; i<n; i++){
			cin>>v[i];
		}
		long long s = 0;
		for(int i=0; i<n; i++){
			s = (s + v[i])%c;
			if(s == 0){
				for(int j = 0; j<=i; j++){
					cout<<(j+1)<<' ';
				}
				cout<<endl;
				break;
			}
			else if(aparicion[s] >= 0){
				for(int j = aparicion[s]+1; j<=i; j++){
					cout<<(j+1)<<' ';
				}
				cout<<endl;
				break;
			}
			else{
				aparicion[s] = i;
			}
		}
		
		
		
	}
	return 0;
}



