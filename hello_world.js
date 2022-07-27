require("Storage").write(
".boot0",
`
console.log("hello hi howdy hey")
digitalWrite(D2,1)
setTimeout(() => digitalWrite(D2,0), 2000)
`
)
