from termcolor import colored

def main():
    print(colored('Hello, World!', 'red'))
    print(colored('This is a green text.', 'green'))
    print(colored('This text is blue and underlined.', 'blue', attrs=['underline']))

if __name__ == "__main__":
    main()
