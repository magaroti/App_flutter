import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {
	FancyButton({@required this.onPressed});

	final GestureTapCallback onPressed;

	@override
	Widget build(BuildContext context) {
	  return RawMaterialButton(
	  fillColor: Colors.deepPurple,
	  splashColor: Colors.purple,
	  child: Padding(
	    padding: const EdgeInsets.symmetric(
	       vertical: 8.0,
	       horizontal: 90.0,
	    ),
	    child: Row(
	    	mainAxisSize: MainAxisSize.min,
	    	children: const <Widget>[
	    	   	 Icon(
	    	     	Icons.account_circle,
	    	     	color: Colors.lightBlue,
	    	   ),

	  		   Text(
	    		 "Crie uma Conta ",
	    		style: TextStyle(
	      		  color: Colors.white,
	    		),
	  		),
		  ],
			),
  ),
	  onPressed: onPressed,
	  shape: const StadiumBorder(),
	  );
	}
}