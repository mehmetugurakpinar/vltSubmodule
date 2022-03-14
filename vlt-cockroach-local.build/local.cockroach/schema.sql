create database if not exists vault;

use vault;

CREATE TABLE if not exists ASTMPYDN (
	PRTN_NBR                         numeric(3,0) not null,
	SLS_DT	                         date not null,
	STR_NBR                          char(4) not null,
	ASSOC_ID                   		 char(24) not null,
	DENOM_TYP_CD                     SMALLINT not null,
	LAST_UPD_TS                      timestamptz not null,
	CRT_TS                    		 timestamptz not null,
	DENOM_TYP_QTY                    SMALLINT not null,
	DENOM_TYP_AMT                    numeric(18,4) not null,
	CURNC_TYP_CD                     char(3) not null,

	constraint "pk_ASTMPYDN" PRIMARY KEY (PRTN_NBR, SLS_DT, STR_NBR, ASSOC_ID, DENOM_TYP_CD)
);

CREATE TABLE if not exists ASTRMPAY (
    PRTN_NBR                        NUMERIC(3,0) NOT NULL, 
    SLS_DT                          date not null, 
    STR_NBR                         CHAR(4) NOT NULL, 
    ASSOC_ID                        CHAR(24) NOT NULL, 
    LAST_UPD_TS                     timestamptz not null, 
    CRT_TS                          timestamptz not null,
    ASSOC_TERM_DOC_ID               CHAR(20) NOT NULL, 
    TERM_AMT                        NUMERIC(18,4) NOT NULL, 
    CURNC_TYP_CD                    CHAR(3) NOT NULL, 
    ATERM_VLT_CNT_FLG               CHAR(1) NOT NULL,
    
    constraint "pk_ASTRMPAY" PRIMARY KEY ( PRTN_NBR, SLS_DT, STR_NBR, ASSOC_ID)
);

CREATE TABLE if not exists DEPTYPC (
    DEPST_TYP_CD                    SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not null,
    CRT_TS                          timestamptz not null,

    constraint "pk_DEPTYPC" PRIMARY KEY(DEPST_TYP_CD)
);

CREATE TABLE if not exists DNMTPUGP (
    APPL_UGRP_CD                    SMALLINT NOT NULL,
    DENOM_TYP_CD                    SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not null, 
    CRT_TS                          timestamptz not null, 
    constraint "pk_DNMTPUGP" PRIMARY KEY ( APPL_UGRP_CD, DENOM_TYP_CD)
);

CREATE TABLE if not exists DNMTYPC (
    DENOM_TYP_CD                    SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not null,
    CRT_TS                          timestamptz not null,
    CURNC_TYP_CD                    CHAR(3) NOT NULL, 
    DENOM_TYP_MULT_FTR              NUMERIC(5,2) NOT NULL,
    COIN_PER_RLL_CNT                SMALLINT DEFAULT NULL,

    constraint "pk_DNMTYPC" PRIMARY KEY ( DENOM_TYP_CD)
);

CREATE TABLE if not exists DPRCTYPC (
    DEPST_RECON_TYP_CD              SMALLINT NOT NULL, 
    LAST_UPD_TS                     timestamptz not null,
    CRT_TS                          timestamptz not null,
  
    constraint "pk_DPRCTYPC" PRIMARY KEY(DEPST_RECON_TYP_CD)
);

CREATE TABLE if not exists DPTYPUGP (
    APPL_UGRP_CD                    SMALLINT NOT NULL,
    DEPST_TYP_CD                    SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not null,
    CRT_TS                          timestamptz not null,
    SEQ_NBR                         SMALLINT DEFAULT NULL,

    constraint "pk_DPTYPUGP" PRIMARY KEY(APPL_UGRP_CD, DEPST_TYP_CD)
);

CREATE TABLE if not exists NDEPTYP (
    DEPST_TYP_CD                    SMALLINT NOT NULL, 
    LANG_CD                         CHAR(5) NOT NULL, 
    LAST_UPD_TS                     timestamptz not null,
    CRT_TS                          timestamptz not null, 
    D_DEPST_TYP_CD                  CHAR(10) NOT NULL, 
    S_DEPST_TYP_DESC                CHAR(20) NOT NULL, 
    DEPST_TYP_DESC                  VARCHAR(150) NOT NULL, 

    constraint "pk_NDEPTYP" PRIMARY KEY( DEPST_TYP_CD, LANG_CD)
);

CREATE TABLE if not exists NDNMTYP (
    DENOM_TYP_CD                    SMALLINT NOT NULL, 
    LANG_CD                         CHAR(5) NOT NULL, 
    LAST_UPD_TS                     timestamptz not null,
    CRT_TS                          timestamptz not null, 
    D_DENOM_TYP_CD                  CHAR(10) NOT NULL, 
    S_DENOM_TYP_DESC                CHAR(20) NOT NULL, 
    DENOM_TYP_DESC                  VARCHAR(150) NOT NULL,

    constraint "pk_NDNMTYP" PRIMARY KEY ( DENOM_TYP_CD, LANG_CD)
);

CREATE TABLE if not exists NDPRCTYP (
    DEPST_RECON_TYP_CD              SMALLINT NOT NULL, 
    LANG_CD                         CHAR(5) NOT NULL, 
    LAST_UPD_TS                     timestamptz not null,
    CRT_TS                          timestamptz not null, 
    D_DEPST_RECON_CD                CHAR(10) NOT NULL, 
    S_DEPST_RECON_DESC              CHAR(20) NOT NULL, 
    DEPST_RECON_DESC                VARCHAR(150) NOT NULL, 

    constraint "pk_NDPRCTYP" PRIMARY KEY( DEPST_RECON_TYP_CD, LANG_CD )
);


CREATE TABLE if not exists NOVSHRSN (
    OVR_SHRT_RSN_CD                 SMALLINT NOT NULL,
    LANG_CD                         CHAR(5) NOT NULL,
    LAST_UPD_TS                     timestamptz not null,
    CRT_TS                          timestamptz not null, 
    D_RSN_CD                        CHAR(10) NOT NULL,
    S_RSN_DESC                      CHAR(20) NOT NULL,
    RSN_DESC                        VARCHAR(150) NOT NULL,
  
    constraint "pk_NOVSHRSN" PRIMARY KEY(OVR_SHRT_RSN_CD, LANG_CD)
);

-- CREATE TABLE $DATA02.VLTDATA.NPOSRGTP
-- (
--     POS_RGSTR_TYP_CD                SMALLINT NO DEFAULT NOT NULL
--     , LANG_CD                         CHAR(5) NO DEFAULT NOT NULL
--     , LAST_UPD_TS                     DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
--     , CRT_TS                          DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
--     , D_POS_RGSTR_TYP_CD              CHAR(10) NO DEFAULT NOT NULL
--     , S_RGSTR_TYP_DESC                CHAR(20) NO DEFAULT NOT NULL
--     , POS_RGSTR_TYP_DESC              VARCHAR(150) NO DEFAULT NOT NULL
--     , PRIMARY KEY (POS_RGSTR_TYP_CD, LANG_CD )
-- )
CREATE TABLE if not exists NPOSRGTP (
    POS_RGSTR_TYP_CD                SMALLINT NOT NULL,
    LANG_CD                         CHAR(5) NOT NULL,
    LAST_UPD_TS                     timestamptz not null,
    CRT_TS                          timestamptz not null, 
    D_POS_RGSTR_TYP_CD              CHAR(10) NOT NULL,
    S_RGSTR_TYP_DESC                CHAR(20) NOT NULL,
    POS_RGSTR_TYP_DESC              VARCHAR(150) NOT NULL,

    constraint "pk_NPOSRGTP" PRIMARY KEY(POS_RGSTR_TYP_CD, LANG_CD)
);



CREATE TABLE if not exists NTILLST (
    TILL_STAT_CD                    SMALLINT NOT NULL,
    LANG_CD                         CHAR(5) NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    D_TILL_STAT_CD                  CHAR(10) NOT NULL,
    S_TILL_STAT_DESC                CHAR(20) NOT NULL,
    TILL_STAT_DESC                  VARCHAR(150) NOT NULL,
    
    constraint "pk_NTILLST" PRIMARY KEY (TILL_STAT_CD, LANG_CD)
);

CREATE TABLE if not exists NTLADJST (
    TILL_ADJ_STAT_CD                SMALLINT NOT NULL,
    LANG_CD                         CHAR(5) NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    D_STAT_CD                       CHAR(10) NOT NULL,
    S_STAT_DESC                     CHAR(20) NOT NULL,
    STAT_DESC                       VARCHAR(150) NOT NULL,

    constraint "pk_NTLADJST" PRIMARY KEY (TILL_ADJ_STAT_CD, LANG_CD)
);

CREATE TABLE if not exists NTLADJTP (
    TILL_ADJ_TYP_CD                 SMALLINT NOT NULL,
    LANG_CD                         CHAR(5) NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    D_TILL_ADJ_TYP_CD               CHAR(10) NOT NULL,
    S_TILL_ADJTYP_DESC              CHAR(20) NOT NULL,
    TILL_ADJ_TYP_DESC               VARCHAR(150) NOT NULL,

    constraint "pk_NTLADJTP" PRIMARY KEY (TILL_ADJ_TYP_CD, LANG_CD )
);

CREATE TABLE if not exists NTXEXTYP (
    TAX_EX_TYP_CD                   SMALLINT NOT NULL,
    LANG_CD                         CHAR(5) NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    D_TAX_EX_TYP_CD                 CHAR(10) NOT NULL,
    S_TAX_EX_TYP_DESC               CHAR(20) NOT NULL,
    TAX_EX_TYP_DESC                 VARCHAR(150) NOT NULL,

    constraint "pk_NTXEXTYP" PRIMARY KEY (TAX_EX_TYP_CD, LANG_CD )
);

CREATE TABLE if not exists NVLADQSC (
    VLT_AUD_QCTGY_CD                SMALLINT NOT NULL,
    LANG_CD                         CHAR(5) NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    D_CTGRY_CD                      CHAR(10) NOT NULL,
    S_CTGRY_DESC                    CHAR(20) NOT NULL,
    CTGRY_DESC                      VARCHAR(150) NOT NULL,

    constraint "pk_NVLADQSC" PRIMARY KEY (VLT_AUD_QCTGY_CD,LANG_CD)
);

CREATE TABLE if not exists NVLTADQS (
    VLT_AUD_QST_ID                  SMALLINT NOT NULL,
    LANG_CD                         CHAR(5) NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    D_VLT_AUD_QST_ID                CHAR(10) NOT NULL,
    S_VLT_AUD_QST_DESC              CHAR(20) NOT NULL,
    VLT_AUD_QST_TXT                 VARCHAR(240) NOT NULL,

    constraint "pk_NVLTADQS" PRIMARY KEY (VLT_AUD_QST_ID,LANG_CD)
);

CREATE TABLE if not exists NVLTADTP (
    VLT_AUD_TYP_CD                  SMALLINT NOT NULL,
    LANG_CD                         CHAR(5) NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    D_TYP_CD                        CHAR(10) NOT NULL,
    S_TYP_DESC                      CHAR(20) NOT NULL,
    TYP_DESC                        VARCHAR(150) NOT NULL,
    
    constraint "pk_NVLTADTP" PRIMARY KEY (VLT_AUD_TYP_CD, LANG_CD)
);

CREATE TABLE if not exists OVSHRSNC (
    OVR_SHRT_RSN_CD                 SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    
    constraint "pk_OVSHRSNC" PRIMARY KEY (OVR_SHRT_RSN_CD)
);

CREATE TABLE if not exists OVSTRUGP (
    APPL_UGRP_CD                    SMALLINT NOT NULL,
    OVR_SHRT_RSN_CD                 SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    
    constraint "pk_OVSTRUGP" PRIMARY KEY (APPL_UGRP_CD, OVR_SHRT_RSN_CD)
);



-- CREATE TABLE $DATA02.VLTDATA.POSRGTPC
-- (
--     POS_RGSTR_TYP_CD                SMALLINT NO DEFAULT NOT NULL
--     , LAST_UPD_TS                     DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
--     , CRT_TS                          DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
--     , PRIMARY KEY (POS_RGSTR_TYP_CD)
-- )
CREATE TABLE if not exists POSRGTPC (
    POS_RGSTR_TYP_CD                SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    
    constraint "pk_POSRGTPC" PRIMARY KEY ( POS_RGSTR_TYP_CD )
);

