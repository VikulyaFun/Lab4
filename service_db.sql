PGDMP     )                    z         
   service_db    15.1    15.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16531 
   service_db    DATABASE     ~   CREATE DATABASE service_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE service_db;
                postgres    false                        2615    16532    service    SCHEMA        CREATE SCHEMA service;
    DROP SCHEMA service;
                postgres    false            ?            1259    16534    users    TABLE     ?   CREATE TABLE service.users (
    id integer NOT NULL,
    full_name character varying NOT NULL,
    login character varying NOT NULL,
    password character varying NOT NULL
);
    DROP TABLE service.users;
       service         heap    postgres    false    6            ?            1259    16533    users_id_seq    SEQUENCE     ?   CREATE SEQUENCE service.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE service.users_id_seq;
       service          postgres    false    216    6            ?           0    0    users_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE service.users_id_seq OWNED BY service.users.id;
          service          postgres    false    215            f           2604    16537    users id    DEFAULT     f   ALTER TABLE ONLY service.users ALTER COLUMN id SET DEFAULT nextval('service.users_id_seq'::regclass);
 8   ALTER TABLE service.users ALTER COLUMN id DROP DEFAULT;
       service          postgres    false    216    215    216            ?          0    16534    users 
   TABLE DATA           @   COPY service.users (id, full_name, login, password) FROM stdin;
    service          postgres    false    216   )
       ?           0    0    users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('service.users_id_seq', 10, true);
          service          postgres    false    215            ?   l  x?EQ?N?0<??"_??????N?p??WI?*???	?"??q?L?*M[Ba?G?!YgדٙIZ????Ɯ??`??v????5.??ĩ=?9??6??4?.w͆?F%?ͪ??7?	??w ?bʔ,?j?S??T??z??f5?G{?{?+???O?I?(5V'H?????????B????<R'2??[QX?ݎ????f???3\C$???&??A?k[?b??ܑ??? _???Z???!??'?????$?!qs\?1?%h?D??'B?"?qeb??.?????2Q?i?_.V?י	??] Rq??8?>2??I??U?oiN"HN???kS??X?y?#	?"f?-??/y??     