-- DROP TABLE IF EXISTS public."Tratados_internacionales_de_Colombia";

CREATE TABLE IF NOT EXISTS public."Tratados_internacionales_de_Colombia"
(
    "NombredelTratado" text COLLATE pg_catalog."default",
    "Bilateral" text COLLATE pg_catalog."default",
    "LugardeAdopcion" text COLLATE pg_catalog."default",
    "FechadeAdopcion" text COLLATE pg_catalog."default",
    "Estados-Organismos" text COLLATE pg_catalog."default",
    "Temas" text COLLATE pg_catalog."default",
    "NaturalezadelTratado" text COLLATE pg_catalog."default",
    "Depositario" text COLLATE pg_catalog."default",
    "SuscribioPorColombia" text COLLATE pg_catalog."default",
    "Vigente" text COLLATE pg_catalog."default",
    "FechaLeyAprobatoria" text COLLATE pg_catalog."default",
    "NumeroLeyAprobatoria" text COLLATE pg_catalog."default",
    "SentenciaFechaLey" text COLLATE pg_catalog."default",
    "SentenciaNumero" text COLLATE pg_catalog."default",
    "DecretoFechaDiarioOficial" text COLLATE pg_catalog."default",
    "DecretoNúmeroDiarioOficial" text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Tratados_internacionales_de_Colombia"
    OWNER to postgres;