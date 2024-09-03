-- 字段变更 SQL
alter table infra_api_error_log modify id bigint auto_increment comment '编号';

-- 清理数据 SQL
-- 菜单数据
update system_menu set visible = 0 where id IN (1185, 1281, 2084, 2262, 2362, 2397, 2563, 2758);
update system_menu set deleted = 1 where id IN (1254, 2159, 2160);

-- 岗位数据
update system_post set deleted = 1 where deleted =0;

-- 字典数据
update system_dict_type set deleted = 1 where type like 'bpm_%';
update system_dict_type set deleted = 1 where type like 'ai_%';
update system_dict_type set deleted = 1 where type like 'crm_%';
update system_dict_type set deleted = 1 where type like 'erp_%';
update system_dict_type set deleted = 1 where type like 'pay_%';
update system_dict_type set deleted = 1 where type like 'promotion_%';
update system_dict_type set deleted = 1 where type like 'brokerage_%';
update system_dict_type set deleted = 1 where type like 'member_%';
update system_dict_type set deleted = 1 where type like 'trade_%';
update system_dict_type set deleted = 1 where type like 'product_%';
update system_dict_type set deleted = 1 where type like 'mp_%';

update system_dict_data set deleted = 1  where dict_type in (
    select type from system_dict_type where deleted = 1
);

-- job
update infra_job set deleted = 1 where id IN (5, 17, 18, 19, 21, 22, 23, 24);

update system_users set deleted = 1 where id != 1;
update system_dept set deleted = 1 where id != 100;