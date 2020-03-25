drop table if exists player_monthly_stats;
create table player_monthly_stats
(
    id int auto_increment primary key,
    game_mode varchar(35) not null,
    player_id int default 0 not null,
    ref_date timestamp not null,
    total_played int default 0 not null,
    kills int default 0 not null,
    assists int default 0 not null,
    deaths int default 0 not null,
    wins int default 0 not null,
    loss int default 0 not null,
    headshots int default 0 not null,
    constraint unique_index unique (player_id, ref_date, game_mode)
);

drop table if exists matchmaking_stats_summary;
create table matchmaking_stats_summary
(
    id int unsigned auto_increment primary key,
    player_id int null,
    matches_played int null,
    total_wins smallint(5) null,
    total_loss smallint(5) null,
    mm_points int null,
    assist int null,
    death int null,
    hs int null,
    kills int(25) default  null,
    is_mm tinyint(1) default  null,
    created_at timestamp default CURRENT_TIMESTAMP  null,
    updated_at timestamp null
);

drop table if exists players;
create table players
(
    player_id int null,
    cadastrado_em timestamp null
);

create index player_monthly_stats_player_id
    on player_monthly_stats (player_id);

create index player_monthly_stats_ref_date
    on player_monthly_stats (ref_date);

create index player_monthly_stats_searchable
    on player_monthly_stats (player_id, ref_date, game_mode);
    
create index created_at
    on matchmaking_stats_summary (created_at);

create index idplayer
    on matchmaking_stats_summary (player_id);

create index is_mm
    on matchmaking_stats_summary (is_mm);

create index mm_points
    on matchmaking_stats_summary (mm_points);