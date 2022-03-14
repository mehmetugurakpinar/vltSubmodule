--tlevtxfr--
UPSERT INTO vault.tlevtxfr (prtn_nbr, sls_dt, str_nbr, rgstr_nbr, pos_trans_id, lob_cd, pos_inq_cd, fr_paymt_meth_cd, till_tndr_xfer_amt, curnc_typ_cd, to_paymt_meth_cd)
VALUES (1, now(), '100', 1.0, 1.0, 1.0, 1, 'aa', 1.0, 'US', 'aa');


-- ASTMPYDN --
UPSERT INTO vault.ASTMPYDN(PRTN_NBR, SLS_DT, STR_NBR, ASSOC_ID, DENOM_TYP_CD, LAST_UPD_TS, CRT_TS, DENOM_TYP_QTY, DENOM_TYP_AMT, CURNC_TYP_CD)
VALUES (111, '2020-11-16 11:08:53.608', '9999', 'associate01234567890', '100', '2020-11-16 11:08:53.608', '2020-11-08 10:39:18.521', '200', '1234567890', 'ABC');

-- ASTRMPAY
UPSERT INTO vault.ASTRMPAY(PRTN_NBR, SLS_DT, STR_NBR, ASSOC_ID, LAST_UPD_TS, CRT_TS, ASSOC_TERM_DOC_ID, TERM_AMT, CURNC_TYP_CD, ATERM_VLT_CNT_FLG)
VALUES (111, '2020-11-16 11:08:53.608', '9999', 'associate01234567890', '2020-11-16 11:08:53.608', '2020-11-16 11:08:53.608', 'associate01234567890', 8888, 'USD', 'T');

