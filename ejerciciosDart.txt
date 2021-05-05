class Vehiculo { 
  int llantas; 
  int asientos; 
  String modelo; 
  String marca;
  
  
  Vehiculo( this.llantas, this.asientos,this.marca, this.modelo );
  
  @override
  String toString() {
    return """ 
    Vehiculo:[ 
      llantas: $llantas
      asientos: $asientos
      modelo: $modelo
      marca: $marca
      ]
    """;
  }
  
}

 bool esMayorFunction( int numeroUno, int numeroDos  ){
   return (numeroUno > numeroDos );
}

int compareToDateNow( String date ){
  DateTime currentTime =  DateTime.now();
  DateTime otherDate = DateTime.parse( date );
  return currentTime.compareTo( otherDate );
}

String compareToDateNowasString( String date ){
  DateTime currentTime =  DateTime.now();
  DateTime otherDate = DateTime.parse( date );
  int result = currentTime.compareTo( otherDate );
  return ( ( result >= 0 ) ? 'ahora o en el futuro': ' del pasado' ); 
}

String compareToDateNowasStringTwo( String date ){
  int result =   DateTime.now().compareTo( DateTime.parse( date) );
  return ( ( result >= 0 ) ? 'ahora o en el futuro': ' del pasado' );
  
  
}

void main() {
 
  print( compareToDateNowasString('2020-11-20') );
  
  print( compareToDateNowasString('2022-09-01') );

  
   print( compareToDateNowasStringTwo('2020-11-20') );
  
  print( compareToDateNowasStringTwo('2022-09-01') );
  
  /*
  String momento = ( ( compareToDateNow('2020-11-20') >= 0 ) ? 'ahora o en el futuro': ' del pasado' );
  
  print( momento );

  
  String momentoDos = ( ( compareToDateNow( '2022-09-01' ) >= 0 )? "ahora o en el futura": "del pasado" );

  print( momentoDos );
  
  
  bool isTrue = true;
  bool isTrueTwo = esMayorFunction(5, 6);

 
  String esMayorAsString = ( (esMayorFunction(5, 6) == true)?"si es mayor": "no es mayor" );

  print( esMayorAsString );
  
    if( esMayorFunction(8, 6) ){
      esMayorAsString = "es mayor desde un if";
    } else {
      esMayorAsString = "no es mayor desde un if";
    }

    print( esMayorAsString );
  
  dynamic esMayorDinamico = ( (isTrue != true)? "si es mayor" : 52 );
  
  var esMayorVar = ( ( 5>6 )? "si es mayor tipo var" : 52 );
  bool esMayor = (6>5) ;
  print( esMayor );

  print( esMayorDinamico );
  print( " es mayor de tipo var ${ esMayorVar }" );
  
  DateTime currentDate = DateTime.now();
  print( currentDate.toString() );
  print( currentDate.toIso8601String() );
  print( currentDate.toUtc() );
  print( currentDate.toLocal() );
  
  DateTime date = DateTime.parse('2020-11-20');
  print( date.toString() );
  print( date.toIso8601String() );
  print( date.toUtc() );
  print( date.toLocal() );
  
  print( currentDate.timeZoneName ); 
    
  Duration diff = currentDate.difference(date);
  
  print( " diferencia de dias ${ diff.inDays }" );
  
  String grado = "B"; 
  switch( grado ){
    case "A": {
        print( "Excellent");
      }
      break;
    case "B": {
      print( "good" );
    }
      break;
    
    case "C": {
      print("Fair");
    }
      break;
      
    case "D": {
      print( "Poor");
    }
      break;
      
    default: {
      print( "invalid choice");
    }
      break;
  }
  
  
  int count = 1;
  bool loppWhile = true;
  
  while( loppWhile ) {
    print( " dentro del while ${ count }" );
    count++;
    if( count == 4 ){
      loppWhile = false;
    }
  }
  
  
  int count = 1;
  while( count <= 10 ) {
    print( "dentro del while ${ count }" );
    count++;
    if( count == 4 ){
      break;
    }
  }
  
  print( "afuera del while ");

   
  int n = 10; 
  do{
    print(n);
    n--;
  } while( n > 0 );
  
  print( "salio" );
  
  int num = 5;
  int factorial = 1;
  
  while( num >= 1 ) {
    factorial = factorial * num;
    num--; 
  }
  
  print( "The factorial is ${ factorial }" );
  
  var number = "hola";
  print( number.runtimeType );
  
  if( number == 'hola' ) {
    print( 'hola mundo' );
  } else {
    print( 'este es un numero' );
  }
  
  
  Vehiculo nuevo = new Vehiculo(4, 6,'ultimo modelo');
  dynamic test = 15;
  print( test.runtimeType );
  print( test.toString() );
  print( test );
  test = 'hola mundo';
    print( test.runtimeType );
  print( test );
  */
}