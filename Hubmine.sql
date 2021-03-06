PGDMP     "                     z            Hubmine    13.5    13.5 (    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16594    Hubmine    DATABASE     f   CREATE DATABASE "Hubmine" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE "Hubmine";
                postgres    false            ?            1259    16656    Clients    TABLE     n  CREATE TABLE public."Clients" (
    "Id_Clients" integer NOT NULL,
    company character varying(50),
    name character varying(50),
    phone_number character varying(13),
    email character varying(50),
    adress text,
    postal_code integer,
    municipality character varying(20),
    "RFC" character varying(13),
    time_attention character varying(50)
);
    DROP TABLE public."Clients";
       public         heap    postgres    false            ?            1259    16654    Clients_Id_Clients_seq    SEQUENCE     ?   CREATE SEQUENCE public."Clients_Id_Clients_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Clients_Id_Clients_seq";
       public          postgres    false    207            ?           0    0    Clients_Id_Clients_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Clients_Id_Clients_seq" OWNED BY public."Clients"."Id_Clients";
          public          postgres    false    206            ?            1259    16667    Projects    TABLE     ?   CREATE TABLE public."Projects" (
    "Id_Projects" integer NOT NULL,
    project_name character varying(50),
    adress_project character varying(45),
    postal_code integer,
    state character varying(20)
);
    DROP TABLE public."Projects";
       public         heap    postgres    false            ?            1259    16665    Projects_Id_Projects_seq    SEQUENCE     ?   CREATE SEQUENCE public."Projects_Id_Projects_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Projects_Id_Projects_seq";
       public          postgres    false    209            ?           0    0    Projects_Id_Projects_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Projects_Id_Projects_seq" OWNED BY public."Projects"."Id_Projects";
          public          postgres    false    208            ?            1259    16645    Quarries    TABLE     M  CREATE TABLE public."Quarries" (
    "Id_Quarries" integer NOT NULL,
    "Company" character varying(50),
    name character varying(50),
    adress text,
    postal_code integer,
    municipality character varying(20),
    "RFC" character varying(13),
    time_attention character varying(50),
    products character varying(45)
);
    DROP TABLE public."Quarries";
       public         heap    postgres    false            ?            1259    16643    Quarries_Id_Quarries_seq    SEQUENCE     ?   CREATE SEQUENCE public."Quarries_Id_Quarries_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Quarries_Id_Quarries_seq";
       public          postgres    false    205            ?           0    0    Quarries_Id_Quarries_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."Quarries_Id_Quarries_seq" OWNED BY public."Quarries"."Id_Quarries";
          public          postgres    false    204            ?            1259    16611    Shipper    TABLE     ?  CREATE TABLE public."Shipper" (
    "IdShipper" integer NOT NULL,
    company character varying(70),
    adress character varying(70),
    postal_code integer,
    municipality character varying(20),
    quantity_unity double precision,
    brand_unity character varying(50),
    tonne_capacity integer,
    "number plate" character varying(10),
    tare_unity character varying(30),
    unity_type character varying
);
    DROP TABLE public."Shipper";
       public         heap    postgres    false            ?            1259    16614    Shipper_IdShipper_seq    SEQUENCE     ?   CREATE SEQUENCE public."Shipper_IdShipper_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Shipper_IdShipper_seq";
       public          postgres    false    200            ?           0    0    Shipper_IdShipper_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Shipper_IdShipper_seq" OWNED BY public."Shipper"."IdShipper";
          public          postgres    false    201            ?            1259    16634    Unities    TABLE     ?  CREATE TABLE public."Unities" (
    "Id_Unity" integer NOT NULL,
    company character varying(70),
    adress text,
    postal_code integer,
    "State" character varying(20),
    quantity_unity integer,
    brand_unity character varying(50),
    tonne_capacity integer,
    number_plate character varying(10),
    tare_unity character varying(30),
    unity_type character varying(30)
);
    DROP TABLE public."Unities";
       public         heap    postgres    false            ?            1259    16632    Unities_Id_Unity_seq    SEQUENCE     ?   CREATE SEQUENCE public."Unities_Id_Unity_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Unities_Id_Unity_seq";
       public          postgres    false    203            ?           0    0    Unities_Id_Unity_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Unities_Id_Unity_seq" OWNED BY public."Unities"."Id_Unity";
          public          postgres    false    202            A           2604    16659    Clients Id_Clients    DEFAULT     ~   ALTER TABLE ONLY public."Clients" ALTER COLUMN "Id_Clients" SET DEFAULT nextval('public."Clients_Id_Clients_seq"'::regclass);
 E   ALTER TABLE public."Clients" ALTER COLUMN "Id_Clients" DROP DEFAULT;
       public          postgres    false    207    206    207            B           2604    16670    Projects Id_Projects    DEFAULT     ?   ALTER TABLE ONLY public."Projects" ALTER COLUMN "Id_Projects" SET DEFAULT nextval('public."Projects_Id_Projects_seq"'::regclass);
 G   ALTER TABLE public."Projects" ALTER COLUMN "Id_Projects" DROP DEFAULT;
       public          postgres    false    208    209    209            @           2604    16648    Quarries Id_Quarries    DEFAULT     ?   ALTER TABLE ONLY public."Quarries" ALTER COLUMN "Id_Quarries" SET DEFAULT nextval('public."Quarries_Id_Quarries_seq"'::regclass);
 G   ALTER TABLE public."Quarries" ALTER COLUMN "Id_Quarries" DROP DEFAULT;
       public          postgres    false    205    204    205            >           2604    16616    Shipper IdShipper    DEFAULT     |   ALTER TABLE ONLY public."Shipper" ALTER COLUMN "IdShipper" SET DEFAULT nextval('public."Shipper_IdShipper_seq"'::regclass);
 D   ALTER TABLE public."Shipper" ALTER COLUMN "IdShipper" DROP DEFAULT;
       public          postgres    false    201    200            ?           2604    16637    Unities Id_Unity    DEFAULT     z   ALTER TABLE ONLY public."Unities" ALTER COLUMN "Id_Unity" SET DEFAULT nextval('public."Unities_Id_Unity_seq"'::regclass);
 C   ALTER TABLE public."Unities" ALTER COLUMN "Id_Unity" DROP DEFAULT;
       public          postgres    false    202    203    203            ?          0    16656    Clients 
   TABLE DATA           ?   COPY public."Clients" ("Id_Clients", company, name, phone_number, email, adress, postal_code, municipality, "RFC", time_attention) FROM stdin;
    public          postgres    false    207   b1       ?          0    16667    Projects 
   TABLE DATA           e   COPY public."Projects" ("Id_Projects", project_name, adress_project, postal_code, state) FROM stdin;
    public          postgres    false    209   1       ?          0    16645    Quarries 
   TABLE DATA           ?   COPY public."Quarries" ("Id_Quarries", "Company", name, adress, postal_code, municipality, "RFC", time_attention, products) FROM stdin;
    public          postgres    false    205   ?1       ?          0    16611    Shipper 
   TABLE DATA           ?   COPY public."Shipper" ("IdShipper", company, adress, postal_code, municipality, quantity_unity, brand_unity, tonne_capacity, "number plate", tare_unity, unity_type) FROM stdin;
    public          postgres    false    200   ?1       ?          0    16634    Unities 
   TABLE DATA           ?   COPY public."Unities" ("Id_Unity", company, adress, postal_code, "State", quantity_unity, brand_unity, tonne_capacity, number_plate, tare_unity, unity_type) FROM stdin;
    public          postgres    false    203   ?1       ?           0    0    Clients_Id_Clients_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Clients_Id_Clients_seq"', 1, false);
          public          postgres    false    206            ?           0    0    Projects_Id_Projects_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Projects_Id_Projects_seq"', 1, false);
          public          postgres    false    208            ?           0    0    Quarries_Id_Quarries_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Quarries_Id_Quarries_seq"', 1, false);
          public          postgres    false    204            ?           0    0    Shipper_IdShipper_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Shipper_IdShipper_seq"', 1, false);
          public          postgres    false    201            ?           0    0    Unities_Id_Unity_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Unities_Id_Unity_seq"', 1, false);
          public          postgres    false    202            J           2606    16664    Clients Clients_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Clients"
    ADD CONSTRAINT "Clients_pkey" PRIMARY KEY ("Id_Clients");
 B   ALTER TABLE ONLY public."Clients" DROP CONSTRAINT "Clients_pkey";
       public            postgres    false    207            L           2606    16672    Projects Projects_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Projects"
    ADD CONSTRAINT "Projects_pkey" PRIMARY KEY ("Id_Projects");
 D   ALTER TABLE ONLY public."Projects" DROP CONSTRAINT "Projects_pkey";
       public            postgres    false    209            H           2606    16653    Quarries Quarries_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Quarries"
    ADD CONSTRAINT "Quarries_pkey" PRIMARY KEY ("Id_Quarries");
 D   ALTER TABLE ONLY public."Quarries" DROP CONSTRAINT "Quarries_pkey";
       public            postgres    false    205            D           2606    16624    Shipper Shipper_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public."Shipper"
    ADD CONSTRAINT "Shipper_pkey" PRIMARY KEY ("IdShipper");
 B   ALTER TABLE ONLY public."Shipper" DROP CONSTRAINT "Shipper_pkey";
       public            postgres    false    200            F           2606    16639    Unities Unities_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Unities"
    ADD CONSTRAINT "Unities_pkey" PRIMARY KEY ("Id_Unity");
 B   ALTER TABLE ONLY public."Unities" DROP CONSTRAINT "Unities_pkey";
       public            postgres    false    203            M           2606    16673    Clients Clientes-Projects    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Clients"
    ADD CONSTRAINT "Clientes-Projects" FOREIGN KEY ("Id_Clients") REFERENCES public."Projects"("Id_Projects") NOT VALID;
 G   ALTER TABLE ONLY public."Clients" DROP CONSTRAINT "Clientes-Projects";
       public          postgres    false    207    209    2892            ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?      ?      x?????? ? ?     