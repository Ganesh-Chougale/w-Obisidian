const mapper = {
    asciiToVismur: {},

    vismurToAscii: {},

    initialize() {
        for (let i = 0; i < 128; i++) {
            this.asciiToVismur[harcodedAsciiChars[i]] = vismur[i];

            this.vismurToAscii[vismur[i]] = harcodedAsciiChars[i];
        }
    },

    encrypt(text) {
        let result = "";
        let unknown = [];

        for (const char of text) {
            if (this.asciiToVismur[char]) {
                result += this.asciiToVismur[char];
            } else {
                result += char;

                unknown.push(char);
            }
        }

        return {
            result,
            unknown,
        };
    },

    decrypt(text) {
        let result = "";
        let unknown = [];

        for (const char of text) {
            if (this.vismurToAscii[char]) {
                result += this.vismurToAscii[char];
            } else {
                result += char;

                unknown.push(char);
            }
        }

        return {
            result,
            unknown,
        };
    },
loadCustomMapping(mapping){


    this.asciiToVismur = {};

    this.vismurToAscii = {};


    for(const key in mapping){

        this.asciiToVismur[key]
            =
        mapping[key];


        this.vismurToAscii[mapping[key]]
            =
        key;

    }

}

};