-- CREATE TABLE $DATA11.VLTDATA.TILL
-- (
--   PRTN_NBR                        NUMERIC(3,0) NO DEFAULT NOT NULL
-- , SLS_DT                          DATETIME YEAR TO DAY NO DEFAULT NOT NULL
-- , STR_NBR                         CHAR(4) NO DEFAULT NOT NULL
-- , SYSUSR_ID                       CHAR(24) NO DEFAULT NOT NULL
-- , LAST_UPD_TS                     DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , CRT_TS                          DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , TILL_STAT_CD                    SMALLINT NO DEFAULT NOT NULL
-- , BGN_TILL_AMT                    NUMERIC(18,4) NO DEFAULT NOT NULL
-- , END_TILL_AMT                    NUMERIC(18,4) DEFAULT NULL
-- , NET_CE_SLS_AMT                  NUMERIC(18,4) DEFAULT NULL
-- , TILL_OVR_SHRT_AMT               NUMERIC(18,4) DEFAULT NULL
-- , OVRNG_AMT                       NUMERIC(18,4) DEFAULT NULL
-- , VL_SLS_ADJ_AMT                  NUMERIC(18,4) DEFAULT NULL
-- , CURNC_TYP_CD                    CHAR(3) DEFAULT NULL
-- , RTN_TILL_TS                     DATETIME YEAR TO FRACTION(6) DEFAULT NULL
-- , RGSTR_NBR                       NUMERIC(3,0) DEFAULT NULL
-- , TILL_BAL_SYSUSR_ID              CHAR(24) DEFAULT NULL
-- , PRIMARY KEY (PRTN_NBR, SLS_DT, STR_NBR, SYSUSR_ID)
-- )
CREATE TABLE if not exists TILL (
    PRTN_NBR                        NUMERIC(3,0) NOT NULL,
    SLS_DT                          date NOT NULL,
    STR_NBR                         CHAR(4) NOT NULL,
    SYSUSR_ID                       CHAR(24) NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    TILL_STAT_CD                    SMALLINT NOT NULL,
    BGN_TILL_AMT                    NUMERIC(18,4) NOT NULL,
    END_TILL_AMT                    NUMERIC(18,4) DEFAULT NULL,
    NET_CE_SLS_AMT                  NUMERIC(18,4) DEFAULT NULL,
    TILL_OVR_SHRT_AMT               NUMERIC(18,4) DEFAULT NULL,
    OVRNG_AMT                       NUMERIC(18,4) DEFAULT NULL,
    VL_SLS_ADJ_AMT                  NUMERIC(18,4) DEFAULT NULL,
    CURNC_TYP_CD                    CHAR(3) DEFAULT NULL,
    RTN_TILL_TS                     timestamptz DEFAULT NULL,
    RGSTR_NBR                       NUMERIC(3,0) DEFAULT NULL,
    TILL_BAL_SYSUSR_ID              CHAR(24) DEFAULT NULL,
    
    constraint "pk_TILL" PRIMARY KEY (PRTN_NBR, SLS_DT, STR_NBR, SYSUSR_ID)
);


-- CREATE TABLE $DATA11.VLTDATA.TILLADJ
-- (
--   PRTN_NBR                        NUMERIC(3,0) NO DEFAULT NOT NULL
-- , SLS_DT                          DATETIME YEAR TO DAY NO DEFAULT NOT NULL
-- , STR_NBR                         CHAR(4) NO DEFAULT NOT NULL
-- , SYSUSR_ID                       CHAR(24) NO DEFAULT NOT NULL
-- , SEQ_NBR                         SMALLINT NO DEFAULT NOT NULL
-- , LAST_UPD_TS                     DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , CRT_TS                          DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , TILL_ADJ_AMT                    NUMERIC(18,4) NO DEFAULT NOT NULL
-- , CURNC_TYP_CD                    CHAR(3) NO DEFAULT NOT NULL
-- , RGSTR_NBR                       NUMERIC(3,0) NO DEFAULT NOT NULL
-- , TILL_ADJ_TYP_CD                 SMALLINT NO DEFAULT NOT NULL
-- , TILL_ADJ_STAT_CD                SMALLINT NO DEFAULT NOT NULL
-- , TILL_ADJ_CMPLT_TS               DATETIME YEAR TO FRACTION(6) DEFAULT NULL
-- , TILL_ADJ_RQSTR_ID               CHAR(24) DEFAULT NULL
-- , PRIMARY KEY(PRTN_NBR, SLS_DT, STR_NBR, SYSUSR_ID, SEQ_NBR)
-- )
CREATE TABLE if not exists TILLADJ (
    PRTN_NBR                        NUMERIC(3,0) NOT NULL,
    SLS_DT                          date NOT NULL,
    STR_NBR                         CHAR(4) NOT NULL,
    SYSUSR_ID                       CHAR(24) NOT NULL,
    SEQ_NBR                         SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    TILL_ADJ_AMT                    NUMERIC(18,4) NOT NULL,
    CURNC_TYP_CD                    CHAR(3) NOT NULL,
    RGSTR_NBR                       NUMERIC(3,0) NOT NULL,
    TILL_ADJ_TYP_CD                 SMALLINT NOT NULL,
    TILL_ADJ_STAT_CD                SMALLINT NOT NULL,
    TILL_ADJ_CMPLT_TS               timestamptz DEFAULT NULL,
    TILL_ADJ_RQSTR_ID               CHAR(24) DEFAULT NULL,

    constraint "pk_TILLADJ" PRIMARY KEY (PRTN_NBR, SLS_DT, STR_NBR, SYSUSR_ID, SEQ_NBR)
);

CREATE TABLE if not exists TILLCHK (
    PRTN_NBR                        NUMERIC(3,0) NOT NULL,
    SLS_DT                          date not NULL,
    STR_NBR                         CHAR(4) NOT NULL,
    SYSUSR_ID                       CHAR(24) NOT NULL,
    CHK_SEQ_NBR                     SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    CHK_AMT                         NUMERIC(18,4) NOT NULL,
    SEAL_NBR                        CHAR(20) DEFAULT NULL,
    DEPST_SEQ_NBR                   SMALLINT NOT NULL,
    RGSTR_NBR                       NUMERIC(3,0) NOT NULL,

    constraint "pk_TILLCHK" PRIMARY KEY (PRTN_NBR, SLS_DT, STR_NBR, SYSUSR_ID, CHK_SEQ_NBR)
);


-- CREATE TABLE $DATA02.VLTDATA.TILLDNM
-- (
--     POS_RGSTR_TYP_CD                SMALLINT NO DEFAULT NOT NULL
--     , DENOM_TYP_CD                    SMALLINT NO DEFAULT NOT NULL
--     , LAST_UPD_TS                     DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
--     , CRT_TS                          DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
--     , DENOM_TYP_QTY                   SMALLINT NO DEFAULT NOT NULL
--     , DENOM_TYP_AMT                   NUMERIC(18,4) NO DEFAULT NOT NULL
--     , CURNC_TYP_CD                    CHAR(3) NO DEFAULT NOT NULL
--     , PRIMARY KEY (POS_RGSTR_TYP_CD, DENOM_TYP_CD)
-- )
CREATE TABLE if not exists TILLDNM (
    POS_RGSTR_TYP_CD                SMALLINT NOT NULL,
    DENOM_TYP_CD                    SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    DENOM_TYP_QTY                   SMALLINT NOT NULL,
    DENOM_TYP_AMT                   NUMERIC(18,4) NOT NULL,
    CURNC_TYP_CD                    CHAR(3) NOT NULL,

    constraint "pk_TILLDNM" PRIMARY KEY (POS_RGSTR_TYP_CD, DENOM_TYP_CD)
);

-- CREATE TABLE $DATA11.VLTDATA.TILLDNMX
-- (
--     STR_NBR                         CHAR(4) NO DEFAULT NOT NULL
--     , POS_RGSTR_TYP_CD                SMALLINT NO DEFAULT NOT NULL
--     , DENOM_TYP_CD                    SMALLINT NO DEFAULT NOT NULL
--     , LAST_UPD_TS                     DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
--     , CRT_TS                          DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
--     , DENOM_TYP_QTY                   SMALLINT NO DEFAULT NOT NULL
--     , DENOM_TYP_AMT                   NUMERIC(18,4) NO DEFAULT NOT NULL
--     , CURNC_TYP_CD                    CHAR(3) NO DEFAULT NOT NULL
--     , PRIMARY KEY(STR_NBR, POS_RGSTR_TYP_CD, DENOM_TYP_CD)
-- )
CREATE TABLE if not exists TILLDNMX (
    STR_NBR                         CHAR(4) NOT NULL,
    POS_RGSTR_TYP_CD                SMALLINT NOT NULL,
    DENOM_TYP_CD                    SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    DENOM_TYP_QTY                   SMALLINT NOT NULL,
    DENOM_TYP_AMT                   NUMERIC(18,4) NOT NULL,
    CURNC_TYP_CD                    CHAR(3) NOT NULL,

    constraint "pk_TILLDNMX" PRIMARY KEY (STR_NBR, POS_RGSTR_TYP_CD, DENOM_TYP_CD)
);

CREATE TABLE if not exists TILLNTTX (
    PRTN_NBR                        NUMERIC(3,0) NOT NULL,
    SLS_DT                          date not NULL,
    STR_NBR                         CHAR(4) NOT NULL,
    SYSUSR_ID                       CHAR(24) NOT NULL,
    POS_TAX_TBL_CD                  SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    TAX_AMT                         NUMERIC(18,4) NOT NULL,
    CURNC_TYP_CD                    CHAR(3) NOT NULL,

    constraint "pk_TILLNTTX " PRIMARY KEY (PRTN_NBR, SLS_DT, STR_NBR, SYSUSR_ID, POS_TAX_TBL_CD)
);

CREATE TABLE if not exists TILLSTC (
    TILL_STAT_CD                    SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,

    constraint "pk_TILLSTC" PRIMARY KEY (TILL_STAT_CD)
);

CREATE TABLE if not exists TILLSTG (
    PRTN_NBR                        NUMERIC(3,0) NOT NULL,
    STR_NBR                         CHAR(4) NOT NULL,
    TILL_REF_NBR                    INT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    TILL_LOC_IND                    CHAR(2) NOT NULL,
    TILL_CNT_FLG                    CHAR(1) NOT NULL,
    POS_RGSTR_TYP_CD                SMALLINT NOT NULL,
    TILL_AMT                        NUMERIC(18,4) NOT NULL,
    CURNC_TYP_CD                    CHAR(3) NOT NULL,
    RGSTR_DRWR_NBR                  SMALLINT DEFAULT NULL,
    SLS_DT                          date DEFAULT NULL,
    SYSUSR_ID                       CHAR(24) DEFAULT NULL,

    constraint "pk_TILLSTG" PRIMARY KEY (PRTN_NBR, STR_NBR, TILL_REF_NBR)
);

CREATE TABLE if not exists TLADJDNM (
    PRTN_NBR                        NUMERIC(3,0) NOT NULL,
    SLS_DT                          date not NULL,
    STR_NBR                         CHAR(4) NOT NULL,
    SYSUSR_ID                       CHAR(24) NOT NULL,
    SEQ_NBR                         SMALLINT NOT NULL,
    DENOM_TYP_CD                    SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    DENOM_TYP_QTY                   SMALLINT NOT NULL,
    DENOM_TYP_AMT                   NUMERIC(18,4) NOT NULL,
    CURNC_TYP_CD                    CHAR(3) NOT NULL,

    constraint "pk_TLADJDNM" PRIMARY KEY (PRTN_NBR, SLS_DT, STR_NBR, SYSUSR_ID, SEQ_NBR, DENOM_TYP_CD)
);

CREATE TABLE if not exists TLADJSTC (
    TILL_ADJ_STAT_CD                SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,

    constraint "pk_TLADJSTC" PRIMARY KEY (TILL_ADJ_STAT_CD)
);

CREATE TABLE if not exists TLADJTPC (
    TILL_ADJ_TYP_CD                 SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,

    constraint "pk_TLADJTPC" PRIMARY KEY (TILL_ADJ_TYP_CD)
);

CREATE TABLE if not exists TLDNCTRL (
    BASE_CURNC_TYP_CD               CHAR(3) NOT NULL,
    DENOM_TYP_CD                    SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    DENOM_SEQ_NBR                   SMALLINT NOT NULL,

    constraint "pk_TLDNCTRL" PRIMARY KEY (BASE_CURNC_TYP_CD, DENOM_TYP_CD)
);

CREATE TABLE if not exists TLEVT (
    PRTN_NBR                        NUMERIC(3,0) NOT NULL,
    SLS_DT                          date not NULL,
    STR_NBR                         CHAR(4) NOT NULL,
    RGSTR_NBR                       NUMERIC(3,0) NOT NULL,
    POS_TRANS_ID                    NUMERIC(4,0) NOT NULL,
    LOB_CD                          NUMERIC(4,0) NOT NULL,
    POS_INQ_CD                      SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    TILL_EVNT_STAT_IND              CHAR(1) NOT NULL,
    RGSTR_DRWR_NBR                  SMALLINT DEFAULT NULL,
    POS_RGSTR_TYP_CD                SMALLINT DEFAULT NULL,
    TILL_LOC_IND                    CHAR(2) DEFAULT NULL,
    SYSUSR_ID                       CHAR(24) NOT NULL,
    SLS_TS                          timestamptz NOT NULL,

    constraint "pk_TLEVT" PRIMARY KEY (PRTN_NBR, SLS_DT, STR_NBR, RGSTR_NBR, POS_TRANS_ID, LOB_CD, POS_INQ_CD)
);

