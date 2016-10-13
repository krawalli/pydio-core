/* SEPARATOR */
DROP TABLE IF EXISTS ajxp_tasks;
/* SEPARATOR */
CREATE TABLE IF NOT EXISTS ajxp_tasks (
    uid VARCHAR(255) NOT NULL ,
    type INTEGER NOT NULL,
    parent_uid VARCHAR(255) DEFAULT NULL,
    flags INTEGER NOT NULL,
    label VARCHAR(255) NOT NULL,
    user_id VARCHAR(255) NOT NULL,
    ws_id VARCHAR(32) NOT NULL,
    status INTEGER NOT NULL,
    status_msg VARCHAR(500) NOT NULL,
    progress INTEGER NOT NULL,
    schedule INTEGER NOT NULL,
    schedule_value VARCHAR(255) DEFAULT NULL,
    action VARCHAR(255) NOT NULL,
    parameters VARCHAR(500) NOT NULL,
    nodes VARCHAR(500) NOT NULL,
    creation_date INTEGER NOT NULL DEFAULT 0,
    status_update INTEGER NOT NULL DEFAULT 0,
    PRIMARY KEY (uid)
);
/* SEPARATOR */
CREATE INDEX ajxp_task_usr_idx ON ajxp_tasks (user_id);
/* SEPARATOR */
CREATE INDEX ajxp_task_status_idx ON ajxp_tasks (status);
/* SEPARATOR */
CREATE INDEX ajxp_task_type ON ajxp_tasks (type);
/* SEPARATOR */
CREATE INDEX ajxp_task_schedule ON ajxp_tasks (schedule);
/* SEPARATOR */
CREATE INDEX ajxp_task_nodes_idx ON ajxp_tasks (nodes);