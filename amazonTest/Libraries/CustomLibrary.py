from robot.api.deco import keyword


@keyword("Compare Lists")
def compare_lists(a, b):
    if a == b:
        return True
    else:
        return False


@keyword("Hello World")
def hello():
    print("Hello world")


@keyword("User Data")
def userdata_print():
    character_name = "John"
    character_age = 55
    is_male = True

    print("There once a man name " + character_name + ", ")
    print("He was " + character_age + "years old. ")

    character_name = "Mike"
    print("He really liked the name " + character_name + ", ")
    print("He didn't like being " + character_age + "years old. ")
    print("He is an \"Author\"")
    print("But his favorite number is " + str(character_age) + "which is strange  though")


@keyword("Get user inputs")
def enter_userdata():
    name = input("Enter your name: ")
    age = input("Enter age: ")
    print("My name is " + name)
    print("My age is " + age)


@keyword("Mad Lib")
def mad_lib():
    color = input("Enter color: ")
    plural_noun = input("Enter plural noun: ")
    celebrity = input("Enter celebrity name: ")

    print("Roses are " + color)
    print(plural_noun + "are blue")
    print("I love " + celebrity)


@keyword("Handling list")
def lists_handling():
    lucky_number = [2, 5, 4, 7, 6, 8]
    friends = ["Kevin", "Karen", "Jim", "Oscar", "Toby", "Jim"]
    friends.extend(lucky_number)
    print(friends[1])
    print(friends.index("Toby"))
    print(lucky_number.sort())
    print(friends.count("Jim"))
    # Tuple - cannot change or modify
    coordinates = (4, 5)
    print(coordinates[0])


@keyword("Cube a number")
def cube(num):
    return num * num * num


@keyword("Calculator")
def calculator():
    num1 = float(input("Enter number 1: "))
    opr = input("Enter operator: ")
    num2 = float(input("Enter number 2"))

    if opr == '+':
        print("Addition: " + num1 + num2)
    elif opr == '-':
        print("Subtraction: " + num1 - num2)
    elif opr == '*':
        print("Multiplication: " + num1 * num2)
    elif opr == '/':
        print("Division: " + num1 / num2)


@keyword("Month convertor")
def month_convertor():
    monthConversions = {
        "Jan": "January",
        "Feb": "February",
        "Mar": "March",
        "Apr": "April",
        "May": "May",
        "Jun": "June",
        "Jul": "July",
        "Aug": "August",
        "Sep": "September",
        "Oct": "October",
        "Nov": "November",
        "Dec": "December"
    }
    print(monthConversions.get("Dec"))


@keyword("Guessing the secret word")
def guess_word():
    secret_word = "giraffe"
    guess = ""
    num_guesses = 0
    guess_limit = 3
    out_of_guesses = False

    while guess != secret_word and not(out_of_guesses):
        if num_guesses < guess_limit:
            guess = input("Enter your guess: ")
            num_guesses += 1
        else:
            out_of_guesses = True
    if out_of_guesses:
        print("Out of guesses, You LOSE!")
    print("You win!!!")


@keyword("Giraffe Translator")
def translator(phrase):
    translation = ""
    for letter in phrase:
        if letter.lower() in "aeiou":

            if letter.isupper():
                translation = translation + "G"
            else:
                translation = translation + "g"
        else:
            translation = translation + letter
    print("Translation: " + translation)


@keyword("Employee Details")
def employees(file):
    employee_file = open(file, "r")
    print(employee_file.read())
    employee_file.close()


@keyword("Enter New Employee Details")
def enter_employees(file, details):
    employee_file = open(file, "a")
    employee_file.write(details)
    print(employee_file.read())
    employee_file.close()