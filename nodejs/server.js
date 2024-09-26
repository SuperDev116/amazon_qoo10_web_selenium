const express = require( "express" );
const cors = require( "cors" );
const app = express();
const route = require( "./app/routes" );
const amazon = require("./app/controllers/amazon.controller");

var corsOptions = {
	origin: '*'
};

app.use( cors( corsOptions ) );
app.use( express.json() );
app.use( express.urlencoded( {extended: true} ) );

app.get( "/", ( req, res ) => {
	res.json( {message: "Welcome to MERCARI application"} );
} );
route( app );
const PORT = process.env.PORT || 32768;
app.listen( PORT, () => {
	console.log( `Server is running on port ${PORT}.` );
} );

amazon.tracking();