CREATE TABLE if not exists TLEVTDNM (
    PRTN_NBR                        NUMERIC(3,0) NOT NULL,
    SLS_DT                          date not NULL,
    STR_NBR                         CHAR(4) NOT NULL,
    RGSTR_NBR                       NUMERIC(3,0) NOT NULL,
    POS_TRANS_ID                    NUMERIC(4,0) NOT NULL,
    LOB_CD                          NUMERIC(4,0) NOT NULL,
    POS_INQ_CD                      SMALLINT NOT NULL,
    DENOM_TYP_CD                    SMALLINT NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    DENOM_TYP_QTY                   SMALLINT NOT NULL,
    DENOM_TYP_AMT                   NUMERIC(18,4) NOT NULL,
    CURNC_TYP_CD                    CHAR(3) NOT NULL,

    constraint "pk_TLEVTDNM" PRIMARY KEY (PRTN_NBR, SLS_DT, STR_NBR, RGSTR_NBR, POS_TRANS_ID, LOB_CD, POS_INQ_CD, DENOM_TYP_CD)
);

CREATE TABLE if not exists TLEVTTP (
    PRTN_NBR                        NUMERIC(3,0) NOT NULL,
    SLS_DT                          date not NULL,
    STR_NBR                         CHAR(4) NOT NULL,
    RGSTR_NBR                       NUMERIC(3,0) NOT NULL,
    POS_TRANS_ID                    NUMERIC(4,0) NOT NULL,
    LOB_CD                          NUMERIC(4,0) NOT NULL,
    POS_INQ_CD                      SMALLINT NOT NULL,
    PAYMT_METH_CD                   CHAR(2) NOT NULL,
    TNDR_CURNC_TYP_CD               CHAR(3) NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    NET_RETL_SLS                    NUMERIC(18,4) NOT NULL,
    PAYMT_METH_CNT                  SMALLINT NOT NULL,
    TNDR_AMT                        NUMERIC(18,4) NOT NULL,
    SYSUSR_ID                       CHAR(24) NOT NULL,

    constraint "pk_TLEVTTP" PRIMARY KEY (PRTN_NBR, SLS_DT, STR_NBR, RGSTR_NBR, POS_TRANS_ID, LOB_CD, POS_INQ_CD, PAYMT_METH_CD, TNDR_CURNC_TYP_CD)
);






-- CREATE TABLE $DATA11.VLTDATA.TLEVTXFR
-- (
--   PRTN_NBR                        NUMERIC(3,0) NO DEFAULT NOT NULL
-- , SLS_DT                          DATETIME YEAR TO DAY NO DEFAULT NOT NULL
-- , STR_NBR                         CHAR(4) NO DEFAULT NOT NULL
-- , RGSTR_NBR                       NUMERIC(3,0) NO DEFAULT NOT NULL
-- , POS_TRANS_ID                    NUMERIC(4,0) NO DEFAULT NOT NULL
-- , LOB_CD                          NUMERIC(4,0) NO DEFAULT NOT NULL
-- , POS_INQ_CD                      SMALLINT NO DEFAULT NOT NULL
-- , LAST_UPD_TS                     DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , CRT_TS                          DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , FR_PAYMT_METH_CD                CHAR(2) NO DEFAULT NOT NULL
-- , TILL_TNDR_XFER_AMT              NUMERIC(18,4) NO DEFAULT NOT NULL
-- , CURNC_TYP_CD                    CHAR(3) NO DEFAULT NOT NULL
-- , TO_PAYMT_METH_CD                CHAR(2) NO DEFAULT NOT NULL
-- , PRIMARY KEY  (PRTN_NBR, SLS_DT, STR_NBR, RGSTR_NBR, POS_TRANS_ID, LOB_CD, POS_INQ_CD )
-- )

-- Till media transfer table
CREATE TABLE IF NOT EXISTS tlevtxfr (
	prtn_nbr           NUMERIC(3, 0) NOT NULL,    -- partition number
	sls_dt             date NOT NULL,      -- sales date
	str_nbr            CHAR(4) NOT NULL,          -- Store Number
	rgstr_nbr          NUMERIC(3, 0) NOT NULL,    -- Register Number
	pos_trans_id       NUMERIC(4, 0) NOT NULL,    -- POS Transaction ID
	lob_cd             NUMERIC(4, 0) NOT NULL,    -- Line of Business Code
	pos_inq_cd         SMALLINT NOT NULL,         -- POS Inquiry Code
	fr_paymt_meth_cd   CHAR(2) NOT NULL,          -- From Payment Method Code
	till_tndr_xfer_amt NUMERIC(18, 4) NOT NULL,   -- Media Transfer Amount
	curnc_typ_cd       CHAR(3) NOT NULL,          -- Currency Type Code
	to_paymt_meth_cd   CHAR(2) NOT NULL,          -- To Payment Method Code
	
	CONSTRAINT "pk_vltdata_tlevtxfr" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, rgstr_nbr, pos_trans_id, lob_cd, pos_inq_cd)
); 

-- CREATE TABLE $DATA11.VLTDATA.TLNMPMT
-- (
--   PRTN_NBR                        NUMERIC(3,0) NO DEFAULT NOT NULL
-- , SLS_DT                          DATETIME YEAR TO DAY NO DEFAULT NOT NULL
-- , STR_NBR                         CHAR(4) NO DEFAULT NOT NULL
-- , RGSTR_NBR                       NUMERIC(3,0) NO DEFAULT NOT NULL
-- , POS_TRANS_ID                    NUMERIC(4,0) NO DEFAULT NOT NULL
-- , POS_SEQ_NBR                     SMALLINT NO DEFAULT NOT NULL
-- , LAST_UPD_TS                     DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , CRT_TS                          DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , PAYMT_AMT                       NUMERIC(18,4) NO DEFAULT NOT NULL
-- , PAYMT_METH_CD                   CHAR(2) NO DEFAULT NOT NULL
-- , TNDR_AMT                        NUMERIC(18,4) NO DEFAULT NOT NULL
-- , TNDR_CURNC_TYP_CD               CHAR(3) NO DEFAULT NOT NULL
-- , RETL_EXCH_RT                    NUMERIC(11,8) NO DEFAULT NOT NULL
-- , SYSUSR_ID                       CHAR(24) NO DEFAULT NOT NULL
-- , POST_VOID_FLG                   CHAR(1) NO DEFAULT NOT NULL
-- , PRIMARY KEY (PRTN_NBR, SLS_DT, STR_NBR, RGSTR_NBR, POS_TRANS_ID, POS_SEQ_NBR )
-- )

CREATE TABLE IF NOT EXISTS tlnmpmt (
	prtn_nbr          NUMERIC(3,0) NOT NULL,
	sls_dt            date NOT NULL,
	str_nbr           CHAR(4) NOT NULL,
	rgstr_nbr         NUMERIC(3,0) NOT NULL,
	pos_trans_id      NUMERIC(4,0) NOT NULL,
	pos_seq_nbr       SMALLINT NOT NULL,
	last_upd_ts       TIMESTAMPTZ NOT NULL,
	crt_ts            TIMESTAMPTZ NOT NULL,
	paymt_amt         NUMERIC(18,4) NOT NULL,
	paymt_meth_cd     CHAR(2) NOT NULL,
	tndr_amt          NUMERIC(18,4) NOT NULL,
	tndr_curnc_typ_cd CHAR(3) NOT NULL,
	retl_exch_rt      NUMERIC(11,8) NOT NULL,
	sysusr_id         CHAR(24) NOT NULL,
	post_void_flg     CHAR(1) NOT NULL,
	
	CONSTRAINT "pk_vltdata_tlnmpmt" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, rgstr_nbr, pos_trans_id, pos_seq_nbr)
);

-- CREATE TABLE $DATA16.VLTDATA.TLOSRSN (
--   PRTN_NBR                        NUMERIC(3,0) NO DEFAULT NOT NULL
-- , SLS_DT                          DATETIME YEAR TO DAY NO DEFAULT NOT NULL
-- , STR_NBR                         CHAR(4) NO DEFAULT NOT NULL
-- , SYSUSR_ID                       CHAR(24) NO DEFAULT NOT NULL
-- , OVR_SHRT_RSN_CD                 SMALLINT NO DEFAULT NOT NULL
-- , LAST_UPD_TS                     DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , CRT_TS                          DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , PRIMARY KEY (PRTN_NBR,SLS_DT,STR_NBR,SYSUSR_ID,OVR_SHRT_RSN_CD)
-- );

-- Over short reason code table. Each till that is over the OS Threshold will have 1 - 3 reason codes.
CREATE TABLE IF NOT EXISTS tlosrsn (
	prtn_nbr        NUMERIC(3,0) NOT NULL,
	sls_dt          date NOT NULL,              -- Sales Date
	str_nbr         CHAR(4) NOT NULL,       -- Store Number
	sysusr_id       CHAR(24) NOT NULL,      -- Sysusr ID
	ovr_shrt_rsn_cd SMALLINT NOT NULL,      -- Over Short Reason Code
	last_upd_ts     TIMESTAMPTZ NOT NULL,
	crt_ts          TIMESTAMPTZ NOT NULL,
	
	CONSTRAINT "pk_vltdata_tlosrsn" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, sysusr_id, ovr_shrt_rsn_cd)
);

-- CREATE TABLE $DATA14.VLTDATA.TLPMTMTH (
--   PRTN_NBR                        NUMERIC(3,0) NO DEFAULT NOT NULL
-- , SLS_DT                          DATETIME YEAR TO DAY NO DEFAULT NOT NULL
-- , STR_NBR                         CHAR(4) NO DEFAULT NOT NULL
-- , SYSUSR_ID                       CHAR(24) NO DEFAULT NOT NULL
-- , PAYMT_METH_CD                   CHAR(2) NO DEFAULT NOT NULL
-- , TNDR_CURNC_TYP_CD               CHAR(3) NO DEFAULT NOT NULL
-- , SEQ_NBR                         SMALLINT NO DEFAULT NOT NULL
-- , LAST_UPD_TS                     DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , CRT_TS                          DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , PAYMT_AMT                       NUMERIC(18,4) NO DEFAULT NOT NULL
-- , PMETH_AMT_CHG_FLG               CHAR(1) NO DEFAULT NOT NULL
-- , TNDR_AMT                        NUMERIC(18,4) NO DEFAULT NOT NULL
-- , PMETH_DOC_ID                    CHAR(20) DEFAULT NULL
-- , RGSTR_NBR                       NUMERIC(3,0) NO DEFAULT NOT NULL
-- , CR_CARD_PRCSR_ID                CHAR(2) DEFAULT NULL
-- , PRIMARY KEY ( PRTN_NBR , SLS_DT , STR_NBR , SYSUSR_ID , PAYMT_METH_CD , TNDR_CURNC_TYP_CD , SEQ_NBR )
-- )

-- tlpmtmth has a custom index with columns (prtn_nbr, sls_dt, str_nbr, rgstr_nbr, paymt_meth_cd, tndr_curnc_typ_cd, seq_nbr, last_upd_ts, crt_ts, paymt_amt, pmeth_amt_chg_flg, tndr_amt, pmeth_doc_id)
CREATE TABLE IF NOT EXISTS tlpmtmth (
	prtn_nbr          NUMERIC(3,0) NOT NULL,
	sls_dt            date NOT NULL,      -- Sales Date
	str_nbr           CHAR(4) NOT NULL,          -- Store Number
	sysusr_id         CHAR(24) NOT NULL,         -- Sysusr ID
	paymt_meth_cd     CHAR(2) NOT NULL,          -- Payment Method Code
	tndr_curnc_typ_cd CHAR(3) NOT NULL,          -- Currency Type Code
	seq_nbr           SMALLINT NOT NULL,         -- Sequence number
	last_upd_ts       TIMESTAMPTZ NOT NULL,
	crt_ts            TIMESTAMPTZ NOT NULL,
	paymt_amt         NUMERIC(18,4) NOT NULL,    -- Payment amount local currency amount
	pmeth_amt_chg_flg CHAR(1) NOT NULL,          -- Payment amount change flag (not used)
	tndr_amt          NUMERIC(18,4) NOT NULL,    -- Tender amount, actual amount tendered in payment currency
	pmeth_doc_id      CHAR(20) DEFAULT NULL,     -- Document ID
	rgstr_nbr         NUMERIC(3,0) NOT NULL,     -- Register Number
	cr_card_prcsr_id  CHAR(2) DEFAULT NULL,
	
	CONSTRAINT "pk_vltdata_tlpmtmth" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, sysusr_id, paymt_meth_cd, tndr_curnc_typ_cd, seq_nbr)
);


-- CREATE TABLE $DATA01.VLTDATA.TXEXTYPC
-- (
--   TAX_EX_TYP_CD                   SMALLINT NO DEFAULT NOT NULL
-- , LAST_UPD_TS                     DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , CRT_TS                          DATETIME YEAR TO FRACTION(6) NO DEFAULT NOT NULL
-- , SX_CF_TAX_EX_IND                CHAR(1) NO DEFAULT NOT NULL
-- , SX_CF_TAX_EX_ID                 SMALLINT NO DEFAULT NOT NULL
-- , PRIMARY KEY ( TAX_EX_TYP_CD )
-- );

CREATE TABLE IF NOT EXISTS txextypc (
	tax_ex_typ_cd    SMALLINT NOT NULL,
	last_upd_ts      TIMESTAMPTZ NOT NULL,
	crt_ts           TIMESTAMPTZ NOT NULL,
	sx_cf_tax_ex_ind CHAR(1) NOT NULL,
	sx_cf_tax_ex_id  SMALLINT NOT NULL,

	CONSTRAINT "pk_vltdata_txextypc" PRIMARY KEY (tax_ex_typ_cd)
);


