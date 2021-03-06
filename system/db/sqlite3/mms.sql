--
-- Tabella degli mms
--
CREATE TABLE IF NOT EXISTS mms (
  id INTEGER NOT NULL PRIMARY KEY,
  sol_id INTEGER NOT NULL REFERENCES sols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  pol_id INTEGER NOT NULL REFERENCES pols(id) ON DELETE CASCADE ON UPDATE CASCADE,
  source_id INTEGER NOT NULL REFERENCES sources(id) ON DELETE CASCADE ON UPDATE CASCADE,
  capture_date TIMESTAMP NOT NULL DEFAULT '1990-01-01 00:00:00',
  decoding_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  viewed_date TIMESTAMP NOT NULL DEFAULT '1990-01-01 00:00:00',
  first_visualization_user_id INTEGER NOT NULL DEFAULT 0,
  flow_info VARCHAR( 255 ) NOT NULL,
  url VARCHAR( 4096 ) DEFAULT ' ',
  from_num VARCHAR( 80 ) DEFAULT ' ',
  to_num VARCHAR( 80 ) DEFAULT ' ',
  cc_num VARCHAR( 80 ) DEFAULT ' ',
  bcc_num VARCHAR( 80 ) DEFAULT ' ',
  contents INTEGER DEFAULT 0
);
