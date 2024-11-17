(defrule diagnosticar-tuberculosis-signos
   ?d <- (enfermedad
            (nombre "Tuberculosis")
            (signos $? "fiebre" $? "sudores nocturnos" $? "pérdida de peso"))
   =>
   (printout t "Diagnóstico parcial: Tuberculosis (según signos)." crlf))

(defrule diagnosticar-neumonia-signos
   ?d <- (enfermedad
            (nombre "Neumonía bacteriana")
            (signos $? "fiebre alta"))
   =>
   (printout t "Diagnóstico parcial: Neumonía bacteriana (según signos)." crlf))

(defrule diagnosticar-tetanos-signos
   ?d <- (enfermedad
            (nombre "Tétanos")
            (signos $? "rigidez en el cuello y mandíbula"))
   =>
   (printout t "Diagnóstico parcial: Tétanos (según signos)." crlf))

(defrule diagnosticar-salmonelosis-signos
   ?d <- (enfermedad
            (nombre "Salmonelosis")
            (signos $? "fiebre" $? "náuseas" $? "vómitos"))
   =>
   (printout t "Diagnóstico parcial: Salmonelosis (según signos)." crlf))

(defrule diagnosticar-sifilis-signos
   ?d <- (enfermedad
            (nombre "Sífilis")
            (signos $? "fiebre" $? "inflamación de ganglios linfáticos"))
   =>
   (printout t "Diagnóstico parcial: Sífilis (según signos)." crlf))

(defrule diagnosticar-influenza-signos
   ?d <- (enfermedad
            (nombre "Influenza")
            (signos $? "fiebre" $? "dolores musculares"))
   =>
   (printout t "Diagnóstico parcial: Influenza (según signos)." crlf))

(defrule diagnosticar-varicela-signos
   ?d <- (enfermedad
            (nombre "Varicela")
            (signos $? "fiebre" $? "erupciones en la piel"))
   =>
   (printout t "Diagnóstico parcial: Varicela (según signos)." crlf))

(defrule diagnosticar-hepatitisb-signos
   ?d <- (enfermedad
            (nombre "Hepatitis B")
            (signos $? "ictericia" $? "orina oscura"))
   =>
   (printout t "Diagnóstico parcial: Hepatitis B (según signos)." crlf))

(defrule diagnosticar-sida-signos
   ?d <- (enfermedad
            (nombre "SIDA")
            (signos $? "pérdida de peso" $? "infecciones oportunistas"))
   =>
   (printout t "Diagnóstico parcial: SIDA (según signos)." crlf))

(defrule diagnosticar-sarampion-signos
   ?d <- (enfermedad
            (nombre "Sarampión")
            (signos $? "fiebre alta" $? "erupción cutánea"))
   =>
   (printout t "Diagnóstico parcial: Sarampión (según signos)." crlf))

(defrule consultar-enfermedad-por-sintomas
   ?consulta <- (consulta (sintomas $?sintomasIngresados))
   ?enfermedad <- (enfermedad (nombre ?nombre) (sintomas $?sintomasEnfermedad))
   (test (subsetp $?sintomasIngresados $?sintomasEnfermedad))
   =>
   (printout t "Consulta: Enfermedad encontrada con los síntomas indicados: " ?nombre crlf)
   (retract ?consulta)
)

(defrule consultar-enfermedad-por-tipo
   ?consulta <- (consulta (tipo ?tipo))
   ?enfermedad <- (enfermedad (nombre ?nombre) (tipo ?tipo))
   =>
   (printout t "Consulta: Enfermedad de tipo " ?tipo " encontrada: " ?nombre crlf)
   (retract ?consulta)  ; Limpiamos el hecho de consulta
)

(defrule consultar-enfermedad-por-signos
   ?consulta <- (consulta (signos $?signosIngresados))
   ?enfermedad <- (enfermedad (nombre ?nombre) (signos $?signosEnfermedad))
   (test (subsetp $?signosIngresados $?signosEnfermedad))
   =>
   (printout t "Consulta: Enfermedad encontrada con los signos indicados: " ?nombre crlf)
   (retract ?consulta)
)

(defrule consultar-enfermedad-por-nombre
   ?consulta <- (consulta (nombre ?nombre))
   ?enfermedad <- (enfermedad (nombre ?nombre))
   =>
   (printout t "Consulta: Enfermedad encontrada con el nombre " ?nombre crlf)
   (retract ?consulta)
)