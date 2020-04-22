package com.example.poli;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class AdminSQLiteOpenHelper extends SQLiteOpenHelper {

    public static final int DATABASE_VERSION = 1;
    public static final String DATABASE_NAME = "app_movil";
    public static final String TABLA_NAME = "login";
    public static final String COLUMNA_ID = "_id";
    public static final String COLUMNA_USUARIO = "usuario";
    public static final String COLUMNA_CONTRASEÑA = "contraseña";

    public static final String SQL_CREAR = "create table "
            + TABLA_NAME + " (" + COLUMNA_ID
            + " INTEGER primary key autoincrement, "+ COLUMNA_USUARIO
            + " TEXT not null, "+ COLUMNA_CONTRASEÑA
            + " TEXT not null)";


    public AdminSQLiteOpenHelper(Context context){
        super(context, DATABASE_NAME,null,DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(SQL_CREAR);
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

    }
    public void agregar(String usuario, String contraseña){
        SQLiteDatabase db = this.getWritableDatabase();

        ContentValues values = new ContentValues();

        values.put(COLUMNA_USUARIO, usuario);
        values.put(COLUMNA_CONTRASEÑA, contraseña);

        db.insert(TABLA_NAME, null, values);
        db.close();
    }
    public boolean usuario(String usuario) {

        SQLiteDatabase db = this.getWritableDatabase();
        String[] projection = {COLUMNA_ID, COLUMNA_USUARIO, COLUMNA_CONTRASEÑA};

        Cursor cursor =
                db.query(TABLA_NAME, projection,
                        "usuario = ?",
                        new String[]{String.valueOf(usuario)},
                        null,
                        null,
                        null,
                        null);
        boolean autenticacion = cursor.moveToFirst();
        db.close();
        return autenticacion;
    }
    public boolean contraseña(String contraseña){

        SQLiteDatabase db = this.getWritableDatabase();
        String[] projection = {COLUMNA_ID,COLUMNA_USUARIO,COLUMNA_CONTRASEÑA};

        Cursor cursor =
                db.query(TABLA_NAME,projection,
                        "contraseña = ?",
                        new String[] {String.valueOf(contraseña) },
                        null,
                        null,
                        null,
                        null);


        boolean autenticacion = cursor.moveToFirst();
        db.close();
        return autenticacion;

    }
}