-- CREATE TABLE $data01.vltdata.vladqscc
-- (
-- 	vlt_aud_qctgy_cd SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts      datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts           datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( vlt_aud_qctgy_cd )
-- );

CREATE TABLE IF NOT EXISTS vladqscc (
	vlt_aud_qctgy_cd SMALLINT NOT NULL,
	last_upd_ts      TIMESTAMPTZ NOT NULL,
	crt_ts           TIMESTAMPTZ NOT NULL,

	CONSTRAINT "pk_vltdata_vladqscc" PRIMARY KEY (vlt_aud_qctgy_cd)
);

-- CREATE TABLE $data18.vltdata.vldprcdn
-- (
-- 	prtn_nbr           NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt             datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr            CHAR(4) no DEFAULT NOT NULL ,
-- 	depst_seq_nbr      SMALLINT no DEFAULT NOT NULL ,
-- 	depst_recon_typ_cd SMALLINT no DEFAULT NOT NULL ,
-- 	denom_typ_cd       SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts             datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	denom_typ_qty      SMALLINT no DEFAULT NOT NULL ,
-- 	denom_typ_amt      NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	curnc_typ_cd       CHAR(3) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr , depst_seq_nbr , depst_recon_typ_cd , denom_typ_cd )
-- );

CREATE TABLE IF NOT EXISTS vldprcdn (
	prtn_nbr           NUMERIC(3,0) NOT NULL,
	sls_dt             date NOT NULL,
	str_nbr            CHAR(4) NOT NULL,
	depst_seq_nbr      SMALLINT NOT NULL,
	depst_recon_typ_cd SMALLINT NOT NULL,
	denom_typ_cd       SMALLINT NOT NULL,
	last_upd_ts        TIMESTAMPTZ NOT NULL,
	crt_ts             TIMESTAMPTZ NOT NULL,
	denom_typ_qty      SMALLINT NOT NULL,
	denom_typ_amt      NUMERIC(18,4) NOT NULL,
	curnc_typ_cd       CHAR(3) NOT NULL,
	
	CONSTRAINT "pk_vltdata_vldprcdn" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, depst_seq_nbr, depst_recon_typ_cd, denom_typ_cd)
);

-- CREATE TABLE $data13.vltdata.tmpcgdnm
-- (
-- 	prtn_nbr           NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	str_nbr            CHAR(4) no DEFAULT NOT NULL ,
-- 	vlt_cgord_nbr      INT no DEFAULT NOT NULL ,
-- 	vlt_cgord_stat_ind CHAR(1) no DEFAULT NOT NULL ,
-- 	denom_typ_cd       SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts             datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	curnc_typ_cd       CHAR(3) no DEFAULT NOT NULL ,
-- 	denom_typ_qty      SMALLINT no DEFAULT NOT NULL ,
-- 	denom_typ_amt      NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , str_nbr , vlt_cgord_nbr , vlt_cgord_stat_ind , denom_typ_cd )
-- );

-- Saves change order denomination information into the temp table. This temp table matches the permenant table.
CREATE TABLE IF NOT EXISTS tmpcgdnm (
	prtn_nbr           NUMERIC(3,0) NOT NULL,
	str_nbr            CHAR(4) NOT NULL,
	vlt_cgord_nbr      INT NOT NULL,
	vlt_cgord_stat_ind CHAR(1) NOT NULL,
	denom_typ_cd       SMALLINT NOT NULL,
	last_upd_ts        TIMESTAMPTZ NOT NULL,
	crt_ts             TIMESTAMPTZ NOT NULL,
	curnc_typ_cd       CHAR(3) NOT NULL,
	denom_typ_qty      SMALLINT NOT NULL,
	denom_typ_amt      NUMERIC(18,4) NOT NULL,

	CONSTRAINT "pk_vltdata_tmpcgdnm" PRIMARY KEY (prtn_nbr, str_nbr, vlt_cgord_nbr, vlt_cgord_stat_ind, denom_typ_cd)
);

-- CREATE TABLE $data14.vltdata.tmpcgord
-- (
-- 	prtn_nbr           NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	str_nbr            CHAR(4) no DEFAULT NOT NULL ,
-- 	vlt_cgord_nbr      INT no DEFAULT NOT NULL ,
-- 	last_upd_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts             datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	vlt_cgord_stat_ind CHAR(1) no DEFAULT NOT NULL ,
-- 	cgord_rpay_amt     NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	cgord_rpay_ts      datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	seal_nbr           CHAR(20) no DEFAULT NOT NULL ,
-- 	cgord_rpay_id      CHAR(8) DEFAULT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , str_nbr , vlt_cgord_nbr )
-- );

-- Saves change order header information into the temp table
CREATE TABLE IF NOT EXISTS tmpcgord (
	prtn_nbr           NUMERIC(3,0) NOT NULL,
	str_nbr            CHAR(4) NOT NULL,
	vlt_cgord_nbr      INT NOT NULL,
	last_upd_ts        TIMESTAMPTZ NOT NULL,
	crt_ts             TIMESTAMPTZ NOT NULL,
	vlt_cgord_stat_ind CHAR(1) NOT NULL,
	cgord_rpay_amt     NUMERIC(18,4) NOT NULL,
	cgord_rpay_ts      TIMESTAMPTZ NOT NULL,
	seal_nbr           CHAR(20) NOT NULL,
	cgord_rpay_id      CHAR(8) DEFAULT NULL,

	CONSTRAINT "pk_vltdata_tmpcgord" PRIMARY KEY (prtn_nbr, str_nbr, vlt_cgord_nbr)
);

-- CREATE TABLE $data18.vltdata.tmpdepst
-- (
-- 			prtn_nbr        NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 			sls_dt          datetime year TO day no DEFAULT NOT NULL ,
-- 			str_nbr         CHAR(4) no DEFAULT NOT NULL ,
-- 			depst_seq_nbr   SMALLINT no DEFAULT NOT NULL ,
-- 			last_upd_ts     datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 			crt_ts          datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 			subm_sysusr_id  CHAR(24) DEFAULT NULL ,
-- 			subm_ts         datetime year TO fraction(6) DEFAULT NULL ,
-- 			apprv_sysusr_id CHAR(24) DEFAULT NULL ,
-- 			apprv_ts        datetime year TO fraction(6) DEFAULT NULL ,
-- 			PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr , depst_seq_nbr )
-- );

CREATE TABLE IF NOT EXISTS tmpdepst (
	prtn_nbr        NUMERIC(3,0) NOT NULL,
	sls_dt          date NOT NULL,
	str_nbr         CHAR(4) NOT NULL,
	depst_seq_nbr   SMALLINT NOT NULL,
	last_upd_ts     TIMESTAMPTZ NOT NULL,
	crt_ts          TIMESTAMPTZ NOT NULL,
	subm_sysusr_id  CHAR(24) DEFAULT NULL,
	subm_ts         TIMESTAMPTZ DEFAULT NULL,
	apprv_sysusr_id CHAR(24) DEFAULT NULL,
	apprv_ts        TIMESTAMPTZ DEFAULT NULL,

	CONSTRAINT "pk_vltdata_tmpdepst" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, depst_seq_nbr)
);

-- CREATE TABLE $data11.vltdata.tmpdpdnm
-- (
-- 	prtn_nbr      NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt        datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr       CHAR(4) no DEFAULT NOT NULL ,
-- 	depst_seq_nbr SMALLINT no DEFAULT NOT NULL ,
-- 	depst_typ_cd  SMALLINT no DEFAULT NOT NULL ,
-- 	curnc_typ_cd  CHAR(3) no DEFAULT NOT NULL ,
-- 	denom_typ_cd  SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts   datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	denom_typ_qty SMALLINT no DEFAULT NOT NULL ,
-- 	denom_typ_amt NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr , depst_seq_nbr , depst_typ_cd , curnc_typ_cd , denom_typ_cd )
-- );

CREATE TABLE IF NOT EXISTS tmpdpdnm (
	prtn_nbr      NUMERIC(3,0) NOT NULL,
	sls_dt        date NOT NULL,
	str_nbr       CHAR(4) NOT NULL,
	depst_seq_nbr SMALLINT NOT NULL,
	depst_typ_cd  SMALLINT NOT NULL,
	curnc_typ_cd  CHAR(3) NOT NULL,
	denom_typ_cd  SMALLINT NOT NULL,
	last_upd_ts   TIMESTAMPTZ NOT NULL,
	crt_ts        TIMESTAMPTZ NOT NULL,
	denom_typ_qty SMALLINT NOT NULL,
	denom_typ_amt NUMERIC(18,4) NOT NULL,

	CONSTRAINT "pk_vltdata_tmpdpdnm" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, depst_seq_nbr, depst_typ_cd, curnc_typ_cd, denom_typ_cd)
);

-- CREATE TABLE $data18.vltdata.tmpdptyp
-- (
-- 	prtn_nbr      NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt        datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr       CHAR(4) no DEFAULT NOT NULL ,
-- 	depst_seq_nbr SMALLINT no DEFAULT NOT NULL ,
-- 	depst_typ_cd  SMALLINT no DEFAULT NOT NULL ,
-- 	curnc_typ_cd  CHAR(3) no DEFAULT NOT NULL ,
-- 	last_upd_ts   datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	vlt_depst_amt NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	seal_nbr      CHAR(20) DEFAULT NULL ,
-- 	vlt_seq_nbr   SMALLINT no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr , depst_seq_nbr , depst_typ_cd , curnc_typ_cd )
-- );

CREATE TABLE IF NOT EXISTS tmpdptyp (
	prtn_nbr      NUMERIC(3,0) NOT NULL,
	sls_dt        date NOT NULL,
	str_nbr       CHAR(4) NOT NULL,
	depst_seq_nbr SMALLINT NOT NULL,
	depst_typ_cd  SMALLINT NOT NULL,
	curnc_typ_cd  CHAR(3) NOT NULL,
	last_upd_ts   TIMESTAMPTZ NOT NULL,
	crt_ts        TIMESTAMPTZ NOT NULL,
	vlt_depst_amt NUMERIC(18,4) NOT NULL,
	seal_nbr      CHAR(20) DEFAULT NULL,
	vlt_seq_nbr   SMALLINT NOT NULL,
	
	CONSTRAINT "pk_vltdata_tmpdptyp" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, depst_seq_nbr, depst_typ_cd, curnc_typ_cd)
);

-- CREATE TABLE $data13.vltdata.vltadans
-- (
-- 	prtn_nbr        NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt          datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr         CHAR(4) no DEFAULT NOT NULL ,
-- 	cshr_sysusr_id  CHAR(24) no DEFAULT NOT NULL ,
-- 	vlt_aud_qst_id  SMALLINT no DEFAULT NOT NULL ,
-- 	vlt_aud_typ_cd  SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts     datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts          datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	vlt_aud_ans_flg CHAR(1) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr , cshr_sysusr_id , vlt_aud_qst_id , vlt_aud_typ_cd )
-- );

-- Contains the answers to the Over Short Research Questions.  The answer is either Y or N.	
CREATE TABLE IF NOT EXISTS vltadans (
	prtn_nbr        NUMERIC(3,0) NOT NULL,
	sls_dt          date NOT NULL,   -- Sales Date
	str_nbr         CHAR(4) NOT NULL,       -- Store Number
	cshr_sysusr_id  CHAR(24) NOT NULL,      -- Sysusr ID
	vlt_aud_qst_id  SMALLINT NOT NULL,      -- Question ID
	vlt_aud_typ_cd  SMALLINT NOT NULL,      -- Audit type code "100 - Out of Tolerance", "200 - In Tolerance"
	last_upd_ts     TIMESTAMPTZ NOT NULL,
	crt_ts          TIMESTAMPTZ NOT NULL,
	vlt_aud_ans_flg CHAR(1) NOT NULL,       -- Answer Flag Y or N

	CONSTRAINT "pk_vltdata_vltadans" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, cshr_sysusr_id, vlt_aud_qst_id, vlt_aud_typ_cd)
);

-- CREATE TABLE $data17.vltdata.vltaudos
-- (
-- 	prtn_nbr       NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt         datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr        CHAR(4) no DEFAULT NOT NULL ,
-- 	cshr_sysusr_id CHAR(24) no DEFAULT NOT NULL ,
-- 	vlt_aud_typ_cd SMALLINT no DEFAULT NOT NULL ,
-- 	paymt_meth_cd  CHAR(2) no DEFAULT NOT NULL ,
-- 	curnc_typ_cd   CHAR(3) no DEFAULT NOT NULL ,
-- 	last_upd_ts    datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts         datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	ovr_shrt_amt   NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr , cshr_sysusr_id , vlt_aud_typ_cd , paymt_meth_cd , curnc_typ_cd )
-- );

CREATE TABLE IF NOT EXISTS vltaudos (
	prtn_nbr       NUMERIC(3,0) NOT NULL,
	sls_dt         date NOT NULL,     -- Sales Date
	str_nbr        CHAR(4) NOT NULL,         -- Store number
	cshr_sysusr_id CHAR(24) NOT NULL,        -- Sysusr ID
	vlt_aud_typ_cd SMALLINT NOT NULL,        -- Audit type code "100 - Out of Tolerance", "200 - In Tolerance"
	paymt_meth_cd  CHAR(2) NOT NULL,         -- Payment Method Code
	curnc_typ_cd   CHAR(3) NOT NULL,         -- Currency Type Code
	last_upd_ts    TIMESTAMPTZ NOT NULL,
	crt_ts         TIMESTAMPTZ NOT NULL,
	ovr_shrt_amt   NUMERIC(18,4) NOT NULL,   -- Over Short Amount

	CONSTRAINT "pk_vltdata_vltaudos" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, cshr_sysusr_id, vlt_aud_typ_cd, paymt_meth_cd, curnc_typ_cd)
);

