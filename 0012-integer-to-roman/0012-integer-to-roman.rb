# @param {Integer} num
# @return {String}
def int_to_roman(num)
    ones = ["","I","II","III","IV","V","VI","VII","VIII","IX"];
    tens = ["","X","XX","XXX","XL","L","LX","LXX","LXXX","XC"];
    hunders = ["","C","CC","CCC","CD","D","DC","DCC","DCCC","CM"];
    thous = ["","M","MM","MMM"]

    return thous[num/1000] + hunders[(num%1000)/100] +tens[(num%100)/10] + ones[(num%10)] 
end