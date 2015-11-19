/**
 * Author:  ignaciocasinelli
 * Created: Nov 19, 2015
 */

CREATE TABLE IF NOT EXISTS FIGURES (
    id               BIGINT UNSIGNED AUTO_INCREMENT,
    command          VARCHAR(32)  CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    figuretype       VARCHAR(32)  CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    point1           VARCHAR(10)  CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    point2           VARCHAR(10)  CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    point3           VARCHAR(10)  CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    point4           VARCHAR(10)  CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
    PRIMARY KEY (id)
) ENGINE=MyISAM CHARACTER SET utf8 COLLATE utf8_general_ci;