-- CREATE TABLE $data01.vltdata.vltadqsc
-- (
-- 	vlt_aud_qst_id   SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts      datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts           datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	vlt_aud_qctgy_cd SMALLINT no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( vlt_aud_qst_id )
-- );

CREATE TABLE IF NOT EXISTS vltadqsc (
	vlt_aud_qst_id   SMALLINT NOT NULL,
	last_upd_ts      TIMESTAMPTZ NOT NULL,
	crt_ts           TIMESTAMPTZ NOT NULL,
	vlt_aud_qctgy_cd SMALLINT NOT NULL,

	CONSTRAINT "pk_vltdata_vltadqsc" PRIMARY KEY (vlt_aud_qst_id)
);

-- CREATE TABLE $data01.vltdata.vltadtpc
-- (
-- 	vlt_aud_typ_cd SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts    datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts         datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( vlt_aud_typ_cd )
-- );

CREATE TABLE IF NOT EXISTS vltadtpc (
	vlt_aud_typ_cd SMALLINT NOT NULL,
	last_upd_ts    TIMESTAMPTZ NOT NULL,
	crt_ts         TIMESTAMPTZ NOT NULL,

	CONSTRAINT "pk_vltdata_vltadtpc" PRIMARY KEY (vlt_aud_typ_cd)
);

-- CREATE TABLE $data01.vltdata.vltadtpq
-- (
-- 	vlt_aud_typ_cd SMALLINT no DEFAULT NOT NULL ,
-- 	vlt_aud_qst_id SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts    datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts         datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( vlt_aud_typ_cd , vlt_aud_qst_id )
-- );

CREATE TABLE IF NOT EXISTS vltadtpq (
	vlt_aud_typ_cd SMALLINT NOT NULL,
	vlt_aud_qst_id SMALLINT NOT NULL,
	last_upd_ts    TIMESTAMPTZ NOT NULL,
	crt_ts         TIMESTAMPTZ NOT NULL,
	
	CONSTRAINT "pk_vltdata_vltadtpc" PRIMARY KEY (vlt_aud_typ_cd, vlt_aud_qst_id)
);

-- CREATE TABLE $data04.vltdata.vltaudcs
-- (
-- 	prtn_nbr          NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt            datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr           CHAR(4) no DEFAULT NOT NULL ,
-- 	sysusr_id         CHAR(24) no DEFAULT NOT NULL ,
-- 	cshr_sysusr_id    CHAR(24) no DEFAULT NOT NULL ,
-- 	last_upd_ts       datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts            datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	expln_oshrt_amt   NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	unexpln_oshrt_amt NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	user_id           CHAR(8) no DEFAULT NOT NULL ,
-- 	cshr_user_id      CHAR(8) no DEFAULT NOT NULL ,
-- 	curnc_typ_cd      CHAR(3) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr , sysusr_id , cshr_sysusr_id )
-- );

-- Vault audited cashier. This holds the saved explained and unexplained OS amounts from the OS Reseach performed.
CREATE TABLE IF NOT EXISTS vltaudcs (
	prtn_nbr          NUMERIC(3,0) NOT NULL,
	sls_dt            date NOT NULL,      -- Sales Date
	str_nbr           CHAR(4) NOT NULL,          -- Store Number
	sysusr_id         CHAR(24) NOT NULL,         -- Sysusr ID, Till Sysusr ID (Register)
	cshr_sysusr_id    CHAR(24) NOT NULL,         -- Cashier Sysusr ID, Till User Sysusr ID (Cashier)
	last_upd_ts       TIMESTAMPTZ NOT NULL,
	crt_ts            TIMESTAMPTZ NOT NULL,
	expln_oshrt_amt   NUMERIC(18,4) NOT NULL,
	unexpln_oshrt_amt NUMERIC(18,4) NOT NULL,
	user_id           CHAR(8) NOT NULL,          -- ID of the Register/Till
	cshr_user_id      CHAR(8) NOT NULL,          -- ID of the Cashier
	curnc_typ_cd      CHAR(3) NOT NULL,

	CONSTRAINT "pk_vltdata_vltaudcs" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, sysusr_id, cshr_sysusr_id)
);

-- CREATE TABLE $data14.vltdata.vltaudit
-- (
-- 	prtn_nbr         NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt           datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr          CHAR(4) no DEFAULT NOT NULL ,
-- 	cshr_sysusr_id   CHAR(24) no DEFAULT NOT NULL ,
-- 	vlt_aud_typ_cd   SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts      datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts           datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	aud_ts           datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	expln_prvd_flg   CHAR(1) DEFAULT NULL ,
-- 	ovrsh_rcvr_flg   CHAR(1) DEFAULT NULL ,
-- 	ovrsh_rcvr_dt    datetime year TO day DEFAULT NULL ,
-- 	cmplt_sysusr_id  CHAR(24) no DEFAULT NOT NULL ,
-- 	apprv_sysusr_id  CHAR(24) no DEFAULT NOT NULL ,
-- 	aapprv_sysusr_id CHAR(24) DEFAULT NULL ,
-- 	cmt_txt          VARCHAR(1000) DEFAULT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr , cshr_sysusr_id , vlt_aud_typ_cd )
-- );

CREATE TABLE IF NOT EXISTS vltaudit (
	prtn_nbr         NUMERIC(3,0) NOT NULL,
	sls_dt           date NOT NULL,
	str_nbr          CHAR(4) NOT NULL,
	cshr_sysusr_id   CHAR(24) NOT NULL,
	vlt_aud_typ_cd   SMALLINT NOT NULL,
	last_upd_ts      TIMESTAMPTZ NOT NULL,
	crt_ts           TIMESTAMPTZ NOT NULL,
	aud_ts           TIMESTAMPTZ NOT NULL,
	expln_prvd_flg   CHAR(1) DEFAULT NULL,
	ovrsh_rcvr_flg   CHAR(1) DEFAULT NULL,
	ovrsh_rcvr_dt    TIMESTAMPTZ DEFAULT NULL,
	cmplt_sysusr_id  CHAR(24) NOT NULL,
	apprv_sysusr_id  CHAR(24) NOT NULL,
	aapprv_sysusr_id CHAR(24) DEFAULT NULL,
	cmt_txt          VARCHAR(1000) DEFAULT NULL,

	CONSTRAINT "pk_vltdata_vltaudit" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, cshr_sysusr_id, vlt_aud_typ_cd)
);

-- CREATE TABLE $data12.vltdata.vltcgdnm
-- (
-- 	prtn_nbr           NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	str_nbr            CHAR(4) no DEFAULT NOT NULL ,
-- 	vlt_cgord_nbr      INT no DEFAULT NOT NULL ,
-- 	vlt_cgord_stat_ind CHAR(1) no DEFAULT NOT NULL ,
-- 	denom_typ_cd       SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts             datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	curnc_typ_cd       CHAR(3) no DEFAULT NOT NULL ,
-- 	denom_typ_qty      SMALLINT no DEFAULT NOT NULL ,
-- 	denom_typ_amt      NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , str_nbr , vlt_cgord_nbr , vlt_cgord_stat_ind , denom_typ_cd )
-- );

-- Vault Change Order Denominations. 
-- Each change order may have a list of denominations for the requested, received and repay amounts
CREATE TABLE IF NOT EXISTS vltcgdnm (
	prtn_nbr           NUMERIC(3,0) NOT NULL,
	str_nbr            CHAR(4) NOT NULL,         -- Store Number
	vlt_cgord_nbr      INT NOT NULL,             -- Change Order Number
	vlt_cgord_stat_ind CHAR(1) NOT NULL,         -- Status Indicator
	denom_typ_cd       SMALLINT NOT NULL,        -- Denomination Type Code
	last_upd_ts        TIMESTAMPTZ NOT NULL,
	crt_ts             TIMESTAMPTZ NOT NULL,
	curnc_typ_cd       CHAR(3) NOT NULL,         -- Currency Type Code
	denom_typ_qty      SMALLINT NOT NULL,        -- Denomination Quantity
	denom_typ_amt      NUMERIC(18,4) NOT NULL,   -- Denomination Amount

	CONSTRAINT "pk_vltdata_vltcgdnm" PRIMARY KEY (prtn_nbr, str_nbr, vlt_cgord_nbr, vlt_cgord_stat_ind, denom_typ_cd)
);

-- CREATE TABLE $data13.vltdata.vltcgord
-- (
-- 			prtn_nbr           NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 			str_nbr            CHAR(4) no DEFAULT NOT NULL ,
-- 			vlt_cgord_nbr      INT no DEFAULT NOT NULL ,
-- 			last_upd_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 			crt_ts             datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 			vlt_cgord_stat_ind CHAR(1) no DEFAULT NOT NULL ,
-- 			cgord_rqst_ts      datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 			cgord_rqst_amt     NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 			cgord_rcvd_ts      datetime year TO fraction(6) DEFAULT NULL ,
-- 			cgord_rcvd_amt     NUMERIC(18,4) DEFAULT NULL ,
-- 			curnc_typ_cd       CHAR(3) no DEFAULT NOT NULL ,
-- 			cgord_rpay_amt     NUMERIC(18,4) DEFAULT NULL ,
-- 			cgord_rpay_ts      datetime year TO fraction(6) DEFAULT NULL ,
-- 			seal_nbr           CHAR(20) DEFAULT NULL ,
-- 			cgord_rcnfm_nbr    VARCHAR(25) DEFAULT NULL ,
-- 			cgord_rqstr_id     CHAR(8) DEFAULT NULL ,
-- 			cgord_recv_id      CHAR(8) DEFAULT NULL ,
-- 			cgord_rpay_id      CHAR(8) DEFAULT NULL ,
-- 			PRIMARY KEY ( prtn_nbr , str_nbr , vlt_cgord_nbr )
-- );

-- Change Order Header Table
CREATE TABLE IF NOT EXISTS vltcgord (
	prtn_nbr           NUMERIC(3,0) NOT NULL,
	str_nbr            CHAR(4) NOT NULL,            -- Store Number
	vlt_cgord_nbr      INT NOT NULL,                -- Change Order Number
	last_upd_ts        TIMESTAMPTZ NOT NULL,
	crt_ts             TIMESTAMPTZ NOT NULL,
	vlt_cgord_stat_ind CHAR(1) NOT NULL,            -- Status Indicator 1 - Requested, 2 - Received, 3 - Repaid, 4 - Closed, 5 - Deposit
	cgord_rqst_ts      TIMESTAMPTZ NOT NULL,        -- Request Timestamp
	cgord_rqst_amt     NUMERIC(18,4) NOT NULL,      -- Request Amount
	cgord_rcvd_ts      TIMESTAMPTZ DEFAULT NULL,    -- Received Timestamp
	cgord_rcvd_amt     NUMERIC(18,4) DEFAULT NULL,  -- Received Amount
	curnc_typ_cd       CHAR(3) NOT NULL,            -- Currency Type Code
	cgord_rpay_amt     NUMERIC(18,4) DEFAULT NULL,  -- Repay Amount
	cgord_rpay_ts      TIMESTAMPTZ DEFAULT NULL,    -- Repay Timestamp
	seal_nbr           CHAR(20) DEFAULT NULL,       -- Seal Number
	cgord_rcnfm_nbr    VARCHAR(25) DEFAULT NULL,    -- Confirmation Number
	cgord_rqstr_id     CHAR(8) DEFAULT NULL,        -- Requester ID
	cgord_recv_id      CHAR(8) DEFAULT NULL,        -- Receive ID
	cgord_rpay_id      CHAR(8) DEFAULT NULL,        -- Repay ID

	CONSTRAINT "pk_vltdata_vltcgord" PRIMARY KEY (prtn_nbr, str_nbr, vlt_cgord_nbr)
);

-- CREATE TABLE $data11.vltdata.vltclsrp
-- (
-- 	prtn_nbr           NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt             datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr            CHAR(4) no DEFAULT NOT NULL ,
-- 	last_upd_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts             datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	gst_tax_exmpt_amt  NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	pst_tax_exmpt_amt  NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	mer_dept_list_txt  VARCHAR(512) no DEFAULT NOT NULL ,
-- 	non_mdept_list_txt VARCHAR(512) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr )
-- );

