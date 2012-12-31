
ALTER TABLE rebalancegroups ADD COLUMN benchmk_pri character varying(36);

ALTER TABLE rebalancegroups ADD COLUMN benchmk_secd character varying(36);

ALTER TABLE rebalancegroups ADD COLUMN benchmk_terti character varying(36);

ALTER TABLE rebalancegroups ADD COLUMN taraset_id character varying(36);

ALTER TABLE rebalancegroups ADD COLUMN modelport_id character varying(36);

ALTER TABLE rebalancegroups ADD COLUMN cash_need numeric(19,5)

ALTER TABLE rebalancegroups ADD COLUMN cash_need_date timestamp without time zone;

ALTER TABLE rebalancegroups ADD COLUMN next_preview_date timestamp without time zone;

ALTER TABLE rebalancegroups ADD COLUMN short_gainrate numeric(10,5);

ALTER TABLE rebalancegroups ADD COLUMN long_gain_rate numeric(10,5);

ALTER TABLE rebalancegroups ADD COLUMN net_capital_yr character varying(20);

ALTER TABLE rebalancegroups ADD COLUMN max_capital_gain numeric(19,5);

ALTER TABLE rebalancegroups ADD COLUMN max_tournover numeric(19,5);

ALTER TABLE rebalancegroups ADD COLUMN max_trade numeric(19,5);

ALTER TABLE rebalancegroups ADD COLUMN max_assets numeric(19,5);

ALTER TABLE rebalancegroups ADD COLUMN rebalance_type character varying(1);

ALTER TABLE rebalancegroups ADD COLUMN target_asset_allocation_id character varying(36);

ALTER TABLE rebalancegroups ADD COLUMN lst_modify_at timestamp without time zone;

ALTER TABLE rebalancegroups ADD COLUMN create_at timestamp without time zone;











