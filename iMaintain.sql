PGDMP         ,                x         	   iMaintain    11.5    11.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    17442 	   iMaintain    DATABASE     �   CREATE DATABASE "iMaintain" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE "iMaintain";
             postgres    false            �            1259    17474 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false            �            1259    17472    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    202            �            1259    17484    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false            �            1259    17482    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    204            �            1259    17466    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false            �            1259    17464    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    200            �            1259    17492 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false            �            1259    17502    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false            �            1259    17500    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    208            �            1259    17490    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    206            �            1259    17510    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false            �            1259    17508 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    210            �            1259    17570    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false            �            1259    17568    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    212            �            1259    17456    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false            �            1259    17454    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    198            �            1259    17445    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false            �            1259    17443    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    196            �            1259    17601    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false            �            1259    17613    engineer_activity_tracker    TABLE     �   CREATE TABLE public.engineer_activity_tracker (
    id integer NOT NULL,
    activity_title character varying(255) NOT NULL,
    activity_date character varying(255) NOT NULL,
    activity_time character varying(255) NOT NULL
);
 -   DROP TABLE public.engineer_activity_tracker;
       public         postgres    false            �            1259    17611     engineer_activity_tracker_id_seq    SEQUENCE     �   CREATE SEQUENCE public.engineer_activity_tracker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.engineer_activity_tracker_id_seq;
       public       postgres    false    216            �           0    0     engineer_activity_tracker_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.engineer_activity_tracker_id_seq OWNED BY public.engineer_activity_tracker.id;
            public       postgres    false    215            �            1259    17624    engineer_department    TABLE     z   CREATE TABLE public.engineer_department (
    id integer NOT NULL,
    department_name character varying(225) NOT NULL
);
 '   DROP TABLE public.engineer_department;
       public         postgres    false            �            1259    17622    engineer_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.engineer_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.engineer_department_id_seq;
       public       postgres    false    218            �           0    0    engineer_department_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.engineer_department_id_seq OWNED BY public.engineer_department.id;
            public       postgres    false    217            �            1259    17632    engineer_equipment    TABLE     �   CREATE TABLE public.engineer_equipment (
    id integer NOT NULL,
    equipment_name character varying(255) NOT NULL,
    department_id integer NOT NULL,
    equipment_doi character varying(255) NOT NULL,
    equipment_details text NOT NULL
);
 &   DROP TABLE public.engineer_equipment;
       public         postgres    false            �            1259    17630    engineer_equipment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.engineer_equipment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.engineer_equipment_id_seq;
       public       postgres    false    220            �           0    0    engineer_equipment_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.engineer_equipment_id_seq OWNED BY public.engineer_equipment.id;
            public       postgres    false    219            �            1259    17643    engineer_notification    TABLE       CREATE TABLE public.engineer_notification (
    id integer NOT NULL,
    notification_text character varying(255) NOT NULL,
    notification_date character varying(225) NOT NULL,
    notification_time character varying(225) NOT NULL,
    engineer_id integer NOT NULL
);
 )   DROP TABLE public.engineer_notification;
       public         postgres    false            �            1259    17641    engineer_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.engineer_notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.engineer_notification_id_seq;
       public       postgres    false    222            �           0    0    engineer_notification_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.engineer_notification_id_seq OWNED BY public.engineer_notification.id;
            public       postgres    false    221            �            1259    17654    engineer_service    TABLE     �   CREATE TABLE public.engineer_service (
    id integer NOT NULL,
    equipment_id bigint NOT NULL,
    service_date character varying(225) NOT NULL,
    service_status character varying(100) NOT NULL,
    service_remark text NOT NULL
);
 $   DROP TABLE public.engineer_service;
       public         postgres    false            �            1259    17652    engineer_service_id_seq    SEQUENCE     �   CREATE SEQUENCE public.engineer_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.engineer_service_id_seq;
       public       postgres    false    224            �           0    0    engineer_service_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.engineer_service_id_seq OWNED BY public.engineer_service.id;
            public       postgres    false    223            �
           2604    17477    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            �
           2604    17487    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            �
           2604    17469    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    17495    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            �
           2604    17505    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            �
           2604    17513    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    211    211            �
           2604    17573    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            �
           2604    17459    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    17448    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    17616    engineer_activity_tracker id    DEFAULT     �   ALTER TABLE ONLY public.engineer_activity_tracker ALTER COLUMN id SET DEFAULT nextval('public.engineer_activity_tracker_id_seq'::regclass);
 K   ALTER TABLE public.engineer_activity_tracker ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    216    216            �
           2604    17627    engineer_department id    DEFAULT     �   ALTER TABLE ONLY public.engineer_department ALTER COLUMN id SET DEFAULT nextval('public.engineer_department_id_seq'::regclass);
 E   ALTER TABLE public.engineer_department ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    218    218            �
           2604    17635    engineer_equipment id    DEFAULT     ~   ALTER TABLE ONLY public.engineer_equipment ALTER COLUMN id SET DEFAULT nextval('public.engineer_equipment_id_seq'::regclass);
 D   ALTER TABLE public.engineer_equipment ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    219    220            �
           2604    17646    engineer_notification id    DEFAULT     �   ALTER TABLE ONLY public.engineer_notification ALTER COLUMN id SET DEFAULT nextval('public.engineer_notification_id_seq'::regclass);
 G   ALTER TABLE public.engineer_notification ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    222    222            �
           2604    17657    engineer_service id    DEFAULT     z   ALTER TABLE ONLY public.engineer_service ALTER COLUMN id SET DEFAULT nextval('public.engineer_service_id_seq'::regclass);
 B   ALTER TABLE public.engineer_service ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    224    224            �          0    17474 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    203   `�       �          0    17484    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    205   }�       �          0    17466    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    201   ��       �          0    17492 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    207   s�       �          0    17502    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    209   ��       �          0    17510    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    211   �       �          0    17570    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    213   5�       �          0    17456    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    199   R�       �          0    17445    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    197   �       �          0    17601    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    214   ڳ       �          0    17613    engineer_activity_tracker 
   TABLE DATA               e   COPY public.engineer_activity_tracker (id, activity_title, activity_date, activity_time) FROM stdin;
    public       postgres    false    216   ��       �          0    17624    engineer_department 
   TABLE DATA               B   COPY public.engineer_department (id, department_name) FROM stdin;
    public       postgres    false    218   ��       �          0    17632    engineer_equipment 
   TABLE DATA               q   COPY public.engineer_equipment (id, equipment_name, department_id, equipment_doi, equipment_details) FROM stdin;
    public       postgres    false    220   ��       �          0    17643    engineer_notification 
   TABLE DATA               y   COPY public.engineer_notification (id, notification_text, notification_date, notification_time, engineer_id) FROM stdin;
    public       postgres    false    222   �       �          0    17654    engineer_service 
   TABLE DATA               j   COPY public.engineer_service (id, equipment_id, service_date, service_status, service_remark) FROM stdin;
    public       postgres    false    224   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);
            public       postgres    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);
            public       postgres    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    210            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
            public       postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);
            public       postgres    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
            public       postgres    false    196            �           0    0     engineer_activity_tracker_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.engineer_activity_tracker_id_seq', 2, true);
            public       postgres    false    215            �           0    0    engineer_department_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.engineer_department_id_seq', 2, true);
            public       postgres    false    217            �           0    0    engineer_equipment_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.engineer_equipment_id_seq', 2, true);
            public       postgres    false    219            �           0    0    engineer_notification_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.engineer_notification_id_seq', 2, true);
            public       postgres    false    221            �           0    0    engineer_service_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.engineer_service_id_seq', 1, true);
            public       postgres    false    223            �
           2606    17599    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    203            �
           2606    17536 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    205    205            �
           2606    17489 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    205            �
           2606    17479    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    203            �
           2606    17522 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    201    201            �
           2606    17471 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    201                       2606    17507 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    209                       2606    17551 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    209    209            �
           2606    17497    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    207            	           2606    17515 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    211                       2606    17565 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    211    211                        2606    17593     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    207                       2606    17579 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    213            �
           2606    17463 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    199    199            �
           2606    17461 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    199            �
           2606    17453 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    197                       2606    17608 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    214                       2606    17621 8   engineer_activity_tracker engineer_activity_tracker_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.engineer_activity_tracker
    ADD CONSTRAINT engineer_activity_tracker_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.engineer_activity_tracker DROP CONSTRAINT engineer_activity_tracker_pkey;
       public         postgres    false    216                       2606    17629 ,   engineer_department engineer_department_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.engineer_department
    ADD CONSTRAINT engineer_department_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.engineer_department DROP CONSTRAINT engineer_department_pkey;
       public         postgres    false    218                       2606    17640 *   engineer_equipment engineer_equipment_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.engineer_equipment
    ADD CONSTRAINT engineer_equipment_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.engineer_equipment DROP CONSTRAINT engineer_equipment_pkey;
       public         postgres    false    220                       2606    17651 0   engineer_notification engineer_notification_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.engineer_notification
    ADD CONSTRAINT engineer_notification_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.engineer_notification DROP CONSTRAINT engineer_notification_pkey;
       public         postgres    false    222                       2606    17662 &   engineer_service engineer_service_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.engineer_service
    ADD CONSTRAINT engineer_service_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.engineer_service DROP CONSTRAINT engineer_service_pkey;
       public         postgres    false    224            �
           1259    17600    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    203            �
           1259    17537 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    205            �
           1259    17538 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    205            �
           1259    17523 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    201                       1259    17553 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    209                       1259    17552 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    209                       1259    17567 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    211            
           1259    17566 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    211            �
           1259    17594     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    207                       1259    17590 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    213                       1259    17591 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    213                       1259    17610 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    214                       1259    17609 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    214            !           2606    17530 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    201    205    2800                        2606    17525 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    2805    203    205                       2606    17516 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    201    199    2795            #           2606    17545 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    209    2805    203            "           2606    17540 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    2813    207    209            %           2606    17559 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    211    2800    201            $           2606    17554 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    211    207    2813            &           2606    17580 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    213    199    2795            '           2606    17585 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    213    207    2813            �      x������ � �      �      x������ � �      �   �  x�m�[n�0E��U��
'���mTBQp�U����b�M&ό�/��c_�y��U}:�.�y��8܍3��8�iiB���={E-%KO��������6�$��?aCך�Ը`�RN���N�)��ݳ�"�Qp�dy�koJ�o��R�/ N:=� )X����dp�`*�?���|�b�l�t � [��m�l���k�tk�x�ِJsź��`)� �2~�/֬�Ѥ�X��G��ꖄ���z���3a�3�����Y%�_z��p�~�C�|O�����-Գ���F����n�x�Fzn�t��k��K0{:RZ�R�Dr8�@UZ$
m���H�D��i�>CS���$)K�Ti�h�����ºA�-�I[Ü����!����Y�+�T��(�%���i(���,�JR�n����;Z�*�]�R��e�K\
8�D!y��f����h[      �   x  x�}�Mo�@�5��.ؙ�3I�GԢ 5�I3*_"��_��]��{�Y�8ϼ��܃�_O��C��i����:����f/|:owo�������xPY�'\��xφ�$��˂�sfy
��ΒSPr+����k^�Dp�=�w���T����tH�)��b7A��|R��,=�:3\���)��g�������f.�_M�O7���,��xd��2���#�{�x����GF�/&�l UVo>����r7�.O��u��z�&H���Ԭ�|��i@AQ�t�vKE���8�U�?ɇ�T9�Ժ����r��,.]ee�~�$k��N��ud,�X�a`AR(��GlI��c4�V6�=��ё/�48��h�v4?l���N}�К$����~���*B��{c�Z�Ů�^�Q�,�����R�T%�)�Ռ��~�M+z����ݓ3�	P�}/�g���l�&T����Ú�.�6�e�+h�6~�� ,^!�N�+��D�\:lRn~	H�x��v���)3�=L]>}?��u�ә{���ya/��Ēر��45Q�{��K$U$�	ʕ[pa�¤h���w�D�H�`s�ۧ�"t:�?q�-�      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�M�]�0���� 
��.H��`iI�I�=e*o��زߏ,����;���HGΙ��~%�ƒ�[Eɤx��j��D�_�2-��;�$����|3��Y��ͣw�4��4(����۷�m��S�j˻s�u��?h8N�      �   �  x����n�0�3y����<�gYɲ�K-f����_���l����U��h����+Bh7��L_QB��'P� Ϩ�j�$a���3���_�@5<�`e.�)�@sۋ��}��W��_�N=xm.�C�a����]�]I�ڴ��Q?����wm��P�a��%:������G3�cMJ�d�dɒj�G�d���yml%�`�to�.=u�)F�ʚ*fm���������j
���rk�O�(*�	 �� )�gz3�u'\�ĥ?������ )쿋%��6�5��8�w�������]L�a����=�y6��4$�J(� XDu�Է�ch��X�
�|��G�Ħ�M��.�e�����6� �z�R\VO��]��8+`rWd5���c k�%U�N�hm����3g�{�͇J�~j�eӆ@y�`zM9����{v���ےv�����m?��t:���      �      x������ � �      �   �   x�3����,�7T��tQ0�TNN��KMQRp�wqU�OSp��/RN�+R������y%
@���
�FF�ƺ���&V�V�\F�����y%@6�.� %�hnqjQYfr*��X�p��qqq <1F      �   !   x�3�NM.-�,��2��HM�)������� b��      �   �  x�eRM��@='��?��ڲ��� �G.N�&�q4��
��7۬V��oޗsj>�f�!�47��|<����y)�3��K���	i$y��dҗ|���j.�ђ�!�{1�^�g�䊍\%���:�.�4�K��s�#;�w��q\;ޤ�@��]�*��!8�J��]8�P�e�0��@�LAJ������Lz�H���TW��3#�����$��u�;}��{��=�-Ug7�e�XmsB)�Y�P-R��J%q�Is���Vv�����y� X$��$�=7�?~i��w{n^�F�"lh��k!4�q�h�p��㐐fb�W���G4���<M��{W�D�^�n���ThW���(��?�T���!-�;�F{)	Ě^3��*��&-�vd:��~��Q�~N`��c|0_�uZ�^�ֳ��y���סm���`      �   i   x�3�t��MU�W�TpNL��K�4202�50�5��44�26�2��8CRsr|SJ2RJRKR���
R�R2���S��2�S����Y�pr��qqq ��      �   =   x�3�4�4202�50�5� r�S��2���K��3����R�r*��b���� �H     