-- Adds a row to signify that the sales date is closed and the FIN2 comm file can be processed.
-- The data sent in this service is retrieved from the ISP.
-- Holds the data that was retrieved from the store for FIN2 Conn File processing.
CREATE TABLE IF NOT EXISTS vltclsrp (
	prtn_nbr           NUMERIC(3,0) NOT NULL,
	sls_dt             date NOT NULL,     -- Sales Date
	str_nbr            CHAR(4) NOT NULL,         -- Store Number
	last_upd_ts        TIMESTAMPTZ NOT NULL,
	crt_ts             TIMESTAMPTZ NOT NULL,
	gst_tax_exmpt_amt  NUMERIC(18,4) NOT NULL,   -- GST Tax Exempt Amount
	pst_tax_exmpt_amt  NUMERIC(18,4) NOT NULL,   -- PST Tax Exempt Amount
	mer_dept_list_txt  VARCHAR(512) NOT NULL,    -- Merchandise Department List
	non_mdept_list_txt VARCHAR(512) NOT NULL,    -- Non-merchandise Department List
	
	CONSTRAINT "pk_vltdata_vltclsrp" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr)
);

-- CREATE TABLE $data14.vltdata.vltctosr
-- (
-- 	prtn_nbr        NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	vlt_cnt_dt      datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr         CHAR(4) no DEFAULT NOT NULL ,
-- 	seq_nbr         SMALLINT no DEFAULT NOT NULL ,
-- 	ovr_shrt_rsn_cd SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts     datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts          datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , vlt_cnt_dt , str_nbr , seq_nbr , ovr_shrt_rsn_cd )
-- );

-- Retrieves the data for the Vault Count Report
-- wrong name = VLTCNTOSR, correct name = VLTCTOSR
CREATE TABLE IF NOT EXISTS vltctosr (
	prtn_nbr        NUMERIC(3,0) NOT NULL,
	vlt_cnt_dt      TIMESTAMPTZ NOT NULL,
	str_nbr         CHAR(4) NOT NULL,
	seq_nbr         SMALLINT NOT NULL,
	ovr_shrt_rsn_cd SMALLINT NOT NULL,
	last_upd_ts     TIMESTAMPTZ NOT NULL,
	crt_ts          TIMESTAMPTZ NOT NULL,
	
	CONSTRAINT "pk_vltdata_vltctosr" PRIMARY KEY (prtn_nbr, vlt_cnt_dt, str_nbr, seq_nbr, ovr_shrt_rsn_cd)
);

-- CREATE TABLE $data15.vltdata.vltcsadl
-- (
-- 	prtn_nbr       NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	str_nbr        CHAR(4) no DEFAULT NOT NULL ,
-- 	cshr_sysusr_id CHAR(24) no DEFAULT NOT NULL ,
-- 	last_upd_ts    datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts         datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	last_aud_dt    datetime year TO day no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , str_nbr , cshr_sysusr_id )
-- );

-- Stores the last audit date of a cashier
-- Returns yes if a cashier is either flagged for audit or if the time since the last audit is past the specifiec duration
CREATE TABLE IF NOT EXISTS vltcsadl (
	prtn_nbr       NUMERIC(3,0) NOT NULL,
	str_nbr        CHAR(4) NOT NULL,        -- Store Number
	cshr_sysusr_id CHAR(24) NOT NULL,       -- Sysusr ID
	last_upd_ts    TIMESTAMPTZ NOT NULL,
	crt_ts         TIMESTAMPTZ NOT NULL,
	last_aud_dt    TIMESTAMPTZ NOT NULL,    -- Last Audit Date
	
	CONSTRAINT "pk_vltdata_vltcsadl" PRIMARY KEY (prtn_nbr, str_nbr, cshr_sysusr_id)
);

-- CREATE TABLE $data16.vltdata.vltcsaud
-- (
-- 	prtn_nbr           NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	str_nbr            CHAR(4) no DEFAULT NOT NULL ,
-- 	cshr_sysusr_id     CHAR(24) no DEFAULT NOT NULL ,
-- 	aud_bgn_dt         datetime year TO day no DEFAULT NOT NULL ,
-- 	last_upd_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts             datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	aud_end_dt         datetime year TO day no DEFAULT NOT NULL ,
-- 	vl_admin_sysusr_id CHAR(24) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , str_nbr , cshr_sysusr_id , aud_bgn_dt )
-- );

-- Stores the audit begin and end date for cashiers flagged for daily audit
-- Returns all cashiers that are flagged for daily audit either currently or in the future	
CREATE TABLE IF NOT EXISTS vltcsaud (
	prtn_nbr           NUMERIC(3,0) NOT NULL,
	str_nbr            CHAR(4) NOT NULL,         -- Store Number
	cshr_sysusr_id     CHAR(24) NOT NULL,        -- Sysusr ID
	aud_bgn_dt         TIMESTAMPTZ NOT NULL,     -- Audit Begin Date
	last_upd_ts        TIMESTAMPTZ NOT NULL,
	crt_ts             TIMESTAMPTZ NOT NULL,
	aud_end_dt         TIMESTAMPTZ NOT NULL,     -- Audit End Date
	vl_admin_sysusr_id CHAR(24) NOT NULL,        -- Admin Sysusr ID
	
	CONSTRAINT "pk_vltdata_vltcsaud" PRIMARY KEY (prtn_nbr, str_nbr, cshr_sysusr_id, aud_bgn_dt)
);

-- CREATE TABLE $data02.vltdata.vltcshrg
-- (
-- 	prtn_nbr  NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt    datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr   CHAR(4) no DEFAULT NOT NULL ,
-- 	sysusr_id CHAR(24) no DEFAULT NOT NULL ,
-- 	rgstr_nbr NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	crt_ts    datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr , sysusr_id , rgstr_nbr )
-- );

-- Contains a listing a cashier and what registers they worked on in a given sales date.
CREATE TABLE IF NOT EXISTS vltcshrg (
	prtn_nbr  NUMERIC(3,0) NOT NULL,
	sls_dt    date NOT NULL,     -- Sales Date
	str_nbr   CHAR(4) NOT NULL,         -- Store Number
	sysusr_id CHAR(24) NOT NULL,        -- Sysusr ID
	rgstr_nbr NUMERIC(3,0) NOT NULL,    -- Register Number
	crt_ts    TIMESTAMPTZ NOT NULL,
	
	CONSTRAINT "pk_vltdata_vltcshrg" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, sysusr_id, rgstr_nbr)
);

-- CREATE TABLE $data11.vltdata.vltct
-- (
-- 	prtn_nbr           NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	vlt_cnt_dt         datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr            CHAR(4) no DEFAULT NOT NULL ,
-- 	seq_nbr            SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts             datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	auth_vlt_fund_amt  NUMERIC(18,4) DEFAULT NULL ,
-- 	vlt_cnt_tot_amt    NUMERIC(18,4) DEFAULT NULL ,
-- 	curnc_typ_cd       CHAR(3) no DEFAULT NOT NULL ,
-- 	vlt_cnt_oshrt_amt  NUMERIC(18,4) DEFAULT NULL ,
-- 	vlt_cnt_depst_flg  CHAR(1) DEFAULT NULL ,
-- 	vlt_cnt_prcss_ts   datetime year TO fraction(6) DEFAULT NULL ,
-- 	till_iss_sysusr_id CHAR(24) DEFAULT NULL ,
-- 	apprv_flg          CHAR(1) DEFAULT NULL ,
-- 	apprv_sysusr_id    CHAR(24) DEFAULT NULL ,
-- 	apprv_ts           datetime year TO fraction(6) DEFAULT NULL ,
-- 	vlt_cnt_sysusr_id  CHAR(24) DEFAULT " " ,
-- 	cmt_txt            VARCHAR(300) DEFAULT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , vlt_cnt_dt , str_nbr , seq_nbr )
-- );		

-- Vault Count header table
CREATE TABLE IF NOT EXISTS vltct (
	prtn_nbr           NUMERIC(3,0) NOT NULL,
	vlt_cnt_dt         TIMESTAMPTZ NOT NULL,           -- Vault Count Date
	str_nbr            CHAR(4) NOT NULL,               -- Store Number
	seq_nbr            SMALLINT NOT NULL,              -- Sequence Number
	last_upd_ts        TIMESTAMPTZ NOT NULL,
	crt_ts             TIMESTAMPTZ NOT NULL,
	auth_vlt_fund_amt  NUMERIC(18,4) DEFAULT NULL,     -- Authorized Vault Fund Amount
	vlt_cnt_tot_amt    NUMERIC(18,4) DEFAULT NULL,     -- Vault Count Total
	curnc_typ_cd       CHAR(3) NOT NULL,               -- Currency Type Code
	vlt_cnt_oshrt_amt  NUMERIC(18,4) DEFAULT NULL,     -- Vault Over Short Amount
	vlt_cnt_depst_flg  CHAR(1) DEFAULT NULL,           -- Depository Vault Count Flag
	vlt_cnt_prcss_ts   TIMESTAMPTZ DEFAULT NULL,       -- Vault Count Timestamp
	till_iss_sysusr_id CHAR(24) DEFAULT NULL,          -- Change Drawer Issed To ID (no longer used)
	apprv_flg          CHAR(1) DEFAULT NULL,           -- Approval Flag
	apprv_sysusr_id    CHAR(24) DEFAULT NULL,          -- Approval Manager ID
	apprv_ts           TIMESTAMPTZ DEFAULT NULL,       -- Approval Timestamp
	vlt_cnt_sysusr_id  CHAR(24) DEFAULT ' ',           -- Vault Count ID
	cmt_txt            VARCHAR(300) DEFAULT NULL,      -- Comments
	
	CONSTRAINT "pk_vltdata_vltct" PRIMARY KEY (prtn_nbr, vlt_cnt_dt, str_nbr, seq_nbr)
);

-- CREATE TABLE $data12.vltdata.vltctdnm
-- (
-- 	prtn_nbr        NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	vlt_cnt_dt      datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr         CHAR(4) no DEFAULT NOT NULL ,
-- 	seq_nbr         SMALLINT no DEFAULT NOT NULL ,
-- 	vlt_cnt_typ_ind CHAR(2) no DEFAULT NOT NULL ,
-- 	denom_typ_cd    SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts     datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts          datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	curnc_typ_cd    CHAR(3) DEFAULT NULL ,
-- 	denom_typ_qty   SMALLINT no DEFAULT NOT NULL ,
-- 	denom_typ_amt   NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , vlt_cnt_dt , str_nbr , seq_nbr , vlt_cnt_typ_ind , denom_typ_cd )
-- );

-- Vault Count Denominations (Safe and Change Drawer Denominations)	
CREATE TABLE IF NOT EXISTS vltctdnm (
	prtn_nbr        NUMERIC(3,0) NOT NULL,
	vlt_cnt_dt      TIMESTAMPTZ NOT NULL,       -- Vault Count Date
	str_nbr         CHAR(4) NOT NULL,           -- Store Number
	seq_nbr         SMALLINT NOT NULL,          -- Sequence Number
	vlt_cnt_typ_ind CHAR(2) NOT NULL,           -- Vault Count Type Indicator "10 - Safe, 20 - Change Drawer"
	denom_typ_cd    SMALLINT NOT NULL,          -- Denomination Type Code
	last_upd_ts     TIMESTAMPTZ NOT NULL,
	crt_ts          TIMESTAMPTZ NOT NULL,
	curnc_typ_cd    CHAR(3) DEFAULT NULL,       -- Currency Type Code
	denom_typ_qty   SMALLINT NOT NULL,          -- Denomination Quantity
	denom_typ_amt   NUMERIC(18,4) NOT NULL,     -- Denomination Amount
	
	CONSTRAINT "pk_vltdata_vltctdnm" PRIMARY KEY (prtn_nbr, vlt_cnt_dt, str_nbr, seq_nbr, vlt_cnt_typ_ind, denom_typ_cd)
);


-- CREATE TABLE $data13.vltdata.vltctlnt
-- (
-- 	prtn_nbr         NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	vlt_cnt_dt       datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr          CHAR(4) no DEFAULT NOT NULL ,
-- 	seq_nbr          SMALLINT no DEFAULT NOT NULL ,
-- 	vlt_dtl_line_ind CHAR(2) no DEFAULT NOT NULL ,
-- 	last_upd_ts      datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts           datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	vlt_dtl_line_amt NUMERIC(18,4) DEFAULT NULL ,
-- 	curnc_typ_cd     CHAR(3) DEFAULT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , vlt_cnt_dt , str_nbr , seq_nbr , vlt_dtl_line_ind )
-- );

-- Vault Count Line Totals
CREATE TABLE IF NOT EXISTS vltctlnt (
	prtn_nbr         NUMERIC(3,0) NOT NULL,
	vlt_cnt_dt       TIMESTAMPTZ NOT NULL,          -- Vault Count Date
	str_nbr          CHAR(4) NOT NULL,              -- Store Number
	seq_nbr          SMALLINT NOT NULL,             -- Sequence Number	
	vlt_dtl_line_ind CHAR(2) NOT NULL,              -- Line Indicator 10 - Increase Requests, 20 - Change Requests, 30 - Change Drawer, 50 - Received Change Orders, 60 - Terminations, 70 - Repaid Change Orders
	last_upd_ts      TIMESTAMPTZ NOT NULL,
	crt_ts           TIMESTAMPTZ NOT NULL,
	vlt_dtl_line_amt NUMERIC(18,4) DEFAULT NULL,    -- Line Amount
	curnc_typ_cd     CHAR(3) DEFAULT NULL,          -- Currency Type Code
	
	CONSTRAINT "pk_vltdata_vltctlnt" PRIMARY KEY (prtn_nbr, vlt_cnt_dt, str_nbr, seq_nbr, vlt_dtl_line_ind)
);

