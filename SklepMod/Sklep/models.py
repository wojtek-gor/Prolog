from django.db import models


class Klient(models.Model):
    imie = models.CharField(max_length=45)
    nazwisko = models.CharField(max_length=60)
    login = models.CharField(max_length=45)
    haslo = models.CharField(max_length=45)
    adres = models.CharField(max_length=90)


class Towar(models.Model):
    nazwa = models.CharField(max_length=45)
    cena = models.DecimalField(decimal_places=2, max_digits=10)
    ilosc = models.IntegerField()


class Zamowienie(models.Model):
    klient = models.ForeignKey(Klient, on_delete=models.CASCADE)


class Koszyk(models.Model):
    zamowienie = models.ForeignKey(Zamowienie, on_delete=models.CASCADE)
    towar = models.ForeignKey(Towar, on_delete=models.CASCADE)


class Platnosc(models.Model):
    zamowienie = models.ForeignKey(Zamowienie, on_delete=models.CASCADE)
    wartosc = models.DecimalField(decimal_places=2, max_digits=10)
    oplacone = (('T', 'Tak'), ('N', 'Nie'))