-- vltslsdt --
INSERT INTO vault.vltslsdt (prtn_nbr, sls_dt, str_nbr, last_upd_ts, crt_ts, sls_dt_stat_ind, bth_prcsd_flg, vlt_actbly_ind, chg_drwr_stat_ind) values
  (24, '2021-10-01', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (25, '2021-10-02', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (26, '2021-10-03', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (27, '2021-10-04', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (28, '2021-10-05', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (29, '2021-10-06', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (20, '2021-10-07', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (21, '2021-10-08', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (22, '2021-10-09', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (23, '2021-10-10', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (24, '2021-10-11', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (25, '2021-10-12', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (26, '2021-10-13', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (27, '2021-10-14', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (28, '2021-10-15', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (29, '2021-10-16', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (20, '2021-10-17', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (21, '2021-10-18', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (22, '2021-10-19', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (23, '2021-10-20', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (24, '2021-10-21', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (25, '2021-10-22', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (26, '2021-10-23', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (27, '2021-10-24', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (28, '2021-10-25', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (29, '2021-10-26', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (20, '2021-10-27', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (21, '2021-10-28', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (22, '2021-10-29', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (23, '2021-10-30', '3832', now(), now(), '10', 'N', 'R', 'O'),
  (24, '2021-10-31', '3832', now(), now(), '10', 'N', 'R', 'O');
insert into vault.vltslsdt (prtn_nbr, sls_dt, str_nbr, last_upd_ts, crt_ts, sls_dt_stat_ind, bth_prcsd_flg, vlt_actbly_ind, chg_drwr_stat_ind) values
  (54, '2021-10-01', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (55, '2021-10-02', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (56, '2021-10-03', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (57, '2021-10-04', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (58, '2021-10-05', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (59, '2021-10-06', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (50, '2021-10-07', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (51, '2021-10-08', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (52, '2021-10-09', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (53, '2021-10-10', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (54, '2021-10-11', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (55, '2021-10-12', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (56, '2021-10-13', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (57, '2021-10-14', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (58, '2021-10-15', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (59, '2021-10-16', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (50, '2021-10-17', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (51, '2021-10-18', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (52, '2021-10-19', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (53, '2021-10-20', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (54, '2021-10-21', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (55, '2021-10-22', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (56, '2021-10-23', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (57, '2021-10-24', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (58, '2021-10-25', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (59, '2021-10-26', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (50, '2021-10-27', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (51, '2021-10-28', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (52, '2021-10-29', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (53, '2021-10-30', '0035', now(), now(), '10', 'N', 'R', 'O'),
  (54, '2021-10-31', '0035', now(), now(), '10', 'N', 'R', 'O');

-- VLTPARMC --
INSERT INTO vault.VLTPARMC (VLT_PARM_CD,LAST_UPD_TS,CRT_TS,DATA_TYP_IND) VALUES
	 (10,'2009-11-19 13:12:28.048157','2009-11-19 13:12:28.048157','String   '),
	 (20,'2009-11-19 13:12:42.1026','2009-11-19 13:12:42.1026','Yes/No   '),
	 (100,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Double   '),
	 (105,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Yes/No   '),
	 (110,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Yes/No   '),
	 (115,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Yes/No   '),
	 (120,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Double   '),
	 (125,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Double   '),
	 (130,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Integer  '),
	 (135,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','CheckBox ');
INSERT INTO vault.VLTPARMC (VLT_PARM_CD,LAST_UPD_TS,CRT_TS,DATA_TYP_IND) VALUES
	 (140,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','CheckBox '),
	 (145,'2009-03-09 12:03:15.749497','2009-03-09 12:03:15.749497','Yes/No   '),
	 (150,'2011-10-07 13:39:06.347519','2011-10-07 13:39:06.347519','Yes/No   '),
	 (155,'2011-10-07 13:39:11.94507','2011-10-07 13:39:11.94507','Double   '),
	 (200,'2009-01-22 17:11:13.052852','2009-01-22 17:11:13.052852','String   '),
	 (250,'2011-08-26 10:12:26.68592','2011-08-26 10:12:26.68592','String   '),
	 (300,'2009-09-03 16:05:36.737136','2009-09-03 16:05:36.737136','Yes/No   '),
	 (310,'2009-09-03 16:05:59.590361','2009-09-03 16:05:59.590361','Integer  '),
	 (320,'2009-09-03 16:06:14.511196','2009-09-03 16:06:14.511196','Double   '),
	 (400,'2010-07-01 14:26:44.920238','2010-07-01 14:26:44.920238','Yes/No   ');
INSERT INTO vault.VLTPARMC (VLT_PARM_CD,LAST_UPD_TS,CRT_TS,DATA_TYP_IND) VALUES
	 (410,'2010-07-01 14:26:44.920238','2010-07-01 14:26:44.920238','Yes/No   '),
	 (415,'2011-05-16 09:23:33.448653','2011-05-16 09:23:33.448653','Yes/No   '),
	 (420,'2010-07-01 14:26:44.920238','2010-07-01 14:26:44.920238','Integer  '),
	 (430,'2010-07-01 14:26:44.920238','2010-07-01 14:26:44.920238','Integer  '),
	 (440,'2010-07-01 14:26:44.920238','2010-07-01 14:26:44.920238','Double   '),
	 (450,'2010-07-01 14:26:44.920238','2010-07-01 14:26:44.920238','Integer  '),
	 (460,'2010-07-01 14:26:44.920238','2010-07-01 14:26:44.920238','Denom    '),
	 (470,'2010-07-01 14:26:44.920238','2010-07-01 14:26:44.920238','Denom    '),
	 (480,'2019-01-03 02:16:46.011919','2019-01-03 02:16:46.011919','Integer  ');

-- NVLTPARM --
INSERT INTO vault.NVLTPARM (VLT_PARM_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_VLT_PARM_CD,S_VLT_PARM_DESC,VLT_PARM_DESC) VALUES
	 (10,'en_CA','2010-07-19 15:57:24.769921', '2010-07-19 15:57:24.769921','Timezone  ','Store Timezone      ','Store Timezone'),
	 (10,'en_US','2009-11-19 13:13:54.014211', '2009-11-19 13:13:54.014211','Timezone  ','Store Timezone      ','Store Timezone'),
	 (10,'fr_CA','2010-07-16 15:52:53.82864',  '2010-07-16 15:52:53.82864','FH du mag.','Fuseau horaire      ','Fuseau horaire du magasin                                                                                                                             '),
	 (20,'en_CA','2010-07-19 15:57:24.769921', '2010-07-19 15:57:24.769921','Obs DST   ','Observe DST         ','Observe DST'),
	 (20,'en_US','2009-11-19 13:14:32.841935', '2009-11-19 13:14:32.841935','Obs DST   ','Observe DST         ','Observe DST'),
	 (20,'fr_CA','2010-07-16 15:52:53.837306', '2010-07-16 15:52:53.837306','HA en vig.','HA en vigueur       ','Heure avancée  (HA) en vigueur                                                                                                                        '),
	 (100,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Vault Fund','Vault Fund Amount   ','Vault Fund Amount'),
	 (100,'en_US','2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Vault Fund','Vault Fund Amount   ','Vault Fund Amount'),
	 (100,'fr_CA','2010-07-16 15:52:53.849339','2010-07-16 15:52:53.849339','Fds coffre','Montant fonds coffre','Montant des fonds du coffre                                                                                                                           '),
	 (105,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Enable Emp','Enable Employee Term','Enable Employee Terminations');
INSERT INTO vault.NVLTPARM (VLT_PARM_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_VLT_PARM_CD,S_VLT_PARM_DESC,VLT_PARM_DESC) VALUES
	 (105,'en_US','2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Enable Emp','Enable Employee Term','Enable Employee Terminations'),
	 (105,'fr_CA','2010-07-16 15:52:53.861327','2010-07-16 15:52:53.861327','ValCE empl','Val cess empl employ','Valider les cessations d''emploi des employés                                                                                                          '),
	 (110,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Enable For','Enable Foreign Curre','Enable Foreign Currency'),
	 (110,'en_US','2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Enable For','Enable Foreign Curre','Enable Foreign Currency'),
	 (110,'fr_CA','2010-07-16 15:52:53.87335', '2010-07-16 15:52:53.87335','Val dev ét','Val. devise étrang. ','Valider la devise étrangère                                                                                                                           '),
	 (115,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Enable Vau','Enable Vault Fund Ma','Enable Vault Fund Maintenance'),
	 (115,'en_US','2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Enable Vau','Enable Vault Fund Ma','Enable Vault Fund Maintenance'),
	 (115,'fr_CA','2010-07-16 15:52:53.879113','2010-07-16 15:52:53.879113','Val màj FC','Val. màj fds coffre ','Valider la mise à jour des fonds du coffre                                                                                                            '),
	 (120,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Till Over/','Till Over/Short Thre','Till Over/Short Threshold'),
	 (120,'en_US','2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Till Over/','Till Over/Short Thre','Till Over/Short Threshold');
INSERT INTO vault.NVLTPARM (VLT_PARM_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_VLT_PARM_CD,S_VLT_PARM_DESC,VLT_PARM_DESC) VALUES
	 (120,'fr_CA','2010-07-16 15:52:53.885366','2010-07-16 15:52:53.885366','Seuil ED P','Seuil Exc/Déf plat  ','Seuil Excédent/Déficit du plateau de caisse                                                                                                           '),
	 (125,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Vault Over','Vault Over/Short Thr','Vault Over/Short Threshold'),
	 (125,'en_US','2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Vault Over','Vault Over/Short Thr','Vault Over/Short Threshold'),
	 (125,'fr_CA','2010-07-16 15:52:53.891035','2010-07-16 15:52:53.891035','Seuil ED C','Seuil Exc/Déf coffre','Seuil Excédent/Déficit du coffre                                                                                                                      '),
	 (130,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Fiscal Sys','Fiscal System Prompt','Fiscal System Prompt Days'),
	 (130,'en_US','2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Fiscal Sys','Fiscal System Prompt','Fiscal System Prompt Days'),
	 (130,'fr_CA','2010-07-16 15:52:53.897351','2010-07-16 15:52:53.897351','Message JE','Mess. jours exercice','Message indiquant les jours de l''exercice                                                                                                             '),
	 (135,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Days of ar','Days of armored car ','Days of armored car Deposit'),
	 (135,'en_US','2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Pickup    ','Armor Car Pickup    ','Armor Car Pickup'),
	 (135,'fr_CA','2010-07-16 15:52:53.903053','2010-07-16 15:52:53.903053','Ram véh bl','Ram. véhicule blindé','Ramassage fait par un véhicule blindé                                                                                                                 ');
INSERT INTO vault.NVLTPARM (VLT_PARM_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_VLT_PARM_CD,S_VLT_PARM_DESC,VLT_PARM_DESC) VALUES
	 (140,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Days of ar','Days of armored car ','Days of armored car Pickup'),
	 (140,'en_US','2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Chg Dlvry ','Change Deliveries   ','Armor Car Change Deliveries'),
	 (140,'fr_CA','2010-07-16 15:52:53.909354','2010-07-16 15:52:53.909354','Livr monn ','Livr monn véh blindé','Livraisons de monnaie faites par un véhicule blindé                                                                                                   '),
	 (145,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Approve VC','Approve Vault Count ','Manger Approval Vault Count'),
	 (145,'en_US','2009-03-09 12:02:54.445739','2009-03-09 12:02:54.445739','Approve VC','Approve Vault Count ','Manger Approval Vault Count'),
	 (145,'fr_CA','2010-07-16 15:52:53.915033','2010-07-16 15:52:53.915033','Appr cpt C','Appr cpt coffre dir ','Approbation du comptage du coffre par le directeur                                                                                                    '),
	 (150,'en_CA','2011-10-07 13:39:26.725908','2011-10-07 13:39:26.725908','Enable K2 ','Enable K2           ','Enable K2 Notifications'),
	 (150,'en_US','2011-10-07 13:39:45.958613','2011-10-07 13:39:45.958613','Enable K2 ','Enable K2           ','Enable K2 Notifications'),
	 (150,'fr_CA','2011-10-07 13:39:38.562487','2011-10-07 13:39:38.562487','Val. av.K2','Valider les avis K2 ','Valider les avis K2'),
	 (155,'en_CA','2011-10-07 13:39:57.035985','2011-10-07 13:39:57.035985','Safe Bal T','Safe Bal Threshold  ','Safe Balance Threshold');
INSERT INTO vault.NVLTPARM (VLT_PARM_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_VLT_PARM_CD,S_VLT_PARM_DESC,VLT_PARM_DESC) VALUES
	 (155,'en_US','2011-10-07 13:40:12.615017','2011-10-07 13:40:12.615017','Safe Bal T','Safe Bal Threshold  ','Safe Balance Threshold'),
	 (155,'fr_CA','2011-10-07 13:40:03.058409','2011-10-07 13:40:03.058409','Seuil s.c.','Seuil - solde coffre','Seuil du solde du coffre-fort'),
	 (200,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Chg Issue ','Change Issue To     ','Change Drawer Issue To'),
	 (200,'en_US','2009-01-22 17:12:20.267543','2009-01-22 17:12:20.267543','CD Issue  ','Change Drawer Issue ','Change Drawer Issue To'),
	 (200,'fr_CA','2010-07-16 15:52:53.921356','2010-07-16 15:52:53.921356','Attr. TM à','Attrib. tir. monn. à','Attribution du tiroir de monnaie à                                                                                                                    '),
	 (250,'en_CA','2011-08-26 10:12:35.169039','2011-08-26 10:12:35.169039','Refund Reg','Refund Registers    ','Refund Registers'),
	 (250,'en_US','2011-08-26 10:12:41.804535','2011-08-26 10:12:41.804535','Refund Reg','Refund Registers    ','Refund Registers'),
	 (250,'fr_CA','2011-08-26 10:12:56.581658','2011-08-26 10:12:56.581658','Cais. rbt ','Caisses remboursem. ','Caisses Remboursement'),
	 (300,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Aud Active','Till Audit Active   ','Till Audit Active'),
	 (300,'en_US','2009-09-03 16:08:41.632431','2009-09-03 16:08:41.632431','Aud Active','Till Audit Active   ','Till Audit Active');
INSERT INTO vault.NVLTPARM (VLT_PARM_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_VLT_PARM_CD,S_VLT_PARM_DESC,VLT_PARM_DESC) VALUES
	 (300,'fr_CA','2010-07-16 15:52:53.927111','2010-07-16 15:52:53.927111','Vér P act ','Vérif. plat. activé ','Mode de vérification du plateau de caisse activé                                                                                                      '),
	 (310,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Aud Freq  ','Audit Frequency     ','Audit Frequency'),
	 (310,'en_US','2009-09-03 16:11:28.967425','2009-09-03 16:11:28.967425','Aud Freq  ','Audit Frequency     ','Audit Frequency'),
	 (310,'fr_CA','2010-07-16 15:52:53.933349','2010-07-16 15:52:53.933349','Fréq vérif','Fréq. vérifications ','Fréquence des vérifications                                                                                                                           '),
	 (320,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Aud Limit ','Cash Audit Threshold','Cash Audit Threshold'),
	 (320,'en_US','2009-09-03 16:12:29.066166','2009-09-03 16:12:29.066166','Aud Limit ','Cash Audit Threshold','Cash Audit Threshold'),
	 (320,'fr_CA','2010-07-16 15:52:53.939026','2010-07-16 15:52:53.939026','Seuil vér ','Seuil vérif. espèces','Seuil des vérifications des espèces                                                                                                                   '),
	 (400,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Reg Acct  ','Register Acctblty   ','Register Accountability'),
	 (400,'en_US','2010-07-01 14:26:58.4959','2010-07-01 14:26:58.4959','Reg Acct  ','Register Acctblty   ','Register Accountability'),
	 (400,'fr_CA','2010-07-16 15:52:53.945386','2010-07-16 15:52:53.945386','Oblg caiss','Oblig. liée caisses ','Obligation de rendre compte liée aux caisses                                                                                                          ');
INSERT INTO vault.NVLTPARM (VLT_PARM_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_VLT_PARM_CD,S_VLT_PARM_DESC,VLT_PARM_DESC) VALUES
	 (410,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','SCO Replen','SCO Replenishment   ','SCO Replenishment'),
	 (410,'en_US','2010-07-01 14:26:58.4959','2010-07-01 14:26:58.4959','SCO Replen','SCO Replenishment   ','SCO Replenishment'),
	 (410,'fr_CA','2010-07-16 15:52:53.951077','2010-07-16 15:52:53.951077','Réappr CLS','Réapprovisionn. CLS ','Réapprovisionnement des CLS                                                                                                                           '),
	 (415,'en_CA','2012-07-03 16:36:55.247062','2012-07-03 16:36:55.247062','ScoCnRcyc ','SCO Coin Recycle    ','SCO Coin Recycling'),
	 (415,'en_US','2011-05-16 09:23:35.277325','2011-05-16 09:23:35.277325','ScoCnRcyc ','SCO Coin Recycle    ','SCO Coin Recycling'),
	 (415,'fr_CA','2011-05-16 09:23:35.345802','2011-05-16 09:23:35.345802','ScoCnRcyc ','Recycl. monnaie-CLS ','Recyclage de monnaie des CLS'),
	 (420,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Coin Recon','Coin Reconcilation  ','Frequency of Coin Reconciliations'),
	 (420,'en_US','2010-07-01 14:26:58.4959','2010-07-01 14:26:58.4959','Coin Recon','Coin Reconcilation  ','Frequency of Coin Reconciliations'),
	 (420,'fr_CA','2010-07-16 15:52:53.957376','2010-07-16 15:52:53.957376','Frq rpprPC','Fréq. rappr. pièces ','Fréquence des rapprochements des pièces de monnaie                                                                                                    '),
	 (430,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','SCO Audit ','SCO Audit Frequency ','SCO Audit Frequency');
INSERT INTO vault.NVLTPARM (VLT_PARM_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_VLT_PARM_CD,S_VLT_PARM_DESC,VLT_PARM_DESC) VALUES
	 (430,'en_US','2010-07-01 14:26:58.4959','2010-07-01 14:26:58.4959','SCO Audit ','SCO Audit Frequency ','SCO Audit Frequency'),
	 (430,'fr_CA','2010-07-16 15:52:53.963074','2010-07-16 15:52:53.963074','Frq vérCLS','Fréquence vérif. CLS','Fréquence des vérifications des CLS                                                                                                                   '),
	 (440,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Coin Thres','Coin O/S Threshold  ','Coin Over/Short Threshold'),
	 (440,'en_US','2010-07-01 14:26:58.4959','2010-07-01 14:26:58.4959','Coin Thres','Coin O/S Threshold  ','Coin Over/Short Threshold'),
	 (440,'fr_CA','2010-07-16 15:52:53.969383','2010-07-16 15:52:53.969383','Seuil EDPc','Seuil Exc/Déf pièces','Seuil Excédent/Déficit des pièces de monnaie                                                                                                          '),
	 (450,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','SCO Usage ','Avg Days SCO Usage  ','Average Days of SCO Usage'),
	 (450,'en_US','2010-07-01 14:26:58.4959','2010-07-01 14:26:58.4959','SCO Usage ','Avg Days SCO Usage  ','Average Days of SCO Usage'),
	 (450,'fr_CA','2010-07-16 15:52:53.975392','2010-07-16 15:52:53.975392','Util CLS  ','Util appr CLS jrs   ','Durée d''utilisation approximative des CLS en jours                                                                                                    '),
	 (460,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Denom Pack','Denom Pack Size     ','Denomination Pack Size'),
	 (460,'en_US','2010-07-01 14:26:58.4959','2010-07-01 14:26:58.4959','Denom Pack','Denom Pack Size     ','Denomination Pack Size');
INSERT INTO vault.NVLTPARM (VLT_PARM_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_VLT_PARM_CD,S_VLT_PARM_DESC,VLT_PARM_DESC) VALUES
	 (460,'fr_CA','2010-07-16 15:52:53.987123','2010-07-16 15:52:53.987123','Paq. coup.','Qté paquet coupures ','Quantité du paquet de coupures                                                                                                                        '),
	 (470,'en_CA','2010-07-19 15:57:24.769921','2010-07-19 15:57:24.769921','Buffer Amt','SCO Buffer Amount   ','SCO Buffer Amount'),
	 (470,'en_US','2010-07-01 14:26:58.4959','2010-07-01 14:26:58.4959','Buffer Amt','SCO Buffer Amount   ','SCO Buffer Amount'),
	 (470,'fr_CA','2010-07-16 15:52:53.99911','2010-07-16 15:52:53.99911','Mont couss','Mont. coussin CLS   ','Montant du «coussin» des CLS                                                                                                                          '),
	 (480,'en_CA','2019-01-03 02:16:41.997003','2019-01-03 02:16:41.997003','RecyThresh','Recycler Threshold  ','Recycler Threshold'),
	 (480,'en_US','2019-01-03 02:16:42.181557','2019-01-03 02:16:42.181557','RecyThresh','Recycler Threshold  ','Recycler Threshold'),
	 (480,'fr_CA','2019-01-03 02:16:42.271477','2019-01-03 02:16:42.271477','RecySeuil ','Seuil du recycleur  ','Seuil du recycleur');

-- NOVSHRSN --
INSERT INTO vault.NOVSHRSN (OVR_SHRT_RSN_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_RSN_CD,S_RSN_DESC,RSN_DESC) VALUES
	 (1,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','RR        ','Refund/Rering       ','Refund/Rering'),
	 (1,'en_US','2008-12-16 15:34:13.842937','2008-12-16 15:34:13.842937','RR        ','Refund/Rering       ','Refund/Rering'),
	 (1,'fr_CA','2011-02-03 13:51:50.217909','2011-02-03 13:51:50.217909','RR        ','Rembours/réenregistr','Remboursement/réenregistrement'),
	 (2,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','PVND      ','Post Void Not Done  ','Post Void Not Done'),
	 (2,'en_US','2008-12-16 15:34:21.794526','2008-12-16 15:34:21.794526','PVND      ','Post Void Not Done  ','Post Void Not Done'),
	 (2,'fr_CA','2011-02-03 13:51:50.325329','2011-02-03 13:51:50.325329','PVND      ','Annl apr ach non eff','Annulation après achat non effectuée'),
	 (3,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','PVC       ','Post Void Correction','Post Void Correction'),
	 (3,'en_US','2008-12-16 15:34:21.91849','2008-12-16 15:34:21.91849','PVC       ','Post Void Correction','Post Void Correction'),
	 (3,'fr_CA','2011-02-03 13:51:50.437144','2011-02-03 13:51:50.437144','PVC       ','CorrAnnul apr achat ','Correction d''annulation après achat '),
	 (4,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','PACE      ','Paymt on Acct Ck Err','Payment on Accoutn Check Error');
INSERT INTO vault.NOVSHRSN (OVR_SHRT_RSN_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_RSN_CD,S_RSN_DESC,RSN_DESC) VALUES
	 (4,'en_US','2008-12-16 15:34:22.259948','2008-12-16 15:34:22.259948','PACE      ','Paymt on Acct Ck Err','Payment on Account Check Error'),
	 (4,'fr_CA','2011-02-03 13:51:50.604754','2011-02-03 13:51:50.604754','PACE      ','Chèque acompte err. ','Chèque d''acompte erroné'),
	 (5,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','LIC       ','Lost/Incomplete Chk ','Lost or Incomplete Check'),
	 (5,'en_US','2008-12-16 15:34:22.450326','2008-12-16 15:34:22.450326','LIC       ','Lost/Incomplete Chk ','Lost or Incomplete Check'),
	 (5,'fr_CA','2011-02-03 13:51:51.195961','2011-02-03 13:51:51.195961','LIC       ','Chèq perd/mal rempli','Chèque perdu ou mal rempli'),
	 (6,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','LICR      ','Lost/Inc Chk Recov  ','Lost or Incomplete Check Recovery'),
	 (6,'en_US','2008-12-16 15:34:22.541217','2008-12-16 15:34:22.541217','LICR      ','Lost/Inc Chk Recov  ','Lost or Incomplete Check Recovery'),
	 (6,'fr_CA','2011-02-03 13:51:51.31137','2011-02-03 13:51:51.31137','LICR      ','Récup. chèq P/MR    ','Récupération de chèques perdus ou mal remplis'),
	 (7,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','MC        ','Missing Cash        ','Missing Cash'),
	 (7,'en_US','2008-12-16 15:34:22.670501','2008-12-16 15:34:22.670501','MC        ','Missing Cash        ','Missing Cash');
INSERT INTO vault.NOVSHRSN (OVR_SHRT_RSN_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_RSN_CD,S_RSN_DESC,RSN_DESC) VALUES
	 (7,'fr_CA','2011-02-03 13:51:51.690249','2011-02-03 13:51:51.690249','MC        ','Espèces manquantes  ','Espèces manquantes'),
	 (8,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','MCR       ','Missing Cash Recov  ','Missing Cash Recovery'),
	 (8,'en_US','2008-12-16 15:34:22.78028','2008-12-16 15:34:22.78028','MCR       ','Missing Cash Recov  ','Missing Cash Recovery'),
	 (8,'fr_CA','2011-02-03 13:51:51.910864','2011-02-03 13:51:51.910864','MCR       ','Récup. espèces manq.','Récupération d''espèces manquantes'),
	 (9,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','MT        ','Media Transfer      ','Media Transfer (Cash/Cr Card)'),
	 (9,'en_US','2008-12-16 15:34:22.939973','2008-12-16 15:34:22.939973','MT        ','Media Transfer      ','Media Transfer (Cash/Cr Card)'),
	 (9,'fr_CA','2011-02-03 13:51:52.019534','2011-02-03 13:51:52.019534','MT        ','Tr. modes paiement  ','Transfert de modes de paiement'),
	 (10,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','PDS       ','Power Down Sales    ','Power Down Sales'),
	 (10,'en_US','2008-12-16 15:34:23.106783','2008-12-16 15:34:23.106783','PDS       ','Power Down Sales    ','Power Down Sales'),
	 (10,'fr_CA','2011-02-03 13:51:52.325066','2011-02-03 13:51:52.325066','PDS       ','Vtes Avec panne d''él','Ventes effectuées pendant une panne d''électricité');
INSERT INTO vault.NOVSHRSN (OVR_SHRT_RSN_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_RSN_CD,S_RSN_DESC,RSN_DESC) VALUES
	 (11,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','UKN       ','Unknown             ','Unknown'),
	 (11,'en_US','2008-12-16 15:34:23.247029','2008-12-16 15:34:23.247029','UKN       ','Unknown             ','Unknown'),
	 (11,'fr_CA','2011-02-03 13:51:52.555527','2011-02-03 13:51:52.555527','UKN       ','Inconnu             ','Inconnu'),
	 (12,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','UKNOVR    ','Unknown > $499      ','Unknown > $499 Contact Rev Accounting'),
	 (12,'en_US','2008-12-16 15:34:23.367773','2008-12-16 15:34:23.367773','UKNOVR    ','Unknown > $499      ','Unknown > $499 Contact Rev Accounting'),
	 (12,'fr_CA','2011-02-03 13:51:52.869497','2011-02-03 13:51:52.869497','UKNOVR    ','Inconnu > 499 $USD  ','Excédent inconnu > 499 $USD - Communiquer avec le service de comptabilité des revenus'),
	 (21,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','WF        ','Warrant Fees        ','Warrant Fees'),
	 (21,'en_US','2008-12-16 15:34:23.487605','2008-12-16 15:34:23.487605','WF        ','Warrant Fees        ','Warrant Fees'),
	 (21,'fr_CA','2011-02-03 13:51:52.970229','2011-02-03 13:51:52.970229','WF        ','Frais de garantie   ','Frais de garantie'),
	 (22,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','MR        ','Manager Request     ','Manager Request');
INSERT INTO vault.NOVSHRSN (OVR_SHRT_RSN_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_RSN_CD,S_RSN_DESC,RSN_DESC) VALUES
	 (22,'en_US','2008-12-16 15:34:23.610441','2008-12-16 15:34:23.610441','MR        ','Manager Request     ','Manager Request'),
	 (22,'fr_CA','2011-02-03 13:51:53.061354','2011-02-03 13:51:53.061354','MR        ','Demande du directeur','Demande du directeur'),
	 (23,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','MT        ','Missing Till        ','Missing Till'),
	 (23,'en_US','2008-12-16 15:34:23.720559','2008-12-16 15:34:23.720559','MT        ','Missing Till        ','Missing Till'),
	 (23,'fr_CA','2011-02-03 13:51:53.186576','2011-02-03 13:51:53.186576','MT        ','Plateau manquant    ','Plateau de caisse manquant'),
	 (24,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','CORS      ','Chg Ord Recv Short  ','Change Order Received Short'),
	 (24,'en_US','2008-12-16 15:34:23.802133','2008-12-16 15:34:23.802133','CORS      ','Chg Ord Recv Short  ','Change Order Received Short'),
	 (24,'fr_CA','2011-02-03 13:51:53.343193','2011-02-03 13:51:53.343193','CORS      ','Déf/exc comm reçue  ','Déficit/excédent dû à la commande de monnaie reçue'),
	 (25,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','MISC      ','Miscellaneous       ','Miscellaneous'),
	 (25,'en_US','2008-12-16 15:34:23.878929','2008-12-16 15:34:23.878929','MISC      ','Miscellaneous       ','Miscellaneous');
INSERT INTO vault.NOVSHRSN (OVR_SHRT_RSN_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_RSN_CD,S_RSN_DESC,RSN_DESC) VALUES
	 (25,'fr_CA','2011-02-03 13:51:53.501863','2011-02-03 13:51:53.501863','MISC      ','Divers              ','Divers'),
	 (26,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','FLBC      ','Funds Left at SCO   ','Funds Left at SCO by Customer'),
	 (26,'en_US','2008-12-16 15:34:24.045677','2008-12-16 15:34:24.045677','FLBC      ','Funds Left at SCO   ','Funds Left at SCO by Customer'),
	 (26,'fr_CA','2011-02-03 13:51:53.609159','2011-02-03 13:51:53.609159','FLBC      ','Fds laissés aux CLS ','Fonds laissés aux CLS par les clients'),
	 (27,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','EDF       ','Emerg Disaster Fund ','Emergency Disaster Funds'),
	 (27,'en_US','2008-12-16 15:34:24.912315','2008-12-16 15:34:24.912315','EDF       ','Emerg Disaster Fund ','Emergency Disaster Funds'),
	 (27,'fr_CA','2011-02-03 13:51:53.804666','2011-02-03 13:51:53.804666','EDF       ','Fonds urg (catastr) ','Fonds d''urgence en cas de catastrophe'),
	 (28,'fr_CA','2011-02-03 13:51:54.24927','2011-02-03 13:51:54.24927','Divers    ','Divers              ','Divers'),
	 (29,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','Test      ','Test                ','Test'),
	 (29,'fr_CA','2011-02-03 13:51:54.314975','2011-02-03 13:51:54.314975','Externe   ','Vol externe         ','Vol externe');
INSERT INTO vault.NOVSHRSN (OVR_SHRT_RSN_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_RSN_CD,S_RSN_DESC,RSN_DESC) VALUES
	 (30,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','b         ','b                   ','b'),
	 (30,'fr_CA','2011-02-03 13:51:55.330534','2011-02-03 13:51:55.330534','Externe   ','Vol externe         ','Vol externe'),
	 (31,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','a         ','a                   ','a'),
	 (31,'en_US','2009-02-23 08:45:14.694238','2009-02-23 08:45:14.694238','post void ','post void           ','post void'),
	 (32,'en_CA','2010-07-19 15:42:06.969714','2010-07-19 15:42:06.969714','employés  ','employés            ','employés'),
	 (32,'en_US','2010-09-08 15:20:05.195306','2010-09-08 15:20:05.195306','Media Tra ','Media Transfer      ','Media Transfer');
	 
--TILL -- dump from tandem nonstop
INSERT INTO vault.TILL (PRTN_NBR,SLS_DT,STR_NBR,SYSUSR_ID,LAST_UPD_TS,CRT_TS,TILL_STAT_CD,BGN_TILL_AMT,END_TILL_AMT,NET_CE_SLS_AMT,TILL_OVR_SHRT_AMT,OVRNG_AMT,VL_SLS_ADJ_AMT,CURNC_TYP_CD,RTN_TILL_TS,RGSTR_NBR,TILL_BAL_SYSUSR_ID) VALUES
	 (50,'2019-10-23','0035','REGISTER30              ','2020-01-23 10:35:59.826653','2020-01-23 10:35:59.826653',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,30,NULL),
	 (50,'2020-03-01','0035','REGISTER1               ','2020-03-01 13:29:15.953039','2020-03-01 10:18:58.002224',20,200.0000,0.0000,0.0000,200.0000,0.0000,0.0000,'USD','2020-03-01 10:19:00.000000',1,'1234567890'),
	 (51,'2019-10-24','0035','REGISTER19              ','2020-01-23 10:36:00.180834','2020-01-23 10:36:00.180834',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,19,NULL),
	 (51,'2020-02-11','0035','REGISTER18              ','2020-02-18 13:57:08.960534','2020-02-18 13:57:08.960534',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,18,NULL),
	 (51,'2020-03-02','0035','REGISTER2               ','2020-03-02 14:16:31.21721','2020-03-02 14:15:56.263958',20,100.0000,100.0000,0.0000,0.0000,0.0000,0.0000,'USD','2020-03-02 14:16:00.000000',2,'1234567890'),
	 (51,'2021-04-26','0035','REGISTER24              ','2021-10-04 11:37:27.693126','2021-10-04 11:37:27.693126',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,24,NULL),
	 (52,'2019-10-15','0035','REGISTER19              ','2020-01-23 10:36:09.410837','2020-01-23 10:36:09.410837',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,19,NULL),
	 (52,'2020-02-12','0035','REGISTER18              ','2020-02-18 13:59:56.515922','2020-02-18 13:59:56.515922',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,18,NULL),
	 (53,'2019-05-29','0035','REGISTER76              ','2020-03-02 14:19:14.983689','2020-03-02 14:19:14.983689',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,76,NULL),
	 (53,'2019-10-16','0035','REGISTER19              ','2021-10-04 11:37:29.549345','2021-10-04 11:37:29.549345',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,19,NULL);
INSERT INTO vault.TILL (PRTN_NBR,SLS_DT,STR_NBR,SYSUSR_ID,LAST_UPD_TS,CRT_TS,TILL_STAT_CD,BGN_TILL_AMT,END_TILL_AMT,NET_CE_SLS_AMT,TILL_OVR_SHRT_AMT,OVRNG_AMT,VL_SLS_ADJ_AMT,CURNC_TYP_CD,RTN_TILL_TS,RGSTR_NBR,TILL_BAL_SYSUSR_ID) VALUES
	 (53,'2019-11-05','0035','REGISTER19              ','2021-10-04 11:37:30.180009','2021-10-04 11:37:30.180009',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,19,NULL),
	 (53,'2020-01-14','0035','REGISTER30              ','2021-10-04 11:37:31.065241','2021-10-04 11:37:31.065241',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,30,NULL),
	 (53,'2020-02-13','0035','REGISTER18              ','2021-10-04 11:37:31.641647','2021-10-04 11:37:31.641647',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,18,NULL),
	 (53,'2021-03-09','0035','REGISTER1               ','2021-10-04 11:37:32.817646','2021-10-04 11:37:32.817646',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,1,NULL),
	 (54,'2019-10-17','0035','REGISTER19              ','2021-10-04 11:37:36.094789','2021-10-04 11:37:36.094789',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,19,NULL),
	 (54,'2019-10-17','0035','REGISTER22              ','2021-10-04 11:37:36.673221','2021-10-04 11:37:36.673221',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,22,NULL),
	 (54,'2019-12-16','0035','REGISTER19              ','2021-10-04 11:37:37.542214','2021-10-04 11:37:37.542214',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,19,NULL),
	 (54,'2020-02-04','0035','REGISTER1               ','2021-10-04 11:37:38.123492','2021-10-04 11:37:38.123492',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,1,NULL),
	 (54,'2020-02-14','0035','REGISTER30              ','2021-10-04 11:37:39.05771','2021-10-04 11:37:39.05771',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,30,NULL),
	 (54,'2021-03-10','0035','REGISTER15              ','2021-10-04 11:37:40.234594','2021-10-04 11:37:40.234594',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,15,NULL);
INSERT INTO vault.TILL (PRTN_NBR,SLS_DT,STR_NBR,SYSUSR_ID,LAST_UPD_TS,CRT_TS,TILL_STAT_CD,BGN_TILL_AMT,END_TILL_AMT,NET_CE_SLS_AMT,TILL_OVR_SHRT_AMT,OVRNG_AMT,VL_SLS_ADJ_AMT,CURNC_TYP_CD,RTN_TILL_TS,RGSTR_NBR,TILL_BAL_SYSUSR_ID) VALUES
	 (55,'2019-10-18','0035','REGISTER20              ','2021-10-04 11:37:40.993679','2021-10-04 11:37:40.993679',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,20,NULL),
	 (55,'2019-11-27','0035','REGISTER30              ','2021-10-04 11:37:41.557273','2021-10-04 11:37:41.557273',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,30,NULL),
	 (55,'2020-02-25','0035','REGISTER30              ','2021-10-04 11:48:46.462737','2021-10-04 11:48:46.462737',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,30,NULL),
	 (55,'2021-02-09','0035','REGISTER11              ','2021-10-04 11:49:07.268425','2021-10-04 11:49:07.268425',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,11,NULL),
	 (56,'2019-10-09','0035','REGISTER19              ','2021-10-04 11:49:15.162085','2021-10-04 11:49:15.162085',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,19,NULL),
	 (56,'2020-01-27','0035','REGISTER18              ','2021-10-04 11:49:24.646678','2021-10-04 11:49:24.646678',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,18,NULL),
	 (56,'2021-01-21','0035','REGISTER84              ','2021-10-04 11:49:32.984617','2021-10-04 11:49:32.984617',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,84,NULL),
	 (56,'2021-03-02','0035','REGISTER38              ','2021-10-04 11:49:36.789225','2021-10-04 11:49:36.789225',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,38,NULL),
	 (57,'2018-12-14','0035','REGISTER76              ','2020-02-26 14:13:47.657092','2019-03-27 16:43:24.02865',20,0.0000,550.0000,0.0000,-550.0000,0.0000,0.0000,'USD','2020-02-26 14:13:00.000000',76,'1234567890'),
	 (57,'2019-01-03','0035','REGISTER10              ','2020-03-02 14:11:38.050172','2019-01-10 15:41:25.850269',20,0.0000,10.7000,10.7000,0.0000,0.0000,0.0000,'USD','2020-03-02 14:11:00.000000',10,'1234567890');
INSERT INTO vault.TILL (PRTN_NBR,SLS_DT,STR_NBR,SYSUSR_ID,LAST_UPD_TS,CRT_TS,TILL_STAT_CD,BGN_TILL_AMT,END_TILL_AMT,NET_CE_SLS_AMT,TILL_OVR_SHRT_AMT,OVRNG_AMT,VL_SLS_ADJ_AMT,CURNC_TYP_CD,RTN_TILL_TS,RGSTR_NBR,TILL_BAL_SYSUSR_ID) VALUES
	 (57,'2019-10-30','0035','REGISTER19              ','2021-10-04 11:49:45.407275','2021-10-04 11:49:45.407275',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,19,NULL),
	 (57,'2020-02-07','0035','REGISTER13              ','2021-10-04 11:49:46.28874','2021-10-04 11:49:46.28874',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,13,NULL),
	 (57,'2020-02-27','0035','REGISTER30              ','2021-10-04 11:49:47.828892','2021-10-04 11:49:47.828892',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,30,NULL),
	 (57,'2021-04-12','0035','REGISTER11              ','2021-10-04 11:58:36.490742','2021-10-04 11:58:36.490742',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,11,NULL),
	 (57,'2021-04-22','0035','REGISTER21              ','2021-10-04 11:49:49.123293','2021-10-04 11:49:49.123293',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,21,NULL),
	 (57,'2021-04-22','0035','REGISTER24              ','2021-10-04 11:58:35.825643','2021-10-04 11:58:35.825643',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,24,NULL),
	 (58,'2018-12-15','0035','REGISTER13              ','2020-02-29 08:40:59.588868','2020-02-28 07:35:26.970396',20,186.1300,186.1300,0.0000,0.0000,0.0000,0.0000,'USD','2020-02-29 08:40:00.000000',13,'1234567890'),
	 (58,'2019-10-21','0035','REGISTER19              ','2021-10-04 11:58:37.172173','2021-10-04 11:58:37.172173',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,19,NULL),
	 (58,'2021-07-02','0035','REGISTER41              ','2021-10-04 11:58:54.029844','2021-10-04 11:58:54.029844',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,41,NULL),
	 (59,'2018-12-16','0035','REGISTER13              ','2020-03-02 14:21:45.548565','2020-03-02 14:21:45.548565',10,186.1300,NULL,NULL,NULL,NULL,NULL,'USD',NULL,13,NULL);
INSERT INTO vault.TILL (PRTN_NBR,SLS_DT,STR_NBR,SYSUSR_ID,LAST_UPD_TS,CRT_TS,TILL_STAT_CD,BGN_TILL_AMT,END_TILL_AMT,NET_CE_SLS_AMT,TILL_OVR_SHRT_AMT,OVRNG_AMT,VL_SLS_ADJ_AMT,CURNC_TYP_CD,RTN_TILL_TS,RGSTR_NBR,TILL_BAL_SYSUSR_ID) VALUES
	 (59,'2019-10-22','0035','REGISTER20              ','2021-10-04 11:58:54.540486','2021-10-04 11:58:54.540486',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,20,NULL),
	 (59,'2019-10-22','0035','REGISTER30              ','2021-10-04 11:58:55.04732','2021-10-04 11:58:55.04732',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,30,NULL),
	 (59,'2019-10-22','0035','REGISTER40              ','2021-10-04 11:58:55.617249','2021-10-04 11:58:55.617249',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,40,NULL),
	 (59,'2019-11-01','0035','REGISTER19              ','2021-10-04 11:58:56.216664','2021-10-04 11:58:56.216664',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,19,NULL),
	 (59,'2019-12-31','0035','REGISTER13              ','2021-10-04 11:58:58.262817','2021-10-04 11:58:58.262817',10,0.0000,NULL,NULL,NULL,NULL,NULL,'USD',NULL,13,NULL);


--POSRGTPC--
INSERT INTO vault.POSRGTPC (POS_RGSTR_TYP_CD,LAST_UPD_TS,CRT_TS) VALUES
    (100,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408'),
    (101,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408'),
    (102,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408'),
    (103,'2008-12-18 11:17:20.231293','2008-12-18 11:17:20.231293'),
    (104,'2010-04-09 09:40:01.182007','2010-04-09 09:40:01.182007'),
    (105,'2010-04-09 09:40:08.420754','2010-04-09 09:40:08.420754'),
    (106,'2018-06-06 16:18:17.49333','2018-06-06 16:18:17.49333');


--NPOSRGTP--
INSERT INTO vault.NPOSRGTP (POS_RGSTR_TYP_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_POS_RGSTR_TYP_CD,S_RGSTR_TYP_DESC,POS_RGSTR_TYP_DESC) VALUES
    (100,'en_CA','2010-07-19 15:46:19.707054','2010-07-19 15:46:19.707054','SCO       ','SCO                 ','SCO'),
    (100,'en_US','2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','SCO       ','SCO                 ','SCO'),
    (100,'fr_CA','2011-02-03 13:56:10.868154','2011-02-03 13:56:10.868154','CLS       ','CLS                 ','CLS'),
    (101,'en_CA','2010-07-19 15:46:19.707054','2010-07-19 15:46:19.707054','Refund    ','Refund              ','Refund'),
    (101,'en_US','2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Refund    ','Refund              ','Refund'),
    (101,'fr_CA','2011-02-03 13:56:10.988379','2011-02-03 13:56:10.988379','Rembours. ','Remboursement       ','Remboursement'),
    (102,'en_CA','2010-07-19 15:46:19.707054','2010-07-19 15:46:19.707054','Sales     ','Sales               ','Sales'),
    (102,'en_US','2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408','Sales     ','Sales               ','Sales'),
    (102,'fr_CA','2011-02-03 13:56:11.191651','2011-02-03 13:56:11.191651','Ventes    ','Ventes              ','Ventes'),
    (103,'en_CA','2010-07-19 15:46:19.707054','2010-07-19 15:46:19.707054','Misc Till1','Misc Till 1         ','Miscellaneous Till 1');
INSERT INTO vault.NPOSRGTP (POS_RGSTR_TYP_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_POS_RGSTR_TYP_CD,S_RGSTR_TYP_DESC,POS_RGSTR_TYP_DESC) VALUES
    (103,'en_US','2008-12-18 11:19:35.767842','2008-12-18 11:19:35.767842','Misc Till1','Misc Till 1         ','Miscellaneous Till 1'),
    (103,'fr_CA','2011-02-03 13:56:11.361903','2011-02-03 13:56:11.361903','Plat1, div','Plat. caisse 1, div.','Plateau de caisse 1, divers'),
    (104,'en_CA','2010-07-19 15:46:19.707054','2010-07-19 15:46:19.707054','Misc Till2','Misc Till 2         ','Miscellaneous Till 2'),
    (104,'en_US','2010-04-09 09:37:22.052783','2010-04-09 09:37:22.052783','Misc Till2','Misc Till 2         ','Miscellaneous Till 2'),
    (104,'fr_CA','2011-02-03 13:56:11.427545','2011-02-03 13:56:11.427545','Plat2, div','Plat. caisse 2, div.','Plateau de caisse 2, divers'),
    (105,'en_CA','2010-07-19 15:46:19.707054','2010-07-19 15:46:19.707054','Coin Till ','Coin Till           ','Coin Till'),
    (105,'en_US','2010-04-09 09:38:50.261883','2010-04-09 09:38:50.261883','Coin Till ','Coin Till           ','Coin Till'),
    (105,'fr_CA','2011-02-03 13:56:11.599796','2011-02-03 13:56:11.599796','Plat monn ','Plat. caisse monn.  ','Plateau de caisse à monnaie'),
    (106,'en_CA','2018-06-06 16:20:07.17958','2018-06-06 16:20:07.17958','Recycler  ','Recycler            ','Recycler'),
    (106,'en_US','2018-06-06 16:20:56.961889','2018-06-06 16:20:56.961889','Recycler  ','Recycler            ','Recycler');
INSERT INTO vault.NPOSRGTP (POS_RGSTR_TYP_CD,LANG_CD,LAST_UPD_TS,CRT_TS,D_POS_RGSTR_TYP_CD,S_RGSTR_TYP_DESC,POS_RGSTR_TYP_DESC) VALUES
    (106,'fr_CA','2018-06-06 16:20:57.119387','2018-06-06 16:20:57.119387','Recycleur ','Recycleur           ','Recycleur');

--TILLDNM--
INSERT INTO vault.TILLDNM (POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    (100,20,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',0,0.0000,'USD'),
    (100,25,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',35,350.0000,'USD'),
    (100,30,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',70,350.0000,'USD'),
    (100,35,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',200,200.0000,'USD'),
    (100,37,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',6,60.0000,'USD'),
    (100,38,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',6,30.0000,'USD'),
    (100,39,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',3,6.0000,'USD'),
    (100,41,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',8,4.0000,'USD'),
    (100,120,'2010-03-11 10:02:16.453829','2010-03-11 10:02:16.453829',0,0.0000,'CAD'),
    (100,125,'2010-03-11 10:02:45.642225','2010-03-11 10:02:45.642225',35,350.0000,'CAD');
INSERT INTO vault.TILLDNM (POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    (100,130,'2010-03-11 10:03:18.797189','2010-03-11 10:03:18.797189',70,350.0000,'CAD'),
    (100,140,'2010-03-11 10:03:51.747213','2010-03-11 10:03:51.747213',0,0.0000,'CAD'),
    (100,145,'2010-03-11 10:04:21.407892','2010-03-11 10:04:21.407892',8,200.0000,'CAD'),
    (100,147,'2010-03-11 10:04:54.782612','2010-03-11 10:04:54.782612',6,60.0000,'CAD'),
    (100,148,'2010-03-11 10:05:14.727648','2010-03-11 10:05:14.727648',6,30.0000,'CAD'),
    (100,149,'2010-03-11 10:05:44.322446','2010-03-11 10:05:44.322446',3,6.0000,'CAD'),
    (100,151,'2010-03-11 10:06:05.75802','2010-03-11 10:06:05.75802',8,4.0000,'CAD'),
    (101,20,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',10,200.0000,'USD'),
    (101,25,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',13,130.0000,'USD'),
    (101,30,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',20,100.0000,'USD');
INSERT INTO vault.TILLDNM (POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    (101,35,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',40,40.0000,'USD'),
    (101,37,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',2,20.0000,'USD'),
    (101,38,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',1,5.0000,'USD'),
    (101,39,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',2,4.0000,'USD'),
    (101,41,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',2,1.0000,'USD'),
    (101,120,'2010-03-11 11:30:17.586065','2010-03-11 11:30:17.586065',10,200.0000,'CAD'),
    (101,125,'2010-03-11 11:31:00.089388','2010-03-11 11:31:00.089388',12,120.0000,'CAD'),
    (101,130,'2010-03-11 11:31:28.330423','2010-03-11 11:31:28.330423',20,100.0000,'CAD'),
    (101,140,'2010-03-11 11:32:24.436394','2010-03-11 11:32:24.436394',0,0.0000,'CAD'),
    (101,145,'2010-03-11 11:31:53.251724','2010-03-11 11:31:53.251724',2,50.0000,'CAD');
INSERT INTO vault.TILLDNM (POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    (101,147,'2010-03-11 11:35:11.486493','2010-03-11 11:35:11.486493',2,10.0000,'CAD'),
    (101,148,'2010-03-11 11:35:26.86777','2010-03-11 11:35:26.86777',1,5.0000,'CAD'),
    (101,149,'2010-03-11 11:35:45.563889','2010-03-11 11:35:45.563889',2,4.0000,'CAD'),
    (101,151,'2010-03-11 11:35:59.677351','2010-03-11 11:35:59.677351',2,1.0000,'CAD'),
    (102,20,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',0,0.0000,'USD'),
    (102,25,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',0,0.0000,'USD'),
    (102,30,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',8,40.0000,'USD'),
    (102,35,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',40,40.0000,'USD'),
    (102,37,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',1,10.0000,'USD'),
    (102,38,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',1,5.0000,'USD');
INSERT INTO vault.TILLDNM (POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    (102,39,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',2,4.0000,'USD'),
    (102,41,'2008-04-10 13:58:55.891408','2008-04-10 13:58:55.891408',2,1.0000,'USD'),
    (102,120,'2010-03-11 11:37:06.043615','2010-03-11 11:37:06.043615',0,0.0000,'CAD'),
    (102,125,'2010-03-11 11:37:13.815758','2010-03-11 11:37:13.815758',0,0.0000,'CAD'),
    (102,130,'2010-03-11 11:38:06.422526','2010-03-11 11:38:06.422526',6,30.0000,'CAD'),
    (102,140,'2010-03-11 11:38:27.065394','2010-03-11 11:38:27.065394',0,0.0000,'CAD'),
    (102,145,'2010-03-11 11:38:39.174401','2010-03-11 11:38:39.174401',2,50.0000,'CAD'),
    (102,147,'2010-03-11 11:38:57.914074','2010-03-11 11:38:57.914074',1,10.0000,'CAD'),
    (102,148,'2010-03-11 11:39:45.607133','2010-03-11 11:39:45.607133',1,5.0000,'CAD'),
    (102,149,'2010-03-11 11:40:05.147088','2010-03-11 11:40:05.147088',2,4.0000,'CAD');
INSERT INTO vault.TILLDNM (POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    (102,151,'2010-03-11 11:40:22.306309','2010-03-11 11:40:22.306309',2,1.0000,'CAD'),
    (103,20,'2008-12-18 11:23:32.789896','2008-12-18 11:23:32.789896',0,0.0000,'USD'),
    (103,25,'2008-12-18 11:24:08.712509','2008-12-18 11:24:08.712509',35,350.0000,'USD'),
    (103,30,'2008-12-18 11:24:34.067407','2008-12-18 11:24:34.067407',70,350.0000,'USD'),
    (103,35,'2008-12-18 11:24:57.492771','2008-12-18 11:24:57.492771',200,200.0000,'USD'),
    (103,37,'2008-12-18 11:25:29.880126','2008-12-18 11:25:29.880126',7,70.0000,'USD'),
    (103,38,'2008-12-18 11:25:51.771063','2008-12-18 11:25:51.771063',0,0.0000,'USD'),
    (103,39,'2008-12-18 11:26:11.331655','2008-12-18 11:26:11.331655',3,6.0000,'USD'),
    (103,41,'2008-12-18 11:26:30.219552','2008-12-18 11:26:30.219552',8,4.0000,'USD'),
    (103,120,'2010-03-11 11:44:01.143534','2010-03-11 11:44:01.143534',0,0.0000,'CAD');
INSERT INTO vault.TILLDNM (POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    (103,125,'2010-03-11 11:44:07.986312','2010-03-11 11:44:07.986312',0,0.0000,'CAD'),
    (103,130,'2010-03-11 11:44:15.985099','2010-03-11 11:44:15.985099',0,0.0000,'CAD'),
    (103,140,'2010-03-11 11:44:22.283823','2010-03-11 11:44:22.283823',0,0.0000,'CAD'),
    (103,145,'2010-03-11 11:44:27.458788','2010-03-11 11:44:27.458788',0,0.0000,'CAD'),
    (103,147,'2010-03-11 11:44:32.997733','2010-03-11 11:44:32.997733',0,0.0000,'CAD'),
    (103,148,'2010-03-11 11:44:39.159149','2010-03-11 11:44:39.159149',0,0.0000,'CAD'),
    (103,149,'2010-03-11 11:44:44.727303','2010-03-11 11:44:44.727303',0,0.0000,'CAD'),
    (103,151,'2010-03-11 11:44:50.396882','2010-03-11 11:44:50.396882',0,0.0000,'CAD'),
    (104,20,'2010-04-09 09:41:39.540124','2010-04-09 09:41:39.540124',0,0.0000,'USD'),
    (104,25,'2010-04-09 09:41:48.828859','2010-04-09 09:41:48.828859',0,0.0000,'USD');
INSERT INTO vault.TILLDNM (POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    (104,30,'2010-04-09 09:41:56.223926','2010-04-09 09:41:56.223926',0,0.0000,'USD'),
    (104,35,'2010-04-09 09:42:03.029396','2010-04-09 09:42:03.029396',0,0.0000,'USD'),
    (104,37,'2010-04-09 09:42:14.51359','2010-04-09 09:42:14.51359',0,0.0000,'USD'),
    (104,38,'2010-04-09 09:42:20.275146','2010-04-09 09:42:20.275146',0,0.0000,'USD'),
    (104,39,'2010-04-09 09:42:26.258834','2010-04-09 09:42:26.258834',0,0.0000,'USD'),
    (104,41,'2010-04-09 09:42:33.428237','2010-04-09 09:42:33.428237',0,0.0000,'USD'),
    (104,120,'2010-06-28 10:12:27.298015','2010-06-28 10:12:27.298015',0,0.0000,'CAD'),
    (104,125,'2010-06-28 10:12:35.758855','2010-06-28 10:12:35.758855',0,0.0000,'CAD'),
    (104,130,'2010-06-28 10:12:54.011083','2010-06-28 10:12:54.011083',0,0.0000,'CAD'),
    (104,140,'2010-06-28 10:13:01.628387','2010-06-28 10:13:01.628387',0,0.0000,'CAD');
INSERT INTO vault.TILLDNM (POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    (104,145,'2010-06-28 10:13:08.384135','2010-06-28 10:13:08.384135',0,0.0000,'CAD'),
    (104,147,'2010-06-28 10:13:19.541043','2010-06-28 10:13:19.541043',0,0.0000,'CAD'),
    (104,148,'2010-06-28 10:13:25.454256','2010-06-28 10:13:25.454256',0,0.0000,'CAD'),
    (104,149,'2010-06-28 10:13:33.183018','2010-06-28 10:13:33.183018',0,0.0000,'CAD'),
    (104,151,'2010-06-28 10:13:39.78137','2010-06-28 10:13:39.78137',0,0.0000,'CAD'),
    (105,20,'2010-04-09 09:43:29.838689','2010-04-09 09:43:29.838689',0,0.0000,'USD'),
    (105,25,'2010-04-09 09:43:25.095916','2010-04-09 09:43:25.095916',0,0.0000,'USD'),
    (105,30,'2010-04-09 09:43:19.510333','2010-04-09 09:43:19.510333',0,0.0000,'USD'),
    (105,35,'2010-04-09 09:43:14.682117','2010-04-09 09:43:14.682117',0,0.0000,'USD'),
    (105,37,'2010-04-09 09:43:09.502235','2010-04-09 09:43:09.502235',0,0.0000,'USD');
INSERT INTO vault.TILLDNM (POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    (105,38,'2010-04-09 09:43:04.644323','2010-04-09 09:43:04.644323',0,0.0000,'USD'),
    (105,39,'2010-04-09 09:42:59.385285','2010-04-09 09:42:59.385285',0,0.0000,'USD'),
    (105,41,'2010-04-09 09:42:50.964464','2010-04-09 09:42:50.964464',0,0.0000,'USD'),
    (105,120,'2010-06-28 10:14:41.187219','2010-06-28 10:14:41.187219',0,0.0000,'CAD'),
    (105,125,'2010-06-28 10:14:36.420457','2010-06-28 10:14:36.420457',0,0.0000,'CAD'),
    (105,130,'2010-06-28 10:14:27.179011','2010-06-28 10:14:27.179011',0,0.0000,'CAD'),
    (105,140,'2010-06-28 10:14:22.043313','2010-06-28 10:14:22.043313',0,0.0000,'CAD'),
    (105,145,'2010-06-28 10:14:17.04296','2010-06-28 10:14:17.04296',0,0.0000,'CAD'),
    (105,147,'2010-06-28 10:14:05.001627','2010-06-28 10:14:05.001627',0,0.0000,'CAD'),
    (105,148,'2010-06-28 10:13:57.878448','2010-06-28 10:13:57.878448',0,0.0000,'CAD');
INSERT INTO vault.TILLDNM (POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    (105,149,'2010-06-28 10:13:52.005917','2010-06-28 10:13:52.005917',0,0.0000,'CAD'),
    (105,151,'2010-06-28 10:13:46.194846','2010-06-28 10:13:46.194846',0,0.0000,'CAD'),
    (106,20,'2018-06-06 16:31:42.98674','2018-06-06 16:31:42.98674',5,100.0000,'USD'),
    (106,25,'2018-06-06 16:31:43.188143','2018-06-06 16:31:43.188143',40,400.0000,'USD'),
    (106,30,'2018-06-06 16:31:43.393459','2018-06-06 16:31:43.393459',40,200.0000,'USD'),
    (106,35,'2018-06-06 16:31:43.581939','2018-06-06 16:31:43.581939',60,60.0000,'USD'),
    (106,37,'2018-06-06 16:31:43.76981','2018-06-06 16:31:43.76981',6,60.0000,'USD'),
    (106,38,'2018-06-06 16:31:43.943462','2018-06-06 16:31:43.943462',3,15.0000,'USD'),
    (106,39,'2018-06-06 16:31:44.146923','2018-06-06 16:31:44.146923',3,6.0000,'USD'),
    (106,41,'2018-06-06 16:31:44.40304','2018-06-06 16:31:44.40304',8,4.0000,'USD');
INSERT INTO vault.TILLDNM (POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    (106,120,'2018-06-06 16:31:44.671499','2018-06-06 16:31:44.671499',5,100.0000,'CAD'),
    (106,125,'2018-06-06 16:31:44.934058','2018-06-06 16:31:44.934058',40,400.0000,'CAD'),
    (106,130,'2018-06-06 16:31:45.088008','2018-06-06 16:31:45.088008',40,200.0000,'CAD'),
    (106,140,'2018-06-06 16:31:45.266031','2018-06-06 16:31:45.266031',0,0.0000,'CAD'),
    (106,145,'2018-06-06 16:31:45.447116','2018-06-06 16:31:45.447116',8,200.0000,'CAD'),
    (106,147,'2018-06-06 16:31:45.613577','2018-06-06 16:31:45.613577',6,60.0000,'CAD'),
    (106,148,'2018-06-06 16:31:45.798873','2018-06-06 16:31:45.798873',3,15.0000,'CAD'),
    (106,149,'2018-06-06 16:31:46.042898','2018-06-06 16:31:46.042898',3,6.0000,'CAD'),
    (106,151,'2018-06-06 16:31:46.270537','2018-06-06 16:31:46.270537',8,4.0000,'CAD');

--TILLDNMX--
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0035',100,20,'2018-11-12 17:09:00.765542','2018-06-01 11:59:07.490615',0,0.0000,'USD'),
    ('0035',100,25,'2018-11-12 17:09:00.765542','2018-06-01 11:59:07.490615',35,350.0000,'USD'),
    ('0035',100,30,'2018-11-12 17:09:00.765542','2018-06-01 11:59:07.490615',70,350.0000,'USD'),
    ('0035',100,35,'2018-11-12 17:09:00.765542','2018-06-01 11:59:07.490615',200,200.0000,'USD'),
    ('0035',100,37,'2018-11-12 17:09:00.765542','2018-06-01 11:59:07.490615',6,60.0000,'USD'),
    ('0035',100,38,'2018-11-12 17:09:00.765542','2018-06-01 11:59:07.490615',6,30.0000,'USD'),
    ('0035',100,39,'2018-11-12 17:09:00.765542','2018-06-01 11:59:07.490615',3,6.0000,'USD'),
    ('0035',100,41,'2018-11-12 17:09:00.765542','2018-06-01 11:59:07.490615',8,4.0000,'USD'),
    ('0035',101,20,'2018-11-12 17:09:00.543506','2018-06-01 11:59:07.051698',10,200.0000,'USD'),
    ('0035',101,25,'2018-11-12 17:09:00.543506','2018-06-01 11:59:07.051698',13,130.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0035',101,30,'2018-11-12 17:09:00.543506','2018-06-01 11:59:07.051698',20,100.0000,'USD'),
    ('0035',101,35,'2018-11-12 17:09:00.543506','2018-06-01 11:59:07.051698',40,40.0000,'USD'),
    ('0035',101,37,'2018-11-12 17:09:00.543506','2018-06-01 11:59:07.051698',2,20.0000,'USD'),
    ('0035',101,38,'2018-11-12 17:09:00.543506','2018-06-01 11:59:07.051698',1,5.0000,'USD'),
    ('0035',101,39,'2018-11-12 17:09:00.543506','2018-06-01 11:59:07.051698',2,4.0000,'USD'),
    ('0035',101,41,'2018-11-12 17:09:00.543506','2018-06-01 11:59:07.051698',2,1.0000,'USD'),
    ('0035',102,20,'2018-11-12 17:09:00.355784','2018-06-01 11:59:06.773928',0,0.0000,'USD'),
    ('0035',102,25,'2018-11-12 17:09:00.355784','2018-06-01 11:59:06.773928',0,0.0000,'USD'),
    ('0035',102,30,'2018-11-12 17:09:00.355784','2018-06-01 11:59:06.773928',8,40.0000,'USD'),
    ('0035',102,35,'2018-11-12 17:09:00.355784','2018-06-01 11:59:06.773928',40,40.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0035',102,37,'2018-11-12 17:09:00.355784','2018-06-01 11:59:06.773928',1,10.0000,'USD'),
    ('0035',102,38,'2018-11-12 17:09:00.355784','2018-06-01 11:59:06.773928',1,5.0000,'USD'),
    ('0035',102,39,'2018-11-12 17:09:00.355784','2018-06-01 11:59:06.773928',2,4.0000,'USD'),
    ('0035',102,41,'2018-11-12 17:09:00.355784','2018-06-01 11:59:06.773928',2,1.0000,'USD'),
    ('0035',103,20,'2018-11-12 17:09:00.89423','2018-06-01 11:59:07.760728',0,0.0000,'USD'),
    ('0035',103,25,'2018-11-12 17:09:00.89423','2018-06-01 11:59:07.760728',35,350.0000,'USD'),
    ('0035',103,30,'2018-11-12 17:09:00.89423','2018-06-01 11:59:07.760728',70,350.0000,'USD'),
    ('0035',103,35,'2018-11-12 17:09:00.89423','2018-06-01 11:59:07.760728',200,200.0000,'USD'),
    ('0035',103,37,'2018-11-12 17:09:00.89423','2018-06-01 11:59:07.760728',7,70.0000,'USD'),
    ('0035',103,38,'2018-11-12 17:09:00.89423','2018-06-01 11:59:07.760728',0,0.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0035',103,39,'2018-11-12 17:09:00.89423','2018-06-01 11:59:07.760728',3,6.0000,'USD'),
    ('0035',103,41,'2018-11-12 17:09:00.89423','2018-06-01 11:59:07.760728',8,4.0000,'USD'),
    ('0035',104,20,'2018-11-12 17:09:01.003739','2018-06-01 11:59:07.960632',0,0.0000,'USD'),
    ('0035',104,25,'2018-11-12 17:09:01.003739','2018-06-01 11:59:07.960632',10,100.0000,'USD'),
    ('0035',104,30,'2018-11-12 17:09:01.003739','2018-06-01 11:59:07.960632',10,50.0000,'USD'),
    ('0035',104,35,'2018-11-12 17:09:01.003739','2018-06-01 11:59:07.960632',18,18.0000,'USD'),
    ('0035',104,37,'2018-11-12 17:09:01.003739','2018-06-01 11:59:07.960632',1,10.0000,'USD'),
    ('0035',104,38,'2018-11-12 17:09:01.003739','2018-06-01 11:59:07.960632',1,5.0000,'USD'),
    ('0035',104,39,'2018-11-12 17:09:01.003739','2018-06-01 11:59:07.960632',1,2.0000,'USD'),
    ('0035',104,41,'2018-11-12 17:09:01.003739','2018-06-01 11:59:07.960632',1,0.5000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0035',105,20,'2018-11-12 17:09:00.66342','2018-06-01 11:59:07.266041',0,0.0000,'USD'),
    ('0035',105,25,'2018-11-12 17:09:00.66342','2018-06-01 11:59:07.266041',0,0.0000,'USD'),
    ('0035',105,30,'2018-11-12 17:09:00.66342','2018-06-01 11:59:07.266041',0,0.0000,'USD'),
    ('0035',105,35,'2018-11-12 17:09:00.66342','2018-06-01 11:59:07.266041',0,0.0000,'USD'),
    ('0035',105,37,'2018-11-12 17:09:00.66342','2018-06-01 11:59:07.266041',0,0.0000,'USD'),
    ('0035',105,38,'2018-11-12 17:09:00.66342','2018-06-01 11:59:07.266041',0,0.0000,'USD'),
    ('0035',105,39,'2018-11-12 17:09:00.66342','2018-06-01 11:59:07.266041',0,0.0000,'USD'),
    ('0035',105,41,'2018-11-12 17:09:00.66342','2018-06-01 11:59:07.266041',0,0.0000,'USD'),
    ('0035',106,20,'2018-11-12 17:09:01.12395','2018-10-22 16:57:11.379108',0,0.0000,'USD'),
    ('0035',106,25,'2018-11-12 17:09:01.12395','2018-10-22 16:57:11.379108',35,350.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0035',106,30,'2018-11-12 17:09:01.12395','2018-10-22 16:57:11.379108',35,175.0000,'USD'),
    ('0035',106,35,'2018-11-12 17:09:01.12395','2018-10-22 16:57:11.379108',60,60.0000,'USD'),
    ('0035',106,37,'2018-11-12 17:09:01.12395','2018-10-22 16:57:11.379108',3,30.0000,'USD'),
    ('0035',106,38,'2018-11-12 17:09:01.12395','2018-10-22 16:57:11.379108',2,10.0000,'USD'),
    ('0035',106,39,'2018-11-12 17:09:01.12395','2018-10-22 16:57:11.379108',2,4.0000,'USD'),
    ('0035',106,41,'2018-11-12 17:09:01.12395','2018-10-22 16:57:11.379108',4,2.0000,'USD'),
    ('0058',100,20,'2010-04-16 10:22:46.673008','2009-12-16 10:01:29.143292',0,0.0000,'USD'),
    ('0058',100,25,'2010-04-16 10:22:46.673008','2009-12-16 10:01:29.143292',35,350.0000,'USD'),
    ('0058',100,30,'2010-04-16 10:22:46.673008','2009-12-16 10:01:29.143292',70,350.0000,'USD'),
    ('0058',100,35,'2010-04-16 10:22:46.673008','2009-12-16 10:01:29.143292',200,200.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0058',100,37,'2010-04-16 10:22:46.673008','2009-12-16 10:01:29.143292',6,60.0000,'USD'),
    ('0058',100,38,'2010-04-16 10:22:46.673008','2009-12-16 10:01:29.143292',6,30.0000,'USD'),
    ('0058',100,39,'2010-04-16 10:22:46.673008','2009-12-16 10:01:29.143292',3,6.0000,'USD'),
    ('0058',100,41,'2010-04-16 10:22:46.673008','2009-12-16 10:01:29.143292',8,4.0000,'USD'),
    ('0058',101,20,'2010-04-16 10:22:46.432212','2009-12-16 10:01:29.373644',10,200.0000,'USD'),
    ('0058',101,25,'2010-04-16 10:22:46.432212','2009-12-16 10:01:29.373644',12,120.0000,'USD'),
    ('0058',101,30,'2010-04-16 10:22:46.432212','2009-12-16 10:01:29.373644',20,100.0000,'USD'),
    ('0058',101,35,'2010-04-16 10:22:46.432212','2009-12-16 10:01:29.373644',40,40.0000,'USD'),
    ('0058',101,37,'2010-04-16 10:22:46.432212','2009-12-16 10:01:29.373644',3,30.0000,'USD'),
    ('0058',101,38,'2010-04-16 10:22:46.432212','2009-12-16 10:01:29.373644',1,5.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0058',101,39,'2010-04-16 10:22:46.432212','2009-12-16 10:01:29.373644',2,4.0000,'USD'),
    ('0058',101,41,'2010-04-16 10:22:46.432212','2009-12-16 10:01:29.373644',2,1.0000,'USD'),
    ('0058',102,20,'2010-04-16 10:22:46.103295','2009-12-16 10:01:29.728352',0,0.0000,'USD'),
    ('0058',102,25,'2010-04-16 10:22:46.103295','2009-12-16 10:01:29.728352',0,0.0000,'USD'),
    ('0058',102,30,'2010-04-16 10:22:46.103295','2009-12-16 10:01:29.728352',8,40.0000,'USD'),
    ('0058',102,35,'2010-04-16 10:22:46.103295','2009-12-16 10:01:29.728352',40,40.0000,'USD'),
    ('0058',102,37,'2010-04-16 10:22:46.103295','2009-12-16 10:01:29.728352',1,10.0000,'USD'),
    ('0058',102,38,'2010-04-16 10:22:46.103295','2009-12-16 10:01:29.728352',1,5.0000,'USD'),
    ('0058',102,39,'2010-04-16 10:22:46.103295','2009-12-16 10:01:29.728352',2,4.0000,'USD'),
    ('0058',102,41,'2010-04-16 10:22:46.103295','2009-12-16 10:01:29.728352',2,1.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0058',103,20,'2010-04-16 10:22:46.976308','2009-12-16 10:01:29.988755',0,0.0000,'USD'),
    ('0058',103,25,'2010-04-16 10:22:46.976308','2009-12-16 10:01:29.988755',35,350.0000,'USD'),
    ('0058',103,30,'2010-04-16 10:22:46.976308','2009-12-16 10:01:29.988755',70,350.0000,'USD'),
    ('0058',103,35,'2010-04-16 10:22:46.976308','2009-12-16 10:01:29.988755',200,200.0000,'USD'),
    ('0058',103,37,'2010-04-16 10:22:46.976308','2009-12-16 10:01:29.988755',7,70.0000,'USD'),
    ('0058',103,38,'2010-04-16 10:22:46.976308','2009-12-16 10:01:29.988755',0,0.0000,'USD'),
    ('0058',103,39,'2010-04-16 10:22:46.976308','2009-12-16 10:01:29.988755',3,6.0000,'USD'),
    ('0058',103,41,'2010-04-16 10:22:46.976308','2009-12-16 10:01:29.988755',8,4.0000,'USD'),
    ('0058',104,20,'2010-04-16 10:22:47.317287','2010-04-16 10:22:47.317287',0,0.0000,'USD'),
    ('0058',104,25,'2010-04-16 10:22:47.317287','2010-04-16 10:22:47.317287',0,0.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0058',104,30,'2010-04-16 10:22:47.317287','2010-04-16 10:22:47.317287',0,0.0000,'USD'),
    ('0058',104,35,'2010-04-16 10:22:47.317287','2010-04-16 10:22:47.317287',0,0.0000,'USD'),
    ('0058',104,37,'2010-04-16 10:22:47.317287','2010-04-16 10:22:47.317287',0,0.0000,'USD'),
    ('0058',104,38,'2010-04-16 10:22:47.317287','2010-04-16 10:22:47.317287',0,0.0000,'USD'),
    ('0058',104,39,'2010-04-16 10:22:47.317287','2010-04-16 10:22:47.317287',0,0.0000,'USD'),
    ('0058',104,41,'2010-04-16 10:22:47.317287','2010-04-16 10:22:47.317287',0,0.0000,'USD'),
    ('0094',100,120,'2012-07-03 13:34:38.732366','2011-02-25 09:07:13.803526',5,100.0000,'CAD'),
    ('0094',100,125,'2012-07-03 13:34:38.732366','2011-02-25 09:07:13.803526',25,250.0000,'CAD'),
    ('0094',100,130,'2012-07-03 13:34:38.732366','2011-02-25 09:07:13.803526',70,350.0000,'CAD'),
    ('0094',100,140,'2012-07-03 13:34:38.732366','2011-02-25 09:07:13.803526',2,100.0000,'CAD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0094',100,145,'2012-07-03 13:34:38.732366','2011-02-25 09:07:13.803526',4,100.0000,'CAD'),
    ('0094',100,147,'2012-07-03 13:34:38.732366','2011-02-25 09:07:13.803526',6,60.0000,'CAD'),
    ('0094',100,148,'2012-07-03 13:34:38.732366','2011-02-25 09:07:13.803526',6,30.0000,'CAD'),
    ('0094',100,149,'2012-07-03 13:34:38.732366','2011-02-25 09:07:13.803526',3,6.0000,'CAD'),
    ('0094',100,151,'2012-07-03 13:34:38.732366','2011-02-25 09:07:13.803526',8,4.0000,'CAD'),
    ('0094',101,120,'2012-07-03 13:34:38.014484','2011-02-25 09:07:13.257024',10,200.0000,'CAD'),
    ('0094',101,125,'2012-07-03 13:34:38.014484','2011-02-25 09:07:13.257024',12,120.0000,'CAD'),
    ('0094',101,130,'2012-07-03 13:34:38.014484','2011-02-25 09:07:13.257024',20,100.0000,'CAD'),
    ('0094',101,140,'2012-07-03 13:34:38.014484','2011-02-25 09:07:13.257024',0,0.0000,'CAD'),
    ('0094',101,145,'2012-07-03 13:34:38.014484','2011-02-25 09:07:13.257024',0,0.0000,'CAD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0094',101,147,'2012-07-03 13:34:38.014484','2011-02-25 09:07:13.257024',0,0.0000,'CAD'),
    ('0094',101,148,'2012-07-03 13:34:38.014484','2011-02-25 09:07:13.257024',0,0.0000,'CAD'),
    ('0094',101,149,'2012-07-03 13:34:38.014484','2011-02-25 09:07:13.257024',0,0.0000,'CAD'),
    ('0094',101,151,'2012-07-03 13:34:38.014484','2011-02-25 09:07:13.257024',0,0.0000,'CAD'),
    ('0094',102,120,'2012-07-03 13:34:37.758842','2011-02-25 09:07:12.941329',0,0.0000,'CAD'),
    ('0094',102,125,'2012-07-03 13:34:37.758842','2011-02-25 09:07:12.941329',0,0.0000,'CAD'),
    ('0094',102,130,'2012-07-03 13:34:37.758842','2011-02-25 09:07:12.941329',6,30.0000,'CAD'),
    ('0094',102,140,'2012-07-03 13:34:37.758842','2011-02-25 09:07:12.941329',0,0.0000,'CAD'),
    ('0094',102,145,'2012-07-03 13:34:37.758842','2011-02-25 09:07:12.941329',0,0.0000,'CAD'),
    ('0094',102,147,'2012-07-03 13:34:37.758842','2011-02-25 09:07:12.941329',0,0.0000,'CAD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0094',102,148,'2012-07-03 13:34:37.758842','2011-02-25 09:07:12.941329',0,0.0000,'CAD'),
    ('0094',102,149,'2012-07-03 13:34:37.758842','2011-02-25 09:07:12.941329',0,0.0000,'CAD'),
    ('0094',102,151,'2012-07-03 13:34:37.758842','2011-02-25 09:07:12.941329',0,0.0000,'CAD'),
    ('0094',103,120,'2012-07-03 13:34:38.967307','2011-02-25 09:07:14.149188',0,0.0000,'CAD'),
    ('0094',103,125,'2012-07-03 13:34:38.967307','2011-02-25 09:07:14.149188',0,0.0000,'CAD'),
    ('0094',103,130,'2012-07-03 13:34:38.967307','2011-02-25 09:07:14.149188',0,0.0000,'CAD'),
    ('0094',103,140,'2012-07-03 13:34:38.967307','2011-02-25 09:07:14.149188',0,0.0000,'CAD'),
    ('0094',103,145,'2012-07-03 13:34:38.967307','2011-02-25 09:07:14.149188',0,0.0000,'CAD'),
    ('0094',103,147,'2012-07-03 13:34:38.967307','2011-02-25 09:07:14.149188',0,0.0000,'CAD'),
    ('0094',103,148,'2012-07-03 13:34:38.967307','2011-02-25 09:07:14.149188',0,0.0000,'CAD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0094',103,149,'2012-07-03 13:34:38.967307','2011-02-25 09:07:14.149188',0,0.0000,'CAD'),
    ('0094',103,151,'2012-07-03 13:34:38.967307','2011-02-25 09:07:14.149188',0,0.0000,'CAD'),
    ('0094',104,120,'2012-07-03 13:34:39.223114','2011-02-25 09:07:14.464783',0,0.0000,'CAD'),
    ('0094',104,125,'2012-07-03 13:34:39.223114','2011-02-25 09:07:14.464783',0,0.0000,'CAD'),
    ('0094',104,130,'2012-07-03 13:34:39.223114','2011-02-25 09:07:14.464783',0,0.0000,'CAD'),
    ('0094',104,140,'2012-07-03 13:34:39.223114','2011-02-25 09:07:14.464783',0,0.0000,'CAD'),
    ('0094',104,145,'2012-07-03 13:34:39.223114','2011-02-25 09:07:14.464783',0,0.0000,'CAD'),
    ('0094',104,147,'2012-07-03 13:34:39.223114','2011-02-25 09:07:14.464783',0,0.0000,'CAD'),
    ('0094',104,148,'2012-07-03 13:34:39.223114','2011-02-25 09:07:14.464783',0,0.0000,'CAD'),
    ('0094',104,149,'2012-07-03 13:34:39.223114','2011-02-25 09:07:14.464783',0,0.0000,'CAD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('0094',104,151,'2012-07-03 13:34:39.223114','2011-02-25 09:07:14.464783',0,0.0000,'CAD'),
    ('0094',105,120,'2012-07-03 13:34:38.364355','2011-02-25 09:07:13.623143',0,0.0000,'CAD'),
    ('0094',105,125,'2012-07-03 13:34:38.364355','2011-02-25 09:07:13.623143',0,0.0000,'CAD'),
    ('0094',105,130,'2012-07-03 13:34:38.364355','2011-02-25 09:07:13.623143',0,0.0000,'CAD'),
    ('0094',105,140,'2012-07-03 13:34:38.364355','2011-02-25 09:07:13.623143',1,50.0000,'CAD'),
    ('0094',105,145,'2012-07-03 13:34:38.364355','2011-02-25 09:07:13.623143',1,25.0000,'CAD'),
    ('0094',105,147,'2012-07-03 13:34:38.364355','2011-02-25 09:07:13.623143',1,10.0000,'CAD'),
    ('0094',105,148,'2012-07-03 13:34:38.364355','2011-02-25 09:07:13.623143',1,5.0000,'CAD'),
    ('0094',105,149,'2012-07-03 13:34:38.364355','2011-02-25 09:07:13.623143',2,4.0000,'CAD'),
    ('0094',105,151,'2012-07-03 13:34:38.364355','2011-02-25 09:07:13.623143',2,1.0000,'CAD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('1234',100,20,'2009-04-14 16:58:13.794562','2009-04-14 15:23:56.655012',4,10.0000,'USD'),
    ('3832',100,20,'2009-11-11 13:56:51.635585','2009-11-11 11:47:01.195779',0,0.0000,'USD'),
    ('3832',100,25,'2009-11-11 13:56:51.635585','2009-11-11 11:47:01.195779',35,350.0000,'USD'),
    ('3832',100,30,'2009-11-11 13:56:51.635585','2009-11-11 11:47:01.195779',70,350.0000,'USD'),
    ('3832',100,35,'2009-11-11 13:56:51.635585','2009-11-11 11:47:01.195779',200,200.0000,'USD'),
    ('3832',100,37,'2009-11-11 13:56:51.635585','2009-11-11 11:47:01.195779',6,60.0000,'USD'),
    ('3832',100,38,'2009-11-11 13:56:51.635585','2009-11-11 11:47:01.195779',6,30.0000,'USD'),
    ('3832',100,39,'2009-11-11 13:56:51.635585','2009-11-11 11:47:01.195779',3,6.0000,'USD'),
    ('3832',100,41,'2009-11-11 13:56:51.635585','2009-11-11 11:47:01.195779',8,4.0000,'USD'),
    ('3832',101,20,'2009-11-11 13:56:52.035126','2009-11-11 11:47:01.621078',10,200.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('3832',101,25,'2009-11-11 13:56:52.035126','2009-11-11 11:47:01.621078',13,130.0000,'USD'),
    ('3832',101,30,'2009-11-11 13:56:52.035126','2009-11-11 11:47:01.621078',20,100.0000,'USD'),
    ('3832',101,35,'2009-11-11 13:56:52.035126','2009-11-11 11:47:01.621078',40,40.0000,'USD'),
    ('3832',101,37,'2009-11-11 13:56:52.035126','2009-11-11 11:47:01.621078',2,20.0000,'USD'),
    ('3832',101,38,'2009-11-11 13:56:52.035126','2009-11-11 11:47:01.621078',1,5.0000,'USD'),
    ('3832',101,39,'2009-11-11 13:56:52.035126','2009-11-11 11:47:01.621078',2,4.0000,'USD'),
    ('3832',101,41,'2009-11-11 13:56:52.035126','2009-11-11 11:47:01.621078',2,1.0000,'USD'),
    ('3832',102,20,'2009-11-11 13:56:52.437798','2009-11-11 11:47:01.845919',0,0.0000,'USD'),
    ('3832',102,25,'2009-11-11 13:56:52.437798','2009-11-11 11:47:01.845919',0,0.0000,'USD'),
    ('3832',102,30,'2009-11-11 13:56:52.437798','2009-11-11 11:47:01.845919',8,40.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('3832',102,35,'2009-11-11 13:56:52.437798','2009-11-11 11:47:01.845919',40,40.0000,'USD'),
    ('3832',102,37,'2009-11-11 13:56:52.437798','2009-11-11 11:47:01.845919',1,10.0000,'USD'),
    ('3832',102,38,'2009-11-11 13:56:52.437798','2009-11-11 11:47:01.845919',1,5.0000,'USD'),
    ('3832',102,39,'2009-11-11 13:56:52.437798','2009-11-11 11:47:01.845919',2,4.0000,'USD'),
    ('3832',102,41,'2009-11-11 13:56:52.437798','2009-11-11 11:47:01.845919',2,1.0000,'USD'),
    ('3832',103,20,'2009-11-11 13:56:52.907733','2009-11-11 11:47:02.177701',0,0.0000,'USD'),
    ('3832',103,25,'2009-11-11 13:56:52.907733','2009-11-11 11:47:02.177701',35,350.0000,'USD'),
    ('3832',103,30,'2009-11-11 13:56:52.907733','2009-11-11 11:47:02.177701',70,350.0000,'USD'),
    ('3832',103,35,'2009-11-11 13:56:52.907733','2009-11-11 11:47:02.177701',200,200.0000,'USD'),
    ('3832',103,37,'2009-11-11 13:56:52.907733','2009-11-11 11:47:02.177701',7,70.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('3832',103,38,'2009-11-11 13:56:52.907733','2009-11-11 11:47:02.177701',0,0.0000,'USD'),
    ('3832',103,39,'2009-11-11 13:56:52.907733','2009-11-11 11:47:02.177701',3,6.0000,'USD'),
    ('3832',103,41,'2009-11-11 13:56:52.907733','2009-11-11 11:47:02.177701',8,4.0000,'USD'),
    ('9771',100,20,'2012-02-21 17:09:19.813828','2010-06-21 15:08:09.602165',0,0.0000,'USD'),
    ('9771',100,25,'2012-02-21 17:09:19.813828','2010-06-21 15:08:09.602165',35,350.0000,'USD'),
    ('9771',100,30,'2012-02-21 17:09:19.813828','2010-06-21 15:08:09.602165',70,350.0000,'USD'),
    ('9771',100,35,'2012-02-21 17:09:19.813828','2010-06-21 15:08:09.602165',200,200.0000,'USD'),
    ('9771',100,37,'2012-02-21 17:09:19.813828','2010-06-21 15:08:09.602165',6,60.0000,'USD'),
    ('9771',100,38,'2012-02-21 17:09:19.813828','2010-06-21 15:08:09.602165',6,30.0000,'USD'),
    ('9771',100,39,'2012-02-21 17:09:19.813828','2010-06-21 15:08:09.602165',3,6.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('9771',100,41,'2012-02-21 17:09:19.813828','2010-06-21 15:08:09.602165',8,4.0000,'USD'),
    ('9771',101,20,'2012-02-21 17:09:18.921004','2010-06-21 15:08:08.979966',10,200.0000,'USD'),
    ('9771',101,25,'2012-02-21 17:09:18.921004','2010-06-21 15:08:08.979966',13,130.0000,'USD'),
    ('9771',101,30,'2012-02-21 17:09:18.921004','2010-06-21 15:08:08.979966',20,100.0000,'USD'),
    ('9771',101,35,'2012-02-21 17:09:18.921004','2010-06-21 15:08:08.979966',40,40.0000,'USD'),
    ('9771',101,37,'2012-02-21 17:09:18.921004','2010-06-21 15:08:08.979966',0,0.0000,'USD'),
    ('9771',101,38,'2012-02-21 17:09:18.921004','2010-06-21 15:08:08.979966',0,0.0000,'USD'),
    ('9771',101,39,'2012-02-21 17:09:18.921004','2010-06-21 15:08:08.979966',0,0.0000,'USD'),
    ('9771',101,41,'2012-02-21 17:09:18.921004','2010-06-21 15:08:08.979966',0,0.0000,'USD'),
    ('9771',102,20,'2012-02-21 17:09:18.507454','2010-06-21 15:08:08.719809',0,0.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('9771',102,25,'2012-02-21 17:09:18.507454','2010-06-21 15:08:08.719809',0,0.0000,'USD'),
    ('9771',102,30,'2012-02-21 17:09:18.507454','2010-06-21 15:08:08.719809',8,40.0000,'USD'),
    ('9771',102,35,'2012-02-21 17:09:18.507454','2010-06-21 15:08:08.719809',40,40.0000,'USD'),
    ('9771',102,37,'2012-02-21 17:09:18.507454','2010-06-21 15:08:08.719809',0,0.0000,'USD'),
    ('9771',102,38,'2012-02-21 17:09:18.507454','2010-06-21 15:08:08.719809',0,0.0000,'USD'),
    ('9771',102,39,'2012-02-21 17:09:18.507454','2010-06-21 15:08:08.719809',0,0.0000,'USD'),
    ('9771',102,41,'2012-02-21 17:09:18.507454','2010-06-21 15:08:08.719809',0,0.0000,'USD'),
    ('9771',103,20,'2012-02-21 17:09:20.247873','2010-10-12 06:14:54.31139',0,0.0000,'USD'),
    ('9771',103,25,'2012-02-21 17:09:20.247873','2010-10-12 06:14:54.31139',35,350.0000,'USD'),
    ('9771',103,30,'2012-02-21 17:09:20.247873','2010-10-12 06:14:54.31139',70,350.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('9771',103,35,'2012-02-21 17:09:20.247873','2010-10-12 06:14:54.31139',200,200.0000,'USD'),
    ('9771',103,37,'2012-02-21 17:09:20.247873','2010-10-12 06:14:54.31139',8,80.0000,'USD'),
    ('9771',103,38,'2012-02-21 17:09:20.247873','2010-10-12 06:14:54.31139',0,0.0000,'USD'),
    ('9771',103,39,'2012-02-21 17:09:20.247873','2010-10-12 06:14:54.31139',3,6.0000,'USD'),
    ('9771',103,41,'2012-02-21 17:09:20.247873','2010-10-12 06:14:54.31139',8,4.0000,'USD'),
    ('9771',104,20,'2012-02-21 17:09:20.764641','2010-06-21 15:08:10.18555',0,0.0000,'USD'),
    ('9771',104,25,'2012-02-21 17:09:20.764641','2010-06-21 15:08:10.18555',0,0.0000,'USD'),
    ('9771',104,30,'2012-02-21 17:09:20.764641','2010-06-21 15:08:10.18555',0,0.0000,'USD'),
    ('9771',104,35,'2012-02-21 17:09:20.764641','2010-06-21 15:08:10.18555',0,0.0000,'USD'),
    ('9771',104,37,'2012-02-21 17:09:20.764641','2010-06-21 15:08:10.18555',0,0.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('9771',104,38,'2012-02-21 17:09:20.764641','2010-06-21 15:08:10.18555',0,0.0000,'USD'),
    ('9771',104,39,'2012-02-21 17:09:20.764641','2010-06-21 15:08:10.18555',0,0.0000,'USD'),
    ('9771',104,41,'2012-02-21 17:09:20.764641','2010-06-21 15:08:10.18555',0,0.0000,'USD'),
    ('9771',105,20,'2012-02-21 17:09:19.429764','2010-06-21 15:08:09.23006',0,0.0000,'USD'),
    ('9771',105,25,'2012-02-21 17:09:19.429764','2010-06-21 15:08:09.23006',0,0.0000,'USD'),
    ('9771',105,30,'2012-02-21 17:09:19.429764','2010-06-21 15:08:09.23006',0,0.0000,'USD'),
    ('9771',105,35,'2012-02-21 17:09:19.429764','2010-06-21 15:08:09.23006',0,0.0000,'USD'),
    ('9771',105,37,'2012-02-21 17:09:19.429764','2010-06-21 15:08:09.23006',1,10.0000,'USD'),
    ('9771',105,38,'2012-02-21 17:09:19.429764','2010-06-21 15:08:09.23006',1,5.0000,'USD'),
    ('9771',105,39,'2012-02-21 17:09:19.429764','2010-06-21 15:08:09.23006',2,4.0000,'USD');
INSERT INTO vault.TILLDNMX (STR_NBR,POS_RGSTR_TYP_CD,DENOM_TYP_CD,LAST_UPD_TS,CRT_TS,DENOM_TYP_QTY,DENOM_TYP_AMT,CURNC_TYP_CD) VALUES
    ('9771',105,41,'2012-02-21 17:09:19.429764','2010-06-21 15:08:09.23006',2,1.0000,'USD');