-- CREATE TABLE $data15.vltdata.vltcttil
-- (
-- 	prtn_nbr         NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	vlt_cnt_dt       datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr          CHAR(4) no DEFAULT NOT NULL ,
-- 	seq_nbr          SMALLINT no DEFAULT NOT NULL ,
-- 	pos_rgstr_typ_cd SMALLINT no DEFAULT NOT NULL ,
-- 	till_loc_typ_ind CHAR(2) no DEFAULT NOT NULL ,
-- 	last_upd_ts      datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts           datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	till_cnt         SMALLINT DEFAULT NULL ,
-- 	till_amt         NUMERIC(18,4) DEFAULT NULL ,
-- 	curnc_typ_cd     CHAR(3) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , vlt_cnt_dt , str_nbr , seq_nbr , pos_rgstr_typ_cd , till_loc_typ_ind )
-- );

-- Vault Count Tills
CREATE TABLE IF NOT EXISTS vltcttil (
	prtn_nbr         NUMERIC(3,0) NOT NULL,
	vlt_cnt_dt       TIMESTAMPTZ NOT NULL,        -- Vault Count Date
	str_nbr          CHAR(4) NOT NULL,            -- Store Number
	seq_nbr          SMALLINT NOT NULL,           -- Sequence Number
	pos_rgstr_typ_cd SMALLINT NOT NULL,           -- Register Type Code
	till_loc_typ_ind CHAR(2) NOT NULL,            -- Location Indicator IN - IN, OT - OUT
	last_upd_ts      TIMESTAMPTZ NOT NULL,
	crt_ts           TIMESTAMPTZ NOT NULL,
	till_cnt         SMALLINT DEFAULT NULL,       -- Till Count
	till_amt         NUMERIC(18,4) DEFAULT NULL,  -- Till Amount
	curnc_typ_cd     CHAR(3) NOT NULL,            -- Currency Type Code
	nc_typ_cd        CHAR(3) DEFAULT NULL,          
	
	CONSTRAINT "pk_vltdata_vltcttil" PRIMARY KEY (prtn_nbr, vlt_cnt_dt, str_nbr, seq_nbr, pos_rgstr_typ_cd, till_loc_typ_ind)
);

-- CREATE TABLE $data17.vltdata.vltdepst
-- (
-- 	prtn_nbr        NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt          datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr         CHAR(4) no DEFAULT NOT NULL ,
-- 	depst_seq_nbr   SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts     datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts          datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	subm_sysusr_id  CHAR(24) DEFAULT NULL ,
-- 	subm_ts         datetime year TO fraction(6) DEFAULT NULL ,
-- 	apprv_sysusr_id CHAR(24) DEFAULT NULL ,
-- 	apprv_ts        datetime year TO fraction(6) DEFAULT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr , depst_seq_nbr )
-- );

-- Vault Deposit Header Table
CREATE TABLE IF NOT EXISTS vltdepst (
	prtn_nbr        NUMERIC(3,0) NOT NULL,
	sls_dt          date NOT NULL,        -- Sales Date
	str_nbr         CHAR(4) NOT NULL,            -- Store Number
	depst_seq_nbr   SMALLINT NOT NULL,           -- Deposit Sequence Number
	last_upd_ts     TIMESTAMPTZ NOT NULL,
	crt_ts          TIMESTAMPTZ NOT NULL,
	subm_sysusr_id  CHAR(24) DEFAULT NULL,       -- Submitter Sysusr ID
	subm_ts         TIMESTAMPTZ DEFAULT NULL,    -- Submitted Timestamp
	apprv_sysusr_id CHAR(24) DEFAULT NULL,       -- Approve User ID
	apprv_ts        TIMESTAMPTZ DEFAULT NULL,    -- Approve Timestamp
	
	CONSTRAINT "pk_vltdata_vltdepst" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, depst_seq_nbr)
);

-- CREATE TABLE $data18.vltdata.vltdpdnm
-- (
-- 	prtn_nbr      NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt        datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr       CHAR(4) no DEFAULT NOT NULL ,
-- 	depst_seq_nbr SMALLINT no DEFAULT NOT NULL ,
-- 	depst_typ_cd  SMALLINT no DEFAULT NOT NULL ,
-- 	curnc_typ_cd  CHAR(3) no DEFAULT NOT NULL ,
-- 	denom_typ_cd  SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts   datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	denom_typ_qty SMALLINT no DEFAULT NOT NULL ,
-- 	denom_typ_amt NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr , depst_seq_nbr , depst_typ_cd , curnc_typ_cd , denom_typ_cd )
-- );

-- Vault deposit denom details. There will only be records in this tables for deposits that require denomination data.
CREATE TABLE IF NOT EXISTS vltdpdnm (
	prtn_nbr      NUMERIC(3,0) NOT NULL,
	sls_dt        date NOT NULL,     -- Sales Date
	str_nbr       CHAR(4) NOT NULL,         -- Store Number
	depst_seq_nbr SMALLINT NOT NULL,        -- Deposit Sequence Number
	depst_typ_cd  SMALLINT NOT NULL,        -- Deposit Type Code
	curnc_typ_cd  CHAR(3) NOT NULL,         -- Currency Type Code
	denom_typ_cd  SMALLINT NOT NULL,        -- Denomination Type Code
	last_upd_ts   TIMESTAMPTZ NOT NULL,
	crt_ts        TIMESTAMPTZ NOT NULL,
	denom_typ_qty SMALLINT NOT NULL,        -- Denomination Quantity
	denom_typ_amt NUMERIC(18,4) NOT NULL,   -- Denomination Amount
	
	CONSTRAINT "pk_vltdata_vltdpdnm" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, depst_seq_nbr, depst_typ_cd, curnc_typ_cd, denom_typ_cd)
);

-- CREATE TABLE $data16.vltdata.vltdprec
-- (
-- 	prtn_nbr           NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt             datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr            CHAR(4) no DEFAULT NOT NULL ,
-- 	depst_seq_nbr      SMALLINT no DEFAULT NOT NULL ,
-- 	depst_recon_typ_cd SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts             datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	vlt_depst_amt      NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr , depst_seq_nbr , depst_recon_typ_cd )
-- );

CREATE TABLE IF NOT EXISTS vltdprec (
	prtn_nbr           NUMERIC(3,0) NOT NULL,
	sls_dt             date NOT NULL,
	str_nbr            CHAR(4) NOT NULL,
	depst_seq_nbr      SMALLINT NOT NULL,
	depst_recon_typ_cd SMALLINT NOT NULL,
	last_upd_ts        TIMESTAMPTZ NOT NULL,
	crt_ts             TIMESTAMPTZ NOT NULL,
	vlt_depst_amt      NUMERIC(18,4) NOT NULL,
	
	CONSTRAINT "pk_vltdata_vltdprec" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, depst_seq_nbr, depst_recon_typ_cd)
);

-- CREATE TABLE $data17.vltdata.vltdptyp
-- (
-- 	prtn_nbr      NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt        datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr       CHAR(4) no DEFAULT NOT NULL ,
-- 	depst_seq_nbr SMALLINT no DEFAULT NOT NULL ,
-- 	depst_typ_cd  SMALLINT no DEFAULT NOT NULL ,
-- 	curnc_typ_cd  CHAR(3) no DEFAULT NOT NULL ,
-- 	last_upd_ts   datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	vlt_depst_amt NUMERIC(18,4) no DEFAULT NOT NULL ,
-- 	seal_nbr      CHAR(20) DEFAULT NULL ,
-- 	vlt_seq_nbr   SMALLINT no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr , depst_seq_nbr , depst_typ_cd , curnc_typ_cd )
-- );

-- Vault Deposit Detail Table - One row for each deposit type.
CREATE TABLE IF NOT EXISTS vltdptyp (
	prtn_nbr      NUMERIC(3,0) NOT NULL,
	sls_dt        date NOT NULL,       -- Sales Date
	str_nbr       CHAR(4) NOT NULL,           -- Store Number
	depst_seq_nbr SMALLINT NOT NULL,          -- Deposit Sequence Number	
	depst_typ_cd  SMALLINT NOT NULL,          -- Deposit Type Code	CASH DEPOSIT = 5, CHECK DEPOSIT = 10, CHANGE ORDER = 20, SAFE BALANCE = 25, SUBMITTED STRIP = 30, SAVED STRIP = 31, FOREIGN TRAVELERS CHECK = 40, FOREIGN CURRENCY DEPOSIT = 50, VAULT ADJUSTMENT = 60, TERMINATION = 65, MISC DEPOSIT = 1000+
	curnc_typ_cd  CHAR(3) NOT NULL,           -- Currency Type Code
	last_upd_ts   TIMESTAMPTZ NOT NULL,
	crt_ts        TIMESTAMPTZ NOT NULL,
	vlt_depst_amt NUMERIC(18,4) NOT NULL,     -- Deposit Amount
	seal_nbr      CHAR(20) DEFAULT NULL,      -- Seal Number
	vlt_seq_nbr   SMALLINT NOT NULL,          -- Vault Sequence Number
	
	CONSTRAINT "pk_vltdata_vltdptyp" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr, depst_seq_nbr, depst_typ_cd, curnc_typ_cd)
);

-- CREATE TABLE $data03.vltdata.vltgrprm
-- (
-- 	vlt_parm_cd   SMALLINT no DEFAULT NOT NULL ,
-- 	geo_rgn_cd    SMALLINT no DEFAULT NOT NULL ,
-- 	seq_nbr       SMALLINT no DEFAULT NOT NULL ,
-- 	eff_bgn_dt    datetime year TO day no DEFAULT NOT NULL ,
-- 	last_upd_ts   datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	eff_end_dt    datetime year TO day DEFAULT NULL ,
-- 	parm_dt       datetime year TO day DEFAULT NULL ,
-- 	parm_ts       datetime year TO fraction(6) DEFAULT NULL ,
-- 	parm_tm       datetime hour TO fraction(6) DEFAULT NULL ,
-- 	parm_dec_val  NUMERIC(18,4) DEFAULT NULL ,
-- 	parm_int_val  INT DEFAULT NULL ,
-- 	parm_char_val VARCHAR(80) DEFAULT NULL ,
-- 	PRIMARY KEY ( vlt_parm_cd , geo_rgn_cd , seq_nbr , eff_bgn_dt )
-- );
	
-- Vault group/country paramters
-- Holds contry specific parameter values and store default parameters.
CREATE TABLE IF NOT EXISTS vltgrprm (
	vlt_parm_cd   SMALLINT NOT NULL,            -- Vault Parameter Code
	geo_rgn_cd    SMALLINT NOT NULL,            -- Geographic Region Code 1 - US, 2 - Canada
	seq_nbr       SMALLINT NOT NULL,            -- Sequence Number
	eff_bgn_dt    TIMESTAMPTZ NOT NULL,         -- Effective Begin Date
	last_upd_ts   TIMESTAMPTZ NOT NULL,
	crt_ts        TIMESTAMPTZ NOT NULL,
	eff_end_dt    TIMESTAMPTZ DEFAULT NULL,     -- Effective End Date
	parm_dt       TIMESTAMPTZ DEFAULT NULL,     -- Date Value
	parm_ts       TIMESTAMPTZ DEFAULT NULL,     -- Timestamp Value
	parm_tm       TIMESTAMPTZ DEFAULT NULL,     -- Time Value
	parm_dec_val  NUMERIC(18,4) DEFAULT NULL,   -- Decimal Value
	parm_int_val  INT DEFAULT NULL,             -- Integer Value
	parm_char_val VARCHAR(80) DEFAULT NULL,     -- Character Value
	
	CONSTRAINT "pk_vltdata_vltgrprm" PRIMARY KEY (vlt_parm_cd, geo_rgn_cd, seq_nbr, eff_bgn_dt)
);

-- CREATE TABLE $data14.vltdata.vltstprm
-- (
-- 	vlt_parm_cd   SMALLINT no DEFAULT NOT NULL ,
-- 	str_nbr       CHAR(4) no DEFAULT NOT NULL ,
-- 	seq_nbr       SMALLINT no DEFAULT NOT NULL ,
-- 	eff_bgn_dt    datetime year TO day no DEFAULT NOT NULL ,
-- 	last_upd_ts   datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	eff_end_dt    datetime year TO day DEFAULT NULL ,
-- 	parm_dt       datetime year TO day DEFAULT NULL ,
-- 	parm_ts       datetime year TO fraction(6) DEFAULT NULL ,
-- 	parm_tm       datetime hour TO fraction(6) DEFAULT NULL ,
-- 	parm_dec_val  NUMERIC(18,4) DEFAULT NULL ,
-- 	parm_int_val  INT DEFAULT NULL ,
-- 	parm_char_val VARCHAR(80) DEFAULT NULL ,
-- 	PRIMARY KEY ( vlt_parm_cd , str_nbr , seq_nbr , eff_bgn_dt )
-- );

