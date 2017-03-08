-- Table: public."Movie"

-- DROP TABLE public."Movie";

CREATE TABLE public."Movie"
(
    "Id" integer[] NOT NULL,
    "Title" character(50) COLLATE pg_catalog."default" NOT NULL,
    "Genre" character(50) COLLATE pg_catalog."default",
    "Release Date" abstime,
    "IMDB Url" character(100) COLLATE pg_catalog."default",
    CONSTRAINT "Movie Primary" PRIMARY KEY ("Id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Movie"
    OWNER to "Owner";



    -- Table: public."Person"

-- DROP TABLE public."Person";

CREATE TABLE public."Person"
(
    "Id" integer NOT NULL,
    "Occupation" character(50) COLLATE pg_catalog."default",
    "Gender" character(2) COLLATE pg_catalog."default",
    "City" character(50) COLLATE pg_catalog."default",
    "Age" integer
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Person"
    OWNER to "Owner";




    -- Table: public."Review"

-- DROP TABLE public."Review";

CREATE TABLE public."Review"
(
    "Id" integer NOT NULL,
    "Person" integer,
    "Movie" integer,
    "Rating" integer,
    CONSTRAINT "Review Primary" PRIMARY KEY ("Id")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Review"
    OWNER to "Owner";

-- Index: fki_Person

-- DROP INDEX public."fki_Person";

CREATE INDEX "fki_Person"
    ON public."Review" USING btree
    (Person)
    TABLESPACE pg_default;
