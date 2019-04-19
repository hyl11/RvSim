
typedef unsigned long long REG;

unsigned R_pow(unsigned x,unsigned y){
	if(y == 0)
		return 1;
	return x*R_pow(x,y-1);
}

unsigned R_getbit(unsigned inst,int b,int e){
	int bits = e - b + 1;
	unsigned t0 = (1 << bits) -1;
	return (inst >> b) & t0;

}


//符号扩展
REG R_ext_signed(int src,int bit){

	REG result = src;
	unsigned sign = R_getbit(src,bit-1,bit-1);
	if(sign == 0)
		return result;
	else{
		REG tmp = ~0;   //64 bit 1
		tmp = (tmp >> bit) << bit;
		return tmp | result;
	}

}

