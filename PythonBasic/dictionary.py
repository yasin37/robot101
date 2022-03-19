""""
Stores value in the form of Key-Value pair
Placed value inside {}
Key must always be unique
Key and Value could be of any data type
Values can be fetched by passing its key

Common Methods can be used with dictionary
1.keys
2.values
3.items
4.find length of dictionary

Creating a dictionary is as simple as placing items inside curly braces {} separated by commas.

An item has a key and a corresponding value that is expressed as a pair (key: value).

While the values can be of any data type and can repeat, keys must be of immutable type (string, number or tuple with immutable elements) and must be unique.

"""

oDic = {"K1":"Val1", 2:"Val2", "K3":32}

print(oDic)
print("*********")
print("Value of 'K1' is " +oDic["K1"])
print("Value of 2 is " +oDic[2])

oDic["K4"]="Val4"
print(oDic)

# Key must be unique. Below key--> "K1" added two time to the dict so last one is used
new_oDic = {"K1":"Val1", 2:"Val2", "K3":32, "K1":37373}
print(new_oDic)

# Example-2
print("*********")
myDic = {"K1":"Value1", "K2":"Value2", 3:"Value3", 4:10}
print(myDic)
print("KEYS of DIC")
print(myDic.keys())

print("VALUES of DIC")
print(myDic.values())

print("EACH ITEM of DIC")
print(myDic.items())

print("Length of DIC")
print(len(myDic))

# empty dictionary
my_dic = {}

# dictionary with integer keys
my_dic = {1: 'apple', 2: 'banana'}

# dictionary with mixed keys
my_dic = {'name': 'John', 1: [2, 4, 3]}

# using dict()
# As you can see from below, we can also create a dictionary using the built-in dict() function.
my_dict = dict({1:'apple', 2:'ball'})


# from sequence having each item as a pair
my_dict = dict([(1,'apple'), (2,'ball')])

