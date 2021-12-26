INSERT INTO public."InformacionPais"(
    "NombredelTratado", "Bilateral", "LugardeAdopcion", "FechadeAdopcion", "Estados-Organismos", "Temas", "NaturalezadelTratado", "Depositario", "SuscribioPorColombia", "Vigente", "FechaLeyAprobatoria", "NumeroLeyAprobatoria", "SentenciaFechaLey", "SentenciaNumero", "DecretoFechaDiarioOficial", "DecretoNúmeroDiarioOficial", "Paisdeltratado", "Codigodellamadas", "Capital", "Region", "Subregion", "Poblacion", "Area", "Zonahoraria", "Monedas", "Idiomas", "Cantidadfronteras", "Diferenciahoraszonahoraria")
SELECT  "NombredelTratado",
        CASE WHEN "Bilateral" = 'SI' THEN true
             WHEN "Bilateral" = 'NO' THEN false
             ELSE '0'
        END "Bilateral",
        REPLACE("LugardeAdopcion", '(NO REGISTRA)', 'NULL') AS "LugardeAdopcion",
        CAST("FechadeAdopcion" AS DATE)AS "FechadeAdopcion",
        REPLACE("EstadosOrganismos", '(NO REGISTRA)', 'NULL') AS "Estados-Organismos",
        REPLACE("Temas", '(NO REGISTRA)', 'NULL') AS "Temas",
        REPLACE("NaturalezadelTratado", '(NO REGISTRA)', 'NULL') AS "NaturalezadelTratado",
        REPLACE("Depositario", '(NO REGISTRA)', 'NULL') AS "Depositario",
        REPLACE("SuscribioPorColombia", '(NO REGISTRA)', 'NULL') AS "SuscribioPorColombia",
        CASE WHEN "Vigente" = 'SI' THEN true
             WHEN "Vigente" = 'NO' THEN false
             ELSE '0'
        END "Vigente",
        CAST("FechaLeyAprobatoria" AS DATE) AS "FechaLeyAprobatoria",
        REPLACE("NumeroLeyAprobatoria", '(NO REGISTRA)', 'NULL') AS "NumeroLeyAprobatoria",
        CAST("SentenciaFechaLey" AS DATE) AS "SentenciaFechaLey",
        REPLACE("SentenciaNumero", '(NO REGISTRA)', 'NULL') AS "SentenciaNumero",
        CAST("DecretoFechaDiarioOficial" AS DATE) AS "DecretoFechaDiarioOficial",
        REPLACE("DecretoNúmeroDiarioOficial", '(NO REGISTRA)', 'NULL') AS "DecretoNúmeroDiarioOficial",
        "Paisdeltratado",
        "Codigodellamadas",
        "Capital",
        "Region",
        "Subregion",
        "Poblacion",
        "Area",
        "Zonahoraria",
        "Monedas",
        "Idiomas",
        0 AS "Cantidadfronteras",
        0 AS "Diferenciahoraszonahoraria"
FROM public."Tratados_internacionales_de_Colombia" t
INNER JOIN public."API_Paises" api
    ON UPPER(t."LugardeAdopcion") = UPPER(API."Capital");