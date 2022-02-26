import random

class Uteis():
    
    def gerar_nome(self,length):
        letters ="AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz"
        result = ""
        for n in range(int(length)):
            result += letters[random.randint(0,len(letters)-1)]
        return result
    
    def gerar_email(self):
        domains = ["teste","mail","outmail","gmail"]
        result= self.gerar_nome(8)+"@"+domains[random.randint(0,len(domains)-1)]+".com"
        return result