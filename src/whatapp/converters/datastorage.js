
var units = ['bytes', 'kilobytes', 'megabytes', 'gigabytes', 'terabytes']
var name = "Byte";
var type = "transform";



function normlize(str) {
    str = str.toLowerCase();
    switch (str) {
        case "bytes":
        case "b":
            return "bytes";
        case "kb":
        case "kilobytes": return "kilobytes";
        case "megabytes":
        case "mb": return "megabytes";
        case "gb":
        case "gigabytes": return "gigabytes";
        case "tb":
        case "terabytes": return "terabytes";
    }
}

function getbase(str) {
    switch (str) {
        case "bytes": return B;
        case "kilobytes": return KB;
        case "megabytes": return MB;
        case "gigabytes": return GB;
        case "terabytes": return TB;
    }
}

function number(str) {
    if (typeof str === 'number') return str;
    if (typeof str === 'string') return parseFloat(str);
    return 0;
}

var B = 1;
var KB = 1024;
var MB = 1024 * KB;
var GB = MB * 1024;
var TB = GB * 1024;

function transform(from, to, input) {

    input = number(input);
    
    from = getbase(normlize(from));
    to = getbase(normlize(to))

    
    if (from < to) {
        return (from * input) / to;
    } else {
        return (from * input) * to;
    }

};
