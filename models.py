from django.db import models


class Klient(models.Model):
    imie = models.CharField(max_length=45)
    login = models.CharField(max_length=45)
    haslo = models.CharField(max_length=45)
    adres = models.CharField(max_length=90)


class Towar(models.Model):
    nazwa = models.CharField(max_length=45)
    cena = models.DecimalField(decimal_places=2)
    ilosc = models.IntegerField()


class Zamowienie(models.Model):
    klient = models.ForeignKey(Klient, on_delete=models.CASCADE)


class Koszyk(models.Model):
    towar = models.ForeignKey(Towar, on_delete=models.CASCADE)
    zamowienie = models.ForeignKey(Zamowienie, on_delete=models.CASCADE)


class Platnosc(models.Model):
    zamowienie = models.ForeignKey(Zamowienie, on_delete=models.CASCADE)
    oplacone = (('T', 'Tak'), ('N', 'Nie'))





