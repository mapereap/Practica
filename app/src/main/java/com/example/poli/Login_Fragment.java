package com.example.poli;


import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;

import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Toast;



public class Login_Fragment  extends Fragment{


       private EditText c_usuario, c_contraseña;

       @Override
        public View onCreateView (LayoutInflater inflater, ViewGroup container,Bundle savedInstanceState){
        //super.onCreate(savedInstanceState);

      //  setContentView(R.layout.fragment_login_);

     //   c_usuario = (EditText) findViewById(R.id.txt_usuario);
     //   c_contraseña = (EditText) findViewById(R.id.txt_contraseña);
           return inflater.inflate(R.layout.fragment_login_,container,false);
    }
        public void logueo (View view){

       // AdminSQLiteOpenHelper admin = new AdminSQLiteOpenHelper(getApplicationContext());
        //SQLiteDatabase BaseDeDatos = admin.getWritableDatabase();

        String usuario = c_usuario.getText().toString();
        String contraseña = c_contraseña.getText().toString();

        if (!usuario.isEmpty() && !contraseña.isEmpty()) {
           // boolean user = admin.usuario(usuario);
            //boolean pass = admin.contraseña(contraseña);
            //if (user == true && pass == true) {
               // Toast.makeText(this, "Sesion iniciada", Toast.LENGTH_SHORT).show();
              //  BaseDeDatos.close();
               // Intent intent = new Intent(Login_Fragment.this, Registro_Fragment.class);
                //startActivity(intent);
            } else {
             //   Toast.makeText(this, "Usuario o contraseña incorrecta", Toast.LENGTH_SHORT).show();
             //   BaseDeDatos.close();
            }
        } //else {
           // Toast.makeText(this, "Hay un campo vacio", Toast.LENGTH_SHORT).show();
          //  BaseDeDatos.close();
        //}
   // }

    }