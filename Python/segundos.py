segundos_usuario = input("Por favor, entre com o número de segundos que deseja converter:" )

total_segundos = int(segundos_usuario)

dias = total_segundos // 86400
segundos_restantes_um = total_segundos % 86400
horas = segundos_restantes_um // 3600
segundos_restantes_dois = segundos_restantes_um % 3600
minutos = segundos_restantes_dois // 60
segundos_restantes_final = segundos_restantes_dois % 60

print(dias, "dias, ", horas, "horas, ", minutos, "minutos e", segundos_restantes_final, "segundos.")
