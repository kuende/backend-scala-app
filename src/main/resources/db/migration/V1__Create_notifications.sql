create table notifications (
    id SERIAL PRIMARY KEY,
    profile_ref_id varchar(255) NOT NULL,
    message varchar(255) NOT NULL,
    avatar varchar(255),
    kind tinyint NOT NULL,
    seen boolean,
    created_at DATETIME,
    updated_at DATETIME
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE INDEX index_notifications_on_profile_ref_id ON notifications (profile_ref_id) USING BTREE;
