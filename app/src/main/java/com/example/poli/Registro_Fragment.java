package com.example.poli;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Spinner;

public class Registro_Fragment extends Fragment {

    private Spinner spinner1;
    private Spinner eventos;
    private Spinner Horario;
    private Spinner Tipo_espectador;


    @Override
    public View onCreateView (LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState){
        //super.onCreate(savedInstanceState);

        //  setContentView(R.layout.fragment_login_);

        //   c_usuario = (EditText) findViewById(R.id.txt_usuario);
        //   c_contraseña = (EditText) findViewById(R.id.txt_contraseña);
        return inflater.inflate(R.layout.fragment_registro_,container,false);

   /* protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.fragment_registro_);
        getSupportActionBar().setDisplayOptions(ActionBar.DISPLAY_SHOW_CUSTOM);
        getSupportActionBar().setCustomView(R.layout.activity_action_bar); */



    /*    String [] opciones = {"C.C","T.I","Cedula de extranjeria"};
        String [] evento={"4112 - seguridad informatica","3114 - Big Data","2111 - Lo que el mundo no sabe"};
        String [] horarios={"10:00 AM - 1:00 PM","2:00 PM - 5:00 PM","6:00 PM - 9:00 PM"};
        String [] espectador={"Estudiante","Profesor","Invitado (Externo a la universidad)"};
*/

      /*  spinner1 = (Spinner) findViewById(R.id.spinnerid);
        ArrayAdapter<String> adapter= new ArrayAdapter<String>(this, android.R.layout.simple_spinner_item, opciones);
        spinner1.setAdapter(adapter);

        eventos= (Spinner) findViewById(R.id.spinnereventos);
        ArrayAdapter<String> adapter1= new ArrayAdapter<String>(this,android.R.layout.simple_spinner_item,evento);
        eventos.setAdapter(adapter1);

        Horario= (Spinner) findViewById(R.id.spinnerhorarios);
        ArrayAdapter<String> adapter2= new ArrayAdapter<String>(this,android.R.layout.simple_spinner_item,horarios);
        Horario.setAdapter(adapter2);

        Tipo_espectador= (Spinner) findViewById(R.id.spinnerespectador);
        ArrayAdapter<String> adapter3= new ArrayAdapter<String>(this,android.R.layout.simple_spinner_item,espectador);
        Tipo_espectador.setAdapter(adapter3);*/

    }
    public void registro(View view){
      //  Intent login= new Intent(this, EscanearQr.class);
       // startActivity(login);
    }
}
