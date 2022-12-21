package edu.tomerbu.lec16.data.entities

import androidx.room.ColumnInfo
import androidx.room.Entity
import androidx.room.PrimaryKey
import java.util.UUID

@Entity//(tableName = "people")
data class Person(
    @PrimaryKey(autoGenerate = true) val id: Int,
    val firstName: String,
    val lastName: String,
) {
    constructor(
        firstName: String,
        lastName: String
    ) : this(0, firstName, lastName)
}


@Entity//(tableName = "people")
data class Person2(

    val firstName: String,
    val lastName: String,
) {
    @PrimaryKey  val id: String = UUID.randomUUID().toString()
}
