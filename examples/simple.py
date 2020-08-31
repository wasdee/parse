from parse import parse

result = parse("{lat}, {long}", "12.21254, 105.15564")
print(result)
print(result["lat"])
print(result.long)