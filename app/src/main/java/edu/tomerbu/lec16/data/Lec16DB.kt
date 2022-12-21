package edu.tomerbu.lec16.data

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import edu.tomerbu.lec16.data.dao.PersonDao
import edu.tomerbu.lec16.data.entities.Person


private const val DB_NAME = "Lec16DB"
private const val DB_VERSION = 1

@Database(entities = [Person::class], version = DB_VERSION)
abstract class Lec16DB : RoomDatabase() {

    //room will implement this method for us:
    abstract fun peopleDao(): PersonDao

    companion object {
        fun getDB(context: Context) = Room.databaseBuilder(
            context,
            Lec16DB::class.java, DB_NAME
        ).allowMainThreadQueries().build()
    }
}