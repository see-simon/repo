PGDMP         *                {         
   vocaSelect    14.5    14.5     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    65713 
   vocaSelect    DATABASE     W   CREATE DATABASE "vocaSelect" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE "vocaSelect";
                postgres    false            �            1259    65842    selectedsubjects    TABLE     W   CREATE TABLE public.selectedsubjects (
    users_id integer,
    subject_id integer
);
 $   DROP TABLE public.selectedsubjects;
       public         heap    postgres    false            �            1259    65721    subjects    TABLE     k   CREATE TABLE public.subjects (
    subject_name character varying(255),
    subject_id integer NOT NULL
);
    DROP TABLE public.subjects;
       public         heap    postgres    false            �            1259    65834    subjects_subject_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.subjects_subject_id_seq;
       public          postgres    false    210                       0    0    subjects_subject_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.subjects_subject_id_seq OWNED BY public.subjects.subject_id;
          public          postgres    false    212            �            1259    65714    users    TABLE       CREATE TABLE public.users (
    name character varying(255),
    surname character varying(255),
    email character varying(255),
    dob date,
    city character varying(255),
    studentgrade integer,
    password character varying(255),
    users_id integer NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    65741    users_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.users_users_id_seq;
       public          postgres    false    209                       0    0    users_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.users_users_id_seq OWNED BY public.users.users_id;
          public          postgres    false    211            p           2604    65835    subjects subject_id    DEFAULT     z   ALTER TABLE ONLY public.subjects ALTER COLUMN subject_id SET DEFAULT nextval('public.subjects_subject_id_seq'::regclass);
 B   ALTER TABLE public.subjects ALTER COLUMN subject_id DROP DEFAULT;
       public          postgres    false    212    210            o           2604    65742    users users_id    DEFAULT     p   ALTER TABLE ONLY public.users ALTER COLUMN users_id SET DEFAULT nextval('public.users_users_id_seq'::regclass);
 =   ALTER TABLE public.users ALTER COLUMN users_id DROP DEFAULT;
       public          postgres    false    211    209                      0    65842    selectedsubjects 
   TABLE DATA           @   COPY public.selectedsubjects (users_id, subject_id) FROM stdin;
    public          postgres    false    213                    0    65721    subjects 
   TABLE DATA           <   COPY public.subjects (subject_name, subject_id) FROM stdin;
    public          postgres    false    210   1                 0    65714    users 
   TABLE DATA           b   COPY public.users (name, surname, email, dob, city, studentgrade, password, users_id) FROM stdin;
    public          postgres    false    209   >                  0    0    subjects_subject_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.subjects_subject_id_seq', 22, true);
          public          postgres    false    212                       0    0    users_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_users_id_seq', 4, true);
          public          postgres    false    211            t           2606    65837    subjects subjects_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (subject_id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public            postgres    false    210            r           2606    65744    users users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (users_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    209            v           2606    65850 1   selectedsubjects selectedsubjects_subject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.selectedsubjects
    ADD CONSTRAINT selectedsubjects_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.subjects(subject_id);
 [   ALTER TABLE ONLY public.selectedsubjects DROP CONSTRAINT selectedsubjects_subject_id_fkey;
       public          postgres    false    213    210    3444            u           2606    65845 /   selectedsubjects selectedsubjects_users_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.selectedsubjects
    ADD CONSTRAINT selectedsubjects_users_id_fkey FOREIGN KEY (users_id) REFERENCES public.users(users_id);
 Y   ALTER TABLE ONLY public.selectedsubjects DROP CONSTRAINT selectedsubjects_users_id_fkey;
       public          postgres    false    213    3442    209                  x������ � �         �   x�E��n�0�g�)�E���n$C�MЩ���6�
Di��Wu�f<�K.�W����̉��#TX{�$���ލ������,�H���ލ��]�EsI�Ƥ�º��s�r$X��,D������x'7�'�V`�'��[lrq;�kȑu k����g]�Vؐ�L�O6�9��+�~�沬c��}tSч^=xo��R����Y;�<� a����גGH��[5��-wϙ�S�;'�s*߫�� ��r�         �   x�}�1�0F���ċ��R:9t�꒴�1����Mک��>/��p0�awb�JlN�Y�S0�R?$ )ҕ��x��m�FAC��\F�ūp�\|
��6a]�����9q���R�#A�El	$�`��)-�5"~ {[C     