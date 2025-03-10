PGDMP  0                
    |            webappdb    17.0    17.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16388    webappdb    DATABASE     |   CREATE DATABASE webappdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE webappdb;
                     postgres    false                        2615    16867    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                     postgres    false            �           0    0    SCHEMA public    COMMENT         COMMENT ON SCHEMA public IS '';
                        postgres    false    5            �           0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                        postgres    false    5            �            1259    16925 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap r       postgres    false    5            �            1259    16924    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public               postgres    false    5    224            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public               postgres    false    223            �            1259    16934    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap r       postgres    false    5            �            1259    16933    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public               postgres    false    226    5            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public               postgres    false    225            �            1259    16918    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap r       postgres    false    5            �            1259    16917    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public               postgres    false    5    222            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public               postgres    false    221            �            1259    17024    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap r       postgres    false    5            �            1259    17023    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public               postgres    false    5    234            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public               postgres    false    233            �            1259    16878    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap r       postgres    false    5            �            1259    16877    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public               postgres    false    5    220            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public               postgres    false    219            �            1259    16869    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap r       postgres    false    5            �            1259    16868    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public               postgres    false    218    5            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public               postgres    false    217            �            1259    17045    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap r       postgres    false    5            �            1259    16967    main_customuser    TABLE     �  CREATE TABLE public.main_customuser (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    phone_number character varying(15) NOT NULL
);
 #   DROP TABLE public.main_customuser;
       public         heap r       postgres    false    5            �            1259    16980    main_customuser_groups    TABLE     �   CREATE TABLE public.main_customuser_groups (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    group_id integer NOT NULL
);
 *   DROP TABLE public.main_customuser_groups;
       public         heap r       postgres    false    5            �            1259    16979    main_customuser_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_customuser_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.main_customuser_groups_id_seq;
       public               postgres    false    5    230            �           0    0    main_customuser_groups_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.main_customuser_groups_id_seq OWNED BY public.main_customuser_groups.id;
          public               postgres    false    229            �            1259    16966    main_customuser_id_seq    SEQUENCE        CREATE SEQUENCE public.main_customuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.main_customuser_id_seq;
       public               postgres    false    228    5            �           0    0    main_customuser_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.main_customuser_id_seq OWNED BY public.main_customuser.id;
          public               postgres    false    227            �            1259    16987     main_customuser_user_permissions    TABLE     �   CREATE TABLE public.main_customuser_user_permissions (
    id bigint NOT NULL,
    customuser_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 4   DROP TABLE public.main_customuser_user_permissions;
       public         heap r       postgres    false    5            �            1259    16986 '   main_customuser_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_customuser_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.main_customuser_user_permissions_id_seq;
       public               postgres    false    5    232            �           0    0 '   main_customuser_user_permissions_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.main_customuser_user_permissions_id_seq OWNED BY public.main_customuser_user_permissions.id;
          public               postgres    false    231            �            1259    17064    main_discount    TABLE     '  CREATE TABLE public.main_discount (
    id bigint NOT NULL,
    code character varying(255) NOT NULL,
    discount_percentage integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    CONSTRAINT main_discount_discount_percentage_check CHECK ((discount_percentage >= 0))
);
 !   DROP TABLE public.main_discount;
       public         heap r       postgres    false    5            �            1259    17063    main_discount_id_seq    SEQUENCE     }   CREATE SEQUENCE public.main_discount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.main_discount_id_seq;
       public               postgres    false    239    5            �           0    0    main_discount_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.main_discount_id_seq OWNED BY public.main_discount.id;
          public               postgres    false    238            �            1259    17055 	   main_dish    TABLE     �   CREATE TABLE public.main_dish (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    price numeric(10,2) NOT NULL,
    category character varying(50) NOT NULL,
    image character varying(100)
);
    DROP TABLE public.main_dish;
       public         heap r       postgres    false    5            �            1259    17054    main_dish_id_seq    SEQUENCE     y   CREATE SEQUENCE public.main_dish_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.main_dish_id_seq;
       public               postgres    false    5    237            �           0    0    main_dish_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.main_dish_id_seq OWNED BY public.main_dish.id;
          public               postgres    false    236            �            1259    17111    main_employee    TABLE     �   CREATE TABLE public.main_employee (
    id bigint NOT NULL,
    role character varying(10) NOT NULL,
    phone character varying(15) NOT NULL,
    user_id bigint NOT NULL
);
 !   DROP TABLE public.main_employee;
       public         heap r       postgres    false    5            �            1259    17110    main_employee_id_seq    SEQUENCE     }   CREATE SEQUENCE public.main_employee_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.main_employee_id_seq;
       public               postgres    false    5    249            �           0    0    main_employee_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.main_employee_id_seq OWNED BY public.main_employee.id;
          public               postgres    false    248            �            1259    17104    main_notification    TABLE     �   CREATE TABLE public.main_notification (
    id bigint NOT NULL,
    message character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    is_read boolean NOT NULL,
    user_id bigint NOT NULL
);
 %   DROP TABLE public.main_notification;
       public         heap r       postgres    false    5            �            1259    17103    main_notification_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.main_notification_id_seq;
       public               postgres    false    5    247            �           0    0    main_notification_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.main_notification_id_seq OWNED BY public.main_notification.id;
          public               postgres    false    246            �            1259    17090 
   main_order    TABLE     #  CREATE TABLE public.main_order (
    id bigint NOT NULL,
    status character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    price numeric(10,2) NOT NULL,
    product character varying(255) NOT NULL,
    quantity integer NOT NULL,
    user_id bigint NOT NULL
);
    DROP TABLE public.main_order;
       public         heap r       postgres    false    5            �            1259    17089    main_order_id_seq    SEQUENCE     z   CREATE SEQUENCE public.main_order_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.main_order_id_seq;
       public               postgres    false    5    245                        0    0    main_order_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.main_order_id_seq OWNED BY public.main_order.id;
          public               postgres    false    244            �            1259    17072    main_reservation    TABLE     J  CREATE TABLE public.main_reservation (
    id bigint NOT NULL,
    customer_name character varying(255) NOT NULL,
    date timestamp with time zone NOT NULL,
    number_of_people integer NOT NULL,
    status character varying(10) NOT NULL,
    CONSTRAINT main_reservation_number_of_people_check CHECK ((number_of_people >= 0))
);
 $   DROP TABLE public.main_reservation;
       public         heap r       postgres    false    5            �            1259    17071    main_reservation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.main_reservation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.main_reservation_id_seq;
       public               postgres    false    5    241                       0    0    main_reservation_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.main_reservation_id_seq OWNED BY public.main_reservation.id;
          public               postgres    false    240            �            1259    17080    main_review    TABLE       CREATE TABLE public.main_review (
    id bigint NOT NULL,
    customer_name character varying(255) NOT NULL,
    text text NOT NULL,
    rating integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    CONSTRAINT main_review_rating_check CHECK ((rating >= 0))
);
    DROP TABLE public.main_review;
       public         heap r       postgres    false    5            �            1259    17079    main_review_id_seq    SEQUENCE     {   CREATE SEQUENCE public.main_review_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.main_review_id_seq;
       public               postgres    false    5    243                       0    0    main_review_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.main_review_id_seq OWNED BY public.main_review.id;
          public               postgres    false    242            �           2604    16928    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    223    224    224            �           2604    16937    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    16921    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222            �           2604    17027    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    234    233    234            �           2604    16881    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    16872    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �           2604    16970    main_customuser id    DEFAULT     x   ALTER TABLE ONLY public.main_customuser ALTER COLUMN id SET DEFAULT nextval('public.main_customuser_id_seq'::regclass);
 A   ALTER TABLE public.main_customuser ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    227    228    228            �           2604    16983    main_customuser_groups id    DEFAULT     �   ALTER TABLE ONLY public.main_customuser_groups ALTER COLUMN id SET DEFAULT nextval('public.main_customuser_groups_id_seq'::regclass);
 H   ALTER TABLE public.main_customuser_groups ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    230    229    230            �           2604    16990 #   main_customuser_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.main_customuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.main_customuser_user_permissions_id_seq'::regclass);
 R   ALTER TABLE public.main_customuser_user_permissions ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    231    232    232            �           2604    17067    main_discount id    DEFAULT     t   ALTER TABLE ONLY public.main_discount ALTER COLUMN id SET DEFAULT nextval('public.main_discount_id_seq'::regclass);
 ?   ALTER TABLE public.main_discount ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    239    238    239            �           2604    17058    main_dish id    DEFAULT     l   ALTER TABLE ONLY public.main_dish ALTER COLUMN id SET DEFAULT nextval('public.main_dish_id_seq'::regclass);
 ;   ALTER TABLE public.main_dish ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    237    236    237            �           2604    17114    main_employee id    DEFAULT     t   ALTER TABLE ONLY public.main_employee ALTER COLUMN id SET DEFAULT nextval('public.main_employee_id_seq'::regclass);
 ?   ALTER TABLE public.main_employee ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    248    249    249            �           2604    17107    main_notification id    DEFAULT     |   ALTER TABLE ONLY public.main_notification ALTER COLUMN id SET DEFAULT nextval('public.main_notification_id_seq'::regclass);
 C   ALTER TABLE public.main_notification ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    247    246    247            �           2604    17093    main_order id    DEFAULT     n   ALTER TABLE ONLY public.main_order ALTER COLUMN id SET DEFAULT nextval('public.main_order_id_seq'::regclass);
 <   ALTER TABLE public.main_order ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    244    245    245            �           2604    17075    main_reservation id    DEFAULT     z   ALTER TABLE ONLY public.main_reservation ALTER COLUMN id SET DEFAULT nextval('public.main_reservation_id_seq'::regclass);
 B   ALTER TABLE public.main_reservation ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    241    240    241            �           2604    17083    main_review id    DEFAULT     p   ALTER TABLE ONLY public.main_review ALTER COLUMN id SET DEFAULT nextval('public.main_review_id_seq'::regclass);
 =   ALTER TABLE public.main_review ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    242    243    243            �          0    16925 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public               postgres    false    224   �       �          0    16934    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public               postgres    false    226   !�       �          0    16918    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public               postgres    false    222   >�       �          0    17024    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public               postgres    false    234   H�       �          0    16878    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public               postgres    false    220   ��       �          0    16869    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public               postgres    false    218   i�       �          0    17045    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public               postgres    false    235   ��       �          0    16967    main_customuser 
   TABLE DATA           �   COPY public.main_customuser (id, password, last_login, is_superuser, username, first_name, last_name, is_staff, is_active, date_joined, phone_number) FROM stdin;
    public               postgres    false    228   ��       �          0    16980    main_customuser_groups 
   TABLE DATA           M   COPY public.main_customuser_groups (id, customuser_id, group_id) FROM stdin;
    public               postgres    false    230   ��       �          0    16987     main_customuser_user_permissions 
   TABLE DATA           \   COPY public.main_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
    public               postgres    false    232   �       �          0    17064    main_discount 
   TABLE DATA           \   COPY public.main_discount (id, code, discount_percentage, start_date, end_date) FROM stdin;
    public               postgres    false    239   .�       �          0    17055 	   main_dish 
   TABLE DATA           R   COPY public.main_dish (id, name, description, price, category, image) FROM stdin;
    public               postgres    false    237   K�       �          0    17111    main_employee 
   TABLE DATA           A   COPY public.main_employee (id, role, phone, user_id) FROM stdin;
    public               postgres    false    249   ~�       �          0    17104    main_notification 
   TABLE DATA           V   COPY public.main_notification (id, message, created_at, is_read, user_id) FROM stdin;
    public               postgres    false    247   ��       �          0    17090 
   main_order 
   TABLE DATA           _   COPY public.main_order (id, status, created_at, price, product, quantity, user_id) FROM stdin;
    public               postgres    false    245   ��       �          0    17072    main_reservation 
   TABLE DATA           ]   COPY public.main_reservation (id, customer_name, date, number_of_people, status) FROM stdin;
    public               postgres    false    241   	�       �          0    17080    main_review 
   TABLE DATA           R   COPY public.main_review (id, customer_name, text, rating, created_at) FROM stdin;
    public               postgres    false    243   &�                  0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public               postgres    false    223                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public               postgres    false    225                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);
          public               postgres    false    221                       0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);
          public               postgres    false    233                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);
          public               postgres    false    219                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);
          public               postgres    false    217            	           0    0    main_customuser_groups_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.main_customuser_groups_id_seq', 1, false);
          public               postgres    false    229            
           0    0    main_customuser_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.main_customuser_id_seq', 3, true);
          public               postgres    false    227                       0    0 '   main_customuser_user_permissions_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.main_customuser_user_permissions_id_seq', 1, false);
          public               postgres    false    231                       0    0    main_discount_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.main_discount_id_seq', 1, false);
          public               postgres    false    238                       0    0    main_dish_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.main_dish_id_seq', 1, true);
          public               postgres    false    236                       0    0    main_employee_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.main_employee_id_seq', 1, false);
          public               postgres    false    248                       0    0    main_notification_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.main_notification_id_seq', 1, false);
          public               postgres    false    246                       0    0    main_order_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.main_order_id_seq', 1, true);
          public               postgres    false    244                       0    0    main_reservation_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.main_reservation_id_seq', 1, false);
          public               postgres    false    240                       0    0    main_review_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.main_review_id_seq', 1, false);
          public               postgres    false    242            �           2606    16964    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public                 postgres    false    224            �           2606    16950 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public                 postgres    false    226    226            �           2606    16939 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public                 postgres    false    226            �           2606    16930    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public                 postgres    false    224            �           2606    16941 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public                 postgres    false    222    222            �           2606    16923 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public                 postgres    false    222                       2606    17032 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public                 postgres    false    234            �           2606    16885 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public                 postgres    false    220    220            �           2606    16883 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public                 postgres    false    220            �           2606    16876 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public                 postgres    false    218                       2606    17051 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public                 postgres    false    235            	           2606    16996 R   main_customuser_groups main_customuser_groups_customuser_id_group_id_8a5023dd_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_customuser_groups
    ADD CONSTRAINT main_customuser_groups_customuser_id_group_id_8a5023dd_uniq UNIQUE (customuser_id, group_id);
 |   ALTER TABLE ONLY public.main_customuser_groups DROP CONSTRAINT main_customuser_groups_customuser_id_group_id_8a5023dd_uniq;
       public                 postgres    false    230    230                       2606    16985 2   main_customuser_groups main_customuser_groups_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.main_customuser_groups
    ADD CONSTRAINT main_customuser_groups_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.main_customuser_groups DROP CONSTRAINT main_customuser_groups_pkey;
       public                 postgres    false    230                       2606    16978 0   main_customuser main_customuser_phone_number_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.main_customuser
    ADD CONSTRAINT main_customuser_phone_number_key UNIQUE (phone_number);
 Z   ALTER TABLE ONLY public.main_customuser DROP CONSTRAINT main_customuser_phone_number_key;
       public                 postgres    false    228                       2606    16974 $   main_customuser main_customuser_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.main_customuser
    ADD CONSTRAINT main_customuser_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.main_customuser DROP CONSTRAINT main_customuser_pkey;
       public                 postgres    false    228                       2606    17010 `   main_customuser_user_permissions main_customuser_user_per_customuser_id_permission_06a652d8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_customuser_user_permissions
    ADD CONSTRAINT main_customuser_user_per_customuser_id_permission_06a652d8_uniq UNIQUE (customuser_id, permission_id);
 �   ALTER TABLE ONLY public.main_customuser_user_permissions DROP CONSTRAINT main_customuser_user_per_customuser_id_permission_06a652d8_uniq;
       public                 postgres    false    232    232                       2606    16992 F   main_customuser_user_permissions main_customuser_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.main_customuser_user_permissions
    ADD CONSTRAINT main_customuser_user_permissions_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.main_customuser_user_permissions DROP CONSTRAINT main_customuser_user_permissions_pkey;
       public                 postgres    false    232                       2606    16976 ,   main_customuser main_customuser_username_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.main_customuser
    ADD CONSTRAINT main_customuser_username_key UNIQUE (username);
 V   ALTER TABLE ONLY public.main_customuser DROP CONSTRAINT main_customuser_username_key;
       public                 postgres    false    228                       2606    17070     main_discount main_discount_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.main_discount
    ADD CONSTRAINT main_discount_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.main_discount DROP CONSTRAINT main_discount_pkey;
       public                 postgres    false    239                       2606    17062    main_dish main_dish_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.main_dish
    ADD CONSTRAINT main_dish_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.main_dish DROP CONSTRAINT main_dish_pkey;
       public                 postgres    false    237            *           2606    17116     main_employee main_employee_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.main_employee
    ADD CONSTRAINT main_employee_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.main_employee DROP CONSTRAINT main_employee_pkey;
       public                 postgres    false    249            ,           2606    17118 '   main_employee main_employee_user_id_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.main_employee
    ADD CONSTRAINT main_employee_user_id_key UNIQUE (user_id);
 Q   ALTER TABLE ONLY public.main_employee DROP CONSTRAINT main_employee_user_id_key;
       public                 postgres    false    249            '           2606    17109 (   main_notification main_notification_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.main_notification
    ADD CONSTRAINT main_notification_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.main_notification DROP CONSTRAINT main_notification_pkey;
       public                 postgres    false    247            $           2606    17095    main_order main_order_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.main_order
    ADD CONSTRAINT main_order_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.main_order DROP CONSTRAINT main_order_pkey;
       public                 postgres    false    245                        2606    17078 &   main_reservation main_reservation_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.main_reservation
    ADD CONSTRAINT main_reservation_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.main_reservation DROP CONSTRAINT main_reservation_pkey;
       public                 postgres    false    241            "           2606    17088    main_review main_review_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.main_review
    ADD CONSTRAINT main_review_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.main_review DROP CONSTRAINT main_review_pkey;
       public                 postgres    false    243            �           1259    16965    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public                 postgres    false    224            �           1259    16961 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public                 postgres    false    226            �           1259    16962 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public                 postgres    false    226            �           1259    16947 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public                 postgres    false    222                       1259    17043 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public                 postgres    false    234                       1259    17044 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public                 postgres    false    234                       1259    17053 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public                 postgres    false    235                       1259    17052 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public                 postgres    false    235                       1259    17007 -   main_customuser_groups_customuser_id_13869e25    INDEX     y   CREATE INDEX main_customuser_groups_customuser_id_13869e25 ON public.main_customuser_groups USING btree (customuser_id);
 A   DROP INDEX public.main_customuser_groups_customuser_id_13869e25;
       public                 postgres    false    230            
           1259    17008 (   main_customuser_groups_group_id_8149f607    INDEX     o   CREATE INDEX main_customuser_groups_group_id_8149f607 ON public.main_customuser_groups USING btree (group_id);
 <   DROP INDEX public.main_customuser_groups_group_id_8149f607;
       public                 postgres    false    230            �           1259    16994 *   main_customuser_phone_number_a7a6bc9a_like    INDEX     �   CREATE INDEX main_customuser_phone_number_a7a6bc9a_like ON public.main_customuser USING btree (phone_number varchar_pattern_ops);
 >   DROP INDEX public.main_customuser_phone_number_a7a6bc9a_like;
       public                 postgres    false    228                       1259    17021 7   main_customuser_user_permissions_customuser_id_34d37f86    INDEX     �   CREATE INDEX main_customuser_user_permissions_customuser_id_34d37f86 ON public.main_customuser_user_permissions USING btree (customuser_id);
 K   DROP INDEX public.main_customuser_user_permissions_customuser_id_34d37f86;
       public                 postgres    false    232                       1259    17022 7   main_customuser_user_permissions_permission_id_38e6f657    INDEX     �   CREATE INDEX main_customuser_user_permissions_permission_id_38e6f657 ON public.main_customuser_user_permissions USING btree (permission_id);
 K   DROP INDEX public.main_customuser_user_permissions_permission_id_38e6f657;
       public                 postgres    false    232                       1259    16993 &   main_customuser_username_5ce75d5c_like    INDEX     z   CREATE INDEX main_customuser_username_5ce75d5c_like ON public.main_customuser USING btree (username varchar_pattern_ops);
 :   DROP INDEX public.main_customuser_username_5ce75d5c_like;
       public                 postgres    false    228            (           1259    17138 "   main_notification_user_id_8efbf76d    INDEX     c   CREATE INDEX main_notification_user_id_8efbf76d ON public.main_notification USING btree (user_id);
 6   DROP INDEX public.main_notification_user_id_8efbf76d;
       public                 postgres    false    247            %           1259    17154    main_order_user_id_f3a58861    INDEX     U   CREATE INDEX main_order_user_id_f3a58861 ON public.main_order USING btree (user_id);
 /   DROP INDEX public.main_order_user_id_f3a58861;
       public                 postgres    false    245            .           2606    16956 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public               postgres    false    222    4851    226            /           2606    16951 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public               postgres    false    226    4856    224            -           2606    16942 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public               postgres    false    222    220    4846            4           2606    17033 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public               postgres    false    220    234    4846            5           2606    17038 H   django_admin_log django_admin_log_user_id_c564eba6_fk_main_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_main_customuser_id FOREIGN KEY (user_id) REFERENCES public.main_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_main_customuser_id;
       public               postgres    false    234    4867    228            0           2606    16997 O   main_customuser_groups main_customuser_grou_customuser_id_13869e25_fk_main_cust    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_customuser_groups
    ADD CONSTRAINT main_customuser_grou_customuser_id_13869e25_fk_main_cust FOREIGN KEY (customuser_id) REFERENCES public.main_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.main_customuser_groups DROP CONSTRAINT main_customuser_grou_customuser_id_13869e25_fk_main_cust;
       public               postgres    false    228    4867    230            1           2606    17002 P   main_customuser_groups main_customuser_groups_group_id_8149f607_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_customuser_groups
    ADD CONSTRAINT main_customuser_groups_group_id_8149f607_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.main_customuser_groups DROP CONSTRAINT main_customuser_groups_group_id_8149f607_fk_auth_group_id;
       public               postgres    false    4856    224    230            2           2606    17011 Y   main_customuser_user_permissions main_customuser_user_customuser_id_34d37f86_fk_main_cust    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_customuser_user_permissions
    ADD CONSTRAINT main_customuser_user_customuser_id_34d37f86_fk_main_cust FOREIGN KEY (customuser_id) REFERENCES public.main_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.main_customuser_user_permissions DROP CONSTRAINT main_customuser_user_customuser_id_34d37f86_fk_main_cust;
       public               postgres    false    232    228    4867            3           2606    17016 Y   main_customuser_user_permissions main_customuser_user_permission_id_38e6f657_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_customuser_user_permissions
    ADD CONSTRAINT main_customuser_user_permission_id_38e6f657_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.main_customuser_user_permissions DROP CONSTRAINT main_customuser_user_permission_id_38e6f657_fk_auth_perm;
       public               postgres    false    4851    232    222            8           2606    17139 B   main_employee main_employee_user_id_f9d0a956_fk_main_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_employee
    ADD CONSTRAINT main_employee_user_id_f9d0a956_fk_main_customuser_id FOREIGN KEY (user_id) REFERENCES public.main_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.main_employee DROP CONSTRAINT main_employee_user_id_f9d0a956_fk_main_customuser_id;
       public               postgres    false    249    4867    228            7           2606    17133 J   main_notification main_notification_user_id_8efbf76d_fk_main_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_notification
    ADD CONSTRAINT main_notification_user_id_8efbf76d_fk_main_customuser_id FOREIGN KEY (user_id) REFERENCES public.main_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.main_notification DROP CONSTRAINT main_notification_user_id_8efbf76d_fk_main_customuser_id;
       public               postgres    false    247    4867    228            6           2606    17149 <   main_order main_order_user_id_f3a58861_fk_main_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.main_order
    ADD CONSTRAINT main_order_user_id_f3a58861_fk_main_customuser_id FOREIGN KEY (user_id) REFERENCES public.main_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.main_order DROP CONSTRAINT main_order_user_id_f3a58861_fk_main_customuser_id;
       public               postgres    false    228    4867    245            �      x������ � �      �      x������ � �      �   �  x�]�[n�0��g{���s��mT�qi$�Q.T����3�7�|�_fg>/���u�{��0�o�̺�^״�%���e�y��Ê`��~�0n1�	�z��ض���eO?>�i��`JJ�{�q
�Nؓ�S�9QIj�͕�1,OSQ }���q�9�@�lJ9 %�$@x\�k������MM!��v��e��J�F��<�?r�NS���\=�x�ce�YƲAgf�ld���ʂ�QU&.-��1��2��m�R��tl��[ �NK0q��!	�7��_s����-���)Z"P���Ā�1�~|��_��e��9�:-mU�
��
@�+I�k KU�X��i�zH�˼��-ŉ[�a����Y����Qטr=����Y_�v[��CɑQ��/��F�.dV2H���<��:v.��iak5� F�w6�Ýe�9O�������s��.�l�F}ϑ���f���o�˰���5��x���{��{?�m���d(f�(e).�tT��ׇ��"N��      �   o   x�3�4202�54�50W00�22�25�3316�0�60�4��.-*O���J�))�)JV
յ���朆\F�ͭ,��,M̍!���RR�tSr3�ch4(F��� �>�      �   �   x�M�K�0D��ai�ޅM��6RG�Ӫ�'���{�v>��#E�v`�N�(/�9b�̘�$<�㨵�["�<��g!{�[�]�P�2^��Lx�e�%*�g������w�xZј����e�F��?��.�&)��7"|�`M�      �     x����n� ������U-�?��e%�l�"��;ۼ�vi�&��pa�|Ü9T��3-�e6�B���]�*�0}xA�/�[-mj���7"�#+oFw6j���5��|G��2!E"�J���ko	Bb)������f�G�uS.�F��3�b�M�Ģ!	�
��5�Ì��)|��B�הt��y	7H�MA�kĠâw���u�-C���0�V��4�T����Y�~��l���}���Ϋф�O�^[R�l@'nJ�@cX��1@!�
=��t�.��u�n���`"7��8@�s�Ȩٻ�˕���43��_wu��ٶ�+VE�N��5 �)Ѹ��T��tC󙂓3����c�c/.��6C��y�A|B�'$�KwK���O�{u��g1ɚ&� �`v���iHV�"V�_ե-a-��Kh$��P�I����83΃���ι�m��������<o_�9[��[	�[5���	ƥݤL� q㳋�d���lQ��O}8��L��      �      x������ � �      �   C  x�m�KN�P���*tF����&��cX!JLLiZ�
�g�ĸ�!Ɛ���Y���9���A�#��}3�b�Z%?�ĉ%�)�:7����=��.�kXMlT�f�z�ۍa+p{:M�̏Wě6� ��*B�cq�a�+@�4��Un���=�/�[~�m�ɞ���W hC#:�=Tt�a�)�H(���;}w��}\q�w��;�*Bb̫�Ⱥr��E�CJ۳ˉ�[i9[�Nd��S�Z��L,L�4�8E�����e��K�rI�,���A��\rl�&��"!�����h��� 
~�      �      x������ � �      �      x������ � �      �      x������ � �      �   #   x�3��.-*O���z����y�\1z\\\ �^]      �      x������ � �      �      x������ � �      �   A   x�3�L��-�I-IM�4202�54�50W00�22�2��3�0325�60�4�30��4�4����� �#�      �      x������ � �      �      x������ � �     