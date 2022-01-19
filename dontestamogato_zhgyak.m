	%AHP FELADAT
	
	format rat
	O=[1 1/5 1/9 1; 5 1 1 5; 9 1 1 5; 1 1/5 1/5 1];
	[U,V]=eig(O);
	 w=U(:,1);
	w=w./sum(w)
	lamdamax = max(max(V));
	 CI=(lamdamax - 3)/(3-1)
	 CR= CI/0.58
	
	A=[1 3 1/5; 1/3 1 1/9; 5 9 1]
	[U1,V1]=eig(A);
	 w1=U1(:,1);
	w1=w1./sum(w1)
	lamdamax1 = max(max(V1));
	 CI1=(lamdamax1 - 3)/(3-1)
	 CR1= CI1/0.58


	B=[1 1/5 1/5; 5 1 1; 5 1 1]
	[U2,V2]=eig(B);
	 w2=U2(:,1);
	w2=w2./sum(w2)
lamdamax2 = max(max(V2));
	 CI2=(lamdamax2 - 3)/(3-1)
	 CR2= CI2/0.58

	C=[1 7 3;1/7 1 1/5; 1/3 5 1]
	[U3,V3]=eig(C);
	 w3=U3(:,1);
	w3=w3./sum(w3)
	lamdamax3 = max(max(V3));
	 CI3=(lamdamax3 - 3)/(3-1)
	 CR3= CI3/0.58
	
	D=[1 5 1/3; 1/5 1 1/7; 3 7 1]
	[U4,V4]=eig(D);
	 w4=U4(:,1);
	w4=w4./sum(w4)
	lamdamax4=max(max(V4));
	 CI4=(lamdamax4 - 3)/(3-1)
	 CR4= CI4/0,58                           %ez az RI értéke 3 soros mátrixban
	eredmenytabla=[w1,w2,w3,w4]
	konzisztenciak=[CI1,CR1,CI2,CR2,CI3,CR3,CI4,CR4]
