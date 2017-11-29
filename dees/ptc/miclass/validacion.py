# -*- coding: utf-8 -*-
#Libreria de expresiones regulares en Python
import re

class Validacion():
    """Clase para la validacion de datos"""
    def __init__(self):
        self.info = {
            "status":True,
            "error":None,
            "mensaje":[]
        }

    """Método para la validación de campos alfanuméricos"""
    def valAlfa(self, data):
        re.purge();
        patron = re.compile(r'[^a-zA-Z0-9@_\s\.-]')
        if patron.search(data) != None:
            self.info["status"] =  False #La cadena no coincie con el patron
            self.info["mensaje"].append("El texto '" + data + "' no es un valor alfanumérico")
        #return patron.search(data)

    """Método para validar email"""
    def valEmail(self, mail):
        re.purge()
        patron = re.compile(r'^(\w|[\.-])+@(\w|[-])+(\.[a-zA-Z]+){1,2}$')
        if patron.search(mail) == None:
            self.info["status"] =  False #La cadena no coincie con el patron
            self.info["mensaje"].append("El email '" + mail + "' no es valido")

    """Método para la validación de campos númericos"""
    def valNum(self, data):
        re.purge();
        patron = re.compile(r'[^0-9\.\-]')
        if patron.search(data) != None:
            self.info["status"] =  False #La cadena no coincie con el patron
            self.info["mensaje"].append("El texto '" + data + "' no es un valor numerico")
        #return patron.search(data)