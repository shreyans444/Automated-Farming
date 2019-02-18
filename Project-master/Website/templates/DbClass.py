class DbClass:
    def __init(self):
        import mysql.connector as connector
        self.__dsn = {"host":"localhost",
                      "user":"mamo",
                      "passwd":"abc123",
                      "db":"SENSORENDatabase"}

        self.__connection = connector.connect(**self.__dsn)
        self.__cursor = self.__connection.cursor()

    def getproducts(self):
        q = "SELECT * FROM tbl.products"
        self.__cursor.execute(q)
        result = self.__cursor.fetchall()
        self.__cursor.close()
        return result