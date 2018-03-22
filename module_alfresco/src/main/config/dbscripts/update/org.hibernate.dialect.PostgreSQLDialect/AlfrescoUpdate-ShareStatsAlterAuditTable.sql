-- Copyright (C) 2018 Atol Conseils et Développements.
-- http://www.atolcd.com/
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Lesser General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Lesser General Public License for more details.
--
-- You should have received a copy of the GNU Lesser General Public License
-- along with this program. If not, see <http://www.gnu.org/licenses/>.

-- Title:      ShareStats Adding a new column to the Audit table
-- Database:   PostgreSQL

ALTER TABLE share_stats_audit_entry ADD COLUMN audit_node_type VARCHAR(255);