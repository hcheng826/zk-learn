pragma circom 2.1.2;

template Num2Bits (nBits) {
    signal input in;
    signal output b[nBits];
    
    var sum = 0;
    for (var i = 0; i < nBits; i++) {
        b[i] <-- in \ (2 ** i) % 2;
        sum += b[i] * (2 ** i);
        0 === b[i] * (b[i] - 1);
    }

    in === sum;
    
}

component main = Num2Bits(5);

/* INPUT = {
    "in": "15"
} */