-- Vault parameters by store
CREATE TABLE IF NOT EXISTS vltstprm (
	vlt_parm_cd   SMALLINT NOT NULL,
	str_nbr       CHAR(4) NOT NULL,
	seq_nbr       SMALLINT NOT NULL,
	eff_bgn_dt    TIMESTAMPTZ NOT NULL,
	last_upd_ts   TIMESTAMPTZ NOT NULL,
	crt_ts        TIMESTAMPTZ NOT NULL,
	eff_end_dt    TIMESTAMPTZ DEFAULT NULL,
	parm_dt       TIMESTAMPTZ DEFAULT NULL,
	parm_ts       TIMESTAMPTZ DEFAULT NULL,
	parm_tm       TIMESTAMPTZ DEFAULT NULL,
	parm_dec_val  NUMERIC(18,4) DEFAULT NULL,
	parm_int_val  INT DEFAULT NULL,
	parm_char_val VARCHAR(80) DEFAULT NULL,
	
	CONSTRAINT "pk_vltdata_vltstprm" PRIMARY KEY (vlt_parm_cd, str_nbr, seq_nbr, eff_bgn_dt)
);

-- CREATE TABLE $data03.vltdata.vltlbprm
-- (
-- 	vlt_parm_cd   SMALLINT no DEFAULT NOT NULL ,
-- 	lob_cd        NUMERIC(4,0) no DEFAULT NOT NULL ,
-- 	seq_nbr       SMALLINT no DEFAULT NOT NULL ,
-- 	eff_bgn_dt    datetime year TO day no DEFAULT NOT NULL ,
-- 	last_upd_ts   datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts        datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	eff_end_dt    datetime year TO day DEFAULT NULL ,
-- 	parm_dt       datetime year TO day DEFAULT NULL ,
-- 	parm_ts       datetime year TO fraction(6) DEFAULT NULL ,
-- 	parm_tm       datetime hour TO fraction(6) DEFAULT NULL ,
-- 	parm_dec_val  NUMERIC(18,4) DEFAULT NULL ,
-- 	parm_int_val  INT DEFAULT NULL ,
-- 	parm_char_val VARCHAR(80) DEFAULT NULL ,
-- 	PRIMARY KEY ( vlt_parm_cd , lob_cd , seq_nbr , eff_bgn_dt )
-- );

-- Vault parameters by line of business.
-- Not used
CREATE TABLE IF NOT EXISTS vltlbprm (
	vlt_parm_cd   SMALLINT NOT NULL,
	lob_cd        NUMERIC(4,0) NOT NULL,
	seq_nbr       SMALLINT NOT NULL,
	eff_bgn_dt    TIMESTAMPTZ NOT NULL,
	last_upd_ts   TIMESTAMPTZ NOT NULL,
	crt_ts        TIMESTAMPTZ NOT NULL,
	eff_end_dt    TIMESTAMPTZ DEFAULT NULL,
	parm_dt       TIMESTAMPTZ DEFAULT NULL,
	parm_ts       TIMESTAMPTZ DEFAULT NULL,
	parm_tm       TIMESTAMPTZ DEFAULT NULL,
	parm_dec_val  NUMERIC(18,4) DEFAULT NULL,
	parm_int_val  INT DEFAULT NULL,
	parm_char_val VARCHAR(80) DEFAULT NULL,
	
	CONSTRAINT "pk_vltdata_vltlbprm" PRIMARY KEY (vlt_parm_cd, lob_cd, seq_nbr, eff_bgn_dt)
);

-- CREATE TABLE $data03.vltdata.vltparmc
-- (
-- 	vlt_parm_cd  SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts  datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts       datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	data_typ_ind CHAR(9) no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( vlt_parm_cd )
-- );

-- Vault Parameter Codes
CREATE TABLE IF NOT EXISTS vltparmc (
	vlt_parm_cd  SMALLINT NOT NULL,
	last_upd_ts  TIMESTAMPTZ NOT NULL,
	crt_ts       TIMESTAMPTZ NOT NULL,
	data_typ_ind CHAR(9) NOT NULL,
	
	CONSTRAINT "pk_vltdata_vltparmc" PRIMARY KEY (vlt_parm_cd)
);

CREATE TABLE if not exists NVLTPARM (
    VLT_PARM_CD                     SMALLINT NOT NULL,
    LANG_CD                         CHAR(5) NOT NULL,
    LAST_UPD_TS                     timestamptz not NULL,
    CRT_TS                          timestamptz not NULL,
    D_VLT_PARM_CD                   CHAR(10) NOT NULL,
    S_VLT_PARM_DESC                 CHAR(20) NOT NULL,
    VLT_PARM_DESC                   VARCHAR(150) NOT NULL,

    constraint "pk_NVLTPARM" PRIMARY KEY ( VLT_PARM_CD, LANG_CD )
);

-- CREATE TABLE $data15.vltdata.vltslsdt
-- (
-- 	prtn_nbr          NUMERIC(3,0) no DEFAULT NOT NULL ,
-- 	sls_dt            datetime year TO day no DEFAULT NOT NULL ,
-- 	str_nbr           CHAR(4) no DEFAULT NOT NULL ,
-- 	last_upd_ts       datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts            datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	sls_dt_stat_ind   CHAR(2) no DEFAULT NOT NULL ,
-- 	bth_prcsd_flg     CHAR(1) no DEFAULT NOT NULL ,
-- 	vlt_actbly_ind    CHAR(1) DEFAULT "C" NOT NULL ,
-- 	chg_drwr_stat_ind CHAR(1) DEFAULT "R" NOT NULL ,
-- 	PRIMARY KEY ( prtn_nbr , sls_dt , str_nbr )
-- );	

-- Holds data for each sales date by store
CREATE TABLE IF NOT EXISTS vltslsdt (
	prtn_nbr          NUMERIC(3,0) NOT NULL,
	sls_dt            DATE NOT NULL,
	str_nbr           CHAR(4) NOT NULL,
	last_upd_ts       TIMESTAMPTZ NOT NULL,
	crt_ts            TIMESTAMPTZ NOT NULL,
	sls_dt_stat_ind   CHAR(2) NOT NULL,             -- Sales Date Status Indicator	10 - Open, 20 - Deposit Submitted, 30 - Closed (Depository Vault Count Completed)
	bth_prcsd_flg     CHAR(1) NOT NULL,             -- Batch Process Flag (Not Used)
	vlt_actbly_ind    CHAR(1) DEFAULT 'C' NOT NULL, -- Accountability Indicator	C - Cashier Accountability, R - Register Accountability
	chg_drwr_stat_ind CHAR(1) DEFAULT 'R' NOT NULL, -- Change Drawer Status	O - Sales Date Open - Change Drawer In Vault, V - In Vault, I - Issued, R - Returned to Vault	
	-- "O" is only used if the sales date is opened before the actual date. This happens when the store closes the sales date the same date late at night.
	
	CONSTRAINT "pk_vltdata_vltslsdt" PRIMARY KEY (prtn_nbr, sls_dt, str_nbr)
);

-- CREATE TABLE $data01.vltdata.vltxexpm
-- (
-- 	cntry_cd       CHAR(2) no DEFAULT NOT NULL ,
-- 	st_cd          CHAR(2) no DEFAULT NOT NULL ,
-- 	sls_tax_rt     NUMERIC(9,6) no DEFAULT NOT NULL ,
-- 	pos_tax_tbl_cd SMALLINT no DEFAULT NOT NULL ,
-- 	last_upd_ts    datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	crt_ts         datetime year TO fraction(6) no DEFAULT NOT NULL ,
-- 	tax_ex_typ_cd  SMALLINT no DEFAULT NOT NULL ,
-- 	PRIMARY KEY ( cntry_cd , st_cd , sls_tax_rt , pos_tax_tbl_cd )
-- );

CREATE TABLE IF NOT EXISTS vltxexpm (
	cntry_cd       CHAR(2) NOT NULL,
	st_cd          CHAR(2) NOT NULL,
	sls_tax_rt     NUMERIC(9,6) NOT NULL,
	pos_tax_tbl_cd SMALLINT NOT NULL,
	last_upd_ts    TIMESTAMPTZ NOT NULL,
	crt_ts         TIMESTAMPTZ NOT NULL,
	tax_ex_typ_cd  SMALLINT NOT NULL,
	
	CONSTRAINT "pk_vltdata_vltxexpm" PRIMARY KEY (cntry_cd, st_cd, sls_tax_rt, pos_tax_tbl_cd)
);

-- CREATE INDEX IF NOT EXISTS idx_rcstore_xyzr2
--   ON rcstore_xyzr ( prtn_nbr, rgstr_sls_post_dt, str_nbr, post_void_flg, sysusr_id, cshr_user_id );

-- CREATE INDEX IF NOT EXISTS idx_rctvoid1
--   ON rctvoid ( void_prtn_nbr, void_pos_sls_dt, void_str_nbr, void_rgstr_nbr, void_pos_trans_id, void_lob_cd );

-- CREATE INDEX IF NOT EXISTS idx_rfnhdr2
--   ON rfnhdr ( prtn_nbr, rgstr_sls_post_dt, str_nbr, post_void_flg, sysusr_id, cshr_usr_id );

-- CREATE INDEX IF NOT EXISTS idx_vltrpts0
--   ON vltrptst ( prtn_nbr, tot_rpt_compl_cnt, darc_bth_stat_ind, dpmtr_bth_stat_ind, dssmr_bth_stat_ind, dslsr_bth_stat_ind, ddstr_bth_stat_ind, darc_stat_ind, dpmtr_stat_ind, dssmr_stat_ind, dslsr_stat_ind, ddstr_stat_ind, crt_ts );

CREATE INDEX IF NOT EXISTS idx_till0
  ON till ( prtn_nbr, sls_dt, str_nbr, rgstr_nbr, crt_ts, last_upd_ts, till_stat_cd, bgn_till_amt, end_till_amt, net_ce_sls_amt, till_ovr_shrt_amt, ovrng_amt, vl_sls_adj_amt, rtn_till_ts );

CREATE INDEX IF NOT EXISTS idx_tilladj0
  ON tilladj ( prtn_nbr, str_nbr, sysusr_id );

CREATE INDEX IF NOT EXISTS idx_tilladj1
  ON tilladj ( prtn_nbr, sls_dt, str_nbr, rgstr_nbr, till_adj_typ_cd, seq_nbr );

CREATE INDEX IF NOT EXISTS idx_tillchk0
  ON tillchk ( prtn_nbr, sls_dt, str_nbr, rgstr_nbr, last_upd_ts, crt_ts, chk_amt, seal_nbr, depst_seq_nbr );

CREATE INDEX IF NOT EXISTS idx_tilldnx1
  ON tilldnmx ( str_nbr, last_upd_ts, pos_rgstr_typ_cd, denom_typ_cd, crt_ts, denom_typ_qty, denom_typ_amt, curnc_typ_cd );

CREATE INDEX IF NOT EXISTS idx_tillstg2
  ON tillstg ( prtn_nbr, str_nbr, till_loc_ind, till_ref_nbr, sls_dt, sysusr_id, till_cnt_flg, pos_rgstr_typ_cd, till_amt, curnc_typ_cd, rgstr_drwr_nbr );

CREATE INDEX IF NOT EXISTS idx_tillstg1
  ON tillstg ( prtn_nbr, last_upd_ts, crt_ts, till_loc_ind, till_cnt_flg, pos_rgstr_typ_cd, till_amt, curnc_typ_cd, rgstr_drwr_nbr, sls_dt, sysusr_id );

CREATE INDEX IF NOT EXISTS idx_tlevt0
  ON tlevt ( prtn_nbr, str_nbr, till_evnt_stat_ind, last_upd_ts, rgstr_drwr_nbr, pos_rgstr_typ_cd, till_loc_ind, sysusr_id, sls_ts );

CREATE INDEX IF NOT EXISTS idx_tlpmtmt0
  ON tlpmtmth ( prtn_nbr, sls_dt, str_nbr, rgstr_nbr, paymt_meth_cd, tndr_curnc_typ_cd, seq_nbr, last_upd_ts, crt_ts, paymt_amt, pmeth_amt_chg_flg, tndr_amt, pmeth_doc_id );

CREATE INDEX IF NOT EXISTS idx_vltcgdn1
  ON vltcgdnm ( prtn_nbr, last_upd_ts, crt_ts, curnc_typ_cd, denom_typ_qty, denom_typ_amt );

CREATE INDEX IF NOT EXISTS idx_vltcgor0
  ON vltcgord ( prtn_nbr, str_nbr, cgord_rqst_ts, vlt_cgord_stat_ind, cgord_rqst_amt, cgord_rcvd_ts, cgord_rcvd_amt, curnc_typ_cd, cgord_rpay_amt, cgord_rpay_ts, seal_nbr, cgord_rcnfm_nbr, cgord_rqstr_id, cgord_recv_id, cgord_rpay_id );

CREATE INDEX IF NOT EXISTS idx_vltcsau0
  ON vltcsaud ( prtn_nbr, str_nbr, aud_end_dt, last_upd_ts, crt_ts, vl_admin_sysusr_id );

CREATE INDEX IF NOT EXISTS idx_vltslsd0
  ON vltslsdt ( prtn_nbr, str_nbr, sls_dt_stat_ind, sls_dt, vlt_actbly_ind, chg_drwr_stat_ind );

CREATE INDEX IF NOT EXISTS idx_vltstpr1
  ON vltstprm ( vlt_parm_cd, last_upd_ts, crt_ts, eff_end_dt, parm_dt, parm_ts, parm_tm, parm_dec_val, parm_int_val, parm_char_val ); 
