pragma circom 2.1.6;

include "circomlib/poseidon.circom";
include "../../node_modules/circomlib/circuits/comparators.circom";

template Multiplier (n) {
    signal input in[n];
    signal input total;
    signal inner[n-1];
    signal output l;
    component eqs[n-1];
  

    var length = 2;
    inner[0] <== in[0] * in[1];
    for(var i = 0; i < n-2; i++) {
      inner[i+1] <== inner[i] * in[i+2];
      
      eqs[i] = IsEqual();
      eqs[i].in[0] <== in[i+2];
      eqs[i].in[1] <== 1;

      length += 1 - eqs[i].out;
    }
    inner[n-2] === total;
    l <== length;

    log("length", length);
}

component main { public [ total ] } = Multiplier(32);

/* INPUT = {
    "in": ["17", "23", "2551","130147","19269809840035805056929760223671993375751842210589773276263283621","1","1","1","1","1","1","1","1","1","1","1",
           "1","1","1","1","1","1","1","1","1","1","-1","-1","-1","-1","-1","-1"],
    "total" : "0x0587cb14895017fd63b20b4e4f4219d7be2751e05de9fc542ef8eb089842388f"
} */