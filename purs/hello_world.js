(()=>{"use strict";String.fromCharCode(65535),String.fromCharCode(0),Number.POSITIVE_INFINITY,Number.NEGATIVE_INFINITY;var n=function(){function n(){}return n.value=new n,n}(),r=function(){function n(n){this.value0=n}return n.create=function(r){return new n(r)},n}();const t=function(n){return function(){console.log(n)}};!function(){var e=new r("Hello howdy hey from purescript");if(e instanceof n)return t("Nothing");if(e instanceof r)return t(e.value0);throw new Error("Failed pattern match at Main (line 11, column 3 - line 13, column 32): "+[e.constructor.name])}()()})();