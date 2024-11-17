;; enfermedades.clp

(deftemplate enfermedad
    (slot nombre)
    (slot tipo)
    (multislot signos)
    (multislot sintomas)
)

(deftemplate consulta
   (slot tipo)     ; Tipo de enfermedad a consultar
   (multislot sintomas) ; Síntomas a consultar
   (multislot signos)   ; Signos a consultar
   (slot nombre)   ; Nombre específico de la enfermedad a consultar
)

(deffacts enfermedades
    (enfermedad (nombre "Tuberculosis") 
                (tipo "Bacteriana") 
                (signos "fiebre" "sudores nocturnos" "pérdida de peso")
                (sintomas "tos persistente" "dolor en el pecho"))
                
    (enfermedad (nombre "Neumonía bacteriana") 
                (tipo "Bacteriana") 
                (signos "fiebre alta")
                (sintomas "tos productiva" "dificultad para respirar" "dolor en el pecho"))
                
    (enfermedad (nombre "Tétanos") 
                (tipo "Bacteriana") 
                (signos "rigidez en el cuello y mandíbula")
                (sintomas "espasmos musculares" "dificultad para tragar"))
                
    (enfermedad (nombre "Salmonelosis") 
                (tipo "Bacteriana") 
                (signos "fiebre" "náuseas" "vómitos")
                (sintomas "diarrea" "dolor abdominal"))
                
    (enfermedad (nombre "Sífilis") 
                (tipo "Bacteriana") 
                (signos "fiebre" "inflamación de ganglios linfáticos")
                (sintomas "úlceras" "erupciones cutáneas" "fatiga"))
                
    (enfermedad (nombre "Influenza") 
                (tipo "Viral") 
                (signos "fiebre" "dolores musculares")
                (sintomas "tos" "dolor de garganta" "fatiga"))
                
    (enfermedad (nombre "Varicela") 
                (tipo "Viral") 
                (signos "fiebre" "erupciones en la piel")
                (sintomas "picazón" "cansancio"))
                
    (enfermedad (nombre "Hepatitis B") 
                (tipo "Viral") 
                (signos "ictericia" "orina oscura")
                (sintomas "fatiga" "náuseas" "dolor abdominal"))
                
    (enfermedad (nombre "SIDA") 
                (tipo "Viral") 
                (signos "pérdida de peso" "infecciones oportunistas")
                (sintomas "fatiga extrema" "fiebre"))
                
    (enfermedad (nombre "Sarampión") 
                (tipo "Viral") 
                (signos "fiebre alta" "erupción cutánea")
                (sintomas "tos" "ojos rojos" "dolor de garganta"))
)