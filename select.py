import sqlite3
bool_v = True

if __name__ == '__main__':
    while bool_v:

        query_number = input("Введіть номер запиту: ")

        if query_number == 'exit':
            bool_v = False
        else:
            with open('queries/query_' + query_number + '.sql', 'r') as file:
                first_line = file.readline()
                print("Запит:", first_line)

                query = file.read()

            conn = sqlite3.connect('hw6.sqlite')
            cursor = conn.cursor()

            cursor.execute(query)
            result = cursor.fetchall()

            print(result)

            conn.close()
