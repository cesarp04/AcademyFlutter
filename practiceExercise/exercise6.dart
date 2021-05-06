class Reloj {

  int modo;
  int hora;
  int minutos;
  int segundos;

  Reloj(this.modo,this.hora,this.minutos,this.segundos);

  void puestoACero(int md, int hh, int mm, int ss){
    modo=md;
    hora=hh % 24;
    minutos=mm % 60;
    segundos=ss % 60;
  }

  void incrementar(){
    segundos++;
    if (segundos==60){
    segundos=0;
    minutos++;
    if(minutos==60){
    minutos=0;
    hora=(hora+1)%24;
    }
  }
}
  void decrementa(){
    segundos--;
    if(segundos<00){
        segundos=59;
        minutos--;
        if(minutos<00){
        minutos=59;
        hora=(hora-1) %24;
        }
    }
}

  String verHora(){

  var hms="Son las ";
    if (modo==12){
      hms+=(hora>12)?"${hora-12}":"$hora";
      hms+=":$minutos:$segundos";
      hms+=(hora>=12)?"pm":"am";
    }else{
      hms+="$hora:$minutos:$segundos";
    }
  return (hms);
  }
}

void main() {
  Reloj reloj1 = new Reloj(12,15,8,8);
  print(reloj1.verHora());
}