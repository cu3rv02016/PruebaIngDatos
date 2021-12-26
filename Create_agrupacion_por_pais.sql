-- DROP TABLE IF EXISTS public.agrupacion_por_pais;

CREATE TABLE IF NOT EXISTS public.agrupacion_por_pais
(
    "país" text COLLATE pg_catalog."default",
    cantidaddetratadosvigentes bigint,
    cantidaddetratadosnovigentes bigint,
    "fechaadopciónprimertratado" date,
    diferenciaenmesesdesdeelprimeracuerdoalafechaactual bigint
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.agrupacion_por_pais
    OWNER to postgres;