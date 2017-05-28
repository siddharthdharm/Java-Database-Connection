<%@ page import='java.sql.*' %>

<%

// JDBC Driver Name and URL of your Database
final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
final String URL = "jdbc:mysql://localhost:3306/database_name";   // URL of your Database //

// Credentials of your Database
final String USERNAME = "username";           // Database username //
final String PASSWORD = "password";			  // Database password //

Connection connection = null;
Statement statement = null;

try{

String query;

// Register JDBC driver
Class.forName("com.mysql.jdbc.Driver");

// Starting the connection
connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);

// Query Execution

statement = connection.createStatement();

query = "";

statement.executeQuery(query);						// Use any one of these commands depending on the type of your Query.//
statement.executeUpdate(query);
statement.execute(query);
ResultSet set = statement.executeQuery(query);

while(set.next()){
//Insert your code
}

//Close all connections
set.close();
statement.close();
connection.close();

}

catch(SQLException sqlexception)
{
	//Error Handling -> JDBC and SQl Errors
	sqlexception.printStackTrace();
}

catch(Exception exception)
{
	//Error Handling -> Class.forName
	exception.printStackTrace();
}

finally
{
	//Closes all the resources
	try
	{
		if(statement!=null)
		statement.close();
	}
	catch(SQLException sqlexception2)
	{
		sqlexception2.printStackTrace();
	}

	try
	{
		if(connection!=null)
		connection.close();
	}
	catch(SQLException sqlexception3)
	{
		sqlexception3.printStackTrace();
	}
}

%>