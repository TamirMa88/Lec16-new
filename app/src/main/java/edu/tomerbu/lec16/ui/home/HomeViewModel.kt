package edu.tomerbu.lec16.ui.home

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import edu.tomerbu.lec16.data.Lec16DB
import edu.tomerbu.lec16.data.entities.Person

class HomeViewModel(application: Application) : AndroidViewModel(application) {

    private val _text = MutableLiveData<String>().apply {
        value = "This is home Fragment"
    }
    val text: LiveData<String> = _text

    init {

        val dao = Lec16DB.getDB(application).peopleDao()

        dao.add(Person(1, "dave", "green"))
        dao.add(Person(2, "Leo", "Messi"))

        dao.getPeople().forEach {
            println(it)
        }
    }
}