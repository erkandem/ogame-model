-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.2
-- PostgreSQL version: 12.0
-- Project Site: pgmodeler.io
-- Model Author: ---


-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: ogame_univese | type: DATABASE --
-- -- DROP DATABASE IF EXISTS ogame_univese;
-- CREATE DATABASE ogame_univese;
-- -- ddl-end --
-- 

-- object: public.players | type: TABLE --
-- DROP TABLE IF EXISTS public.players CASCADE;
CREATE TABLE public.players (
	id serial NOT NULL,
	name varchar(20) NOT NULL,
	CONSTRAINT players_id_pkey PRIMARY KEY (id,name),
	CONSTRAINT players_name_unique UNIQUE (name)

);
-- ddl-end --
COMMENT ON TABLE public.players IS E'a table including the players of the game';
-- ddl-end --
-- ALTER TABLE public.players OWNER TO postgres;
-- ddl-end --

-- object: public.planets | type: TABLE --
-- DROP TABLE IF EXISTS public.planets CASCADE;
CREATE TABLE public.planets (
	id integer NOT NULL,
	galaxy smallint NOT NULL,
	system smallint NOT NULL,
	planetslot smallint NOT NULL,
	taken bool NOT NULL,
	coords varchar(8) NOT NULL,
	owner varchar(20),
	CONSTRAINT planets_id_pkey PRIMARY KEY (id)

);
-- ddl-end --
-- ALTER TABLE public.planets OWNER TO postgres;
-- ddl-end --

-- object: public.player_research | type: TABLE --
-- DROP TABLE IF EXISTS public.player_research CASCADE;
CREATE TABLE public.player_research (
	player_name varchar(20) NOT NULL,
	espionage_technology smallint NOT NULL,
	computer_technology smallint NOT NULL,
	weapons_technology smallint NOT NULL,
	shielding_technology smallint NOT NULL,
	armour_technology smallint NOT NULL,
	energy_technology smallint NOT NULL,
	hyperspace_technology smallint NOT NULL,
	combustion_drive smallint NOT NULL,
	impulse_drive smallint NOT NULL,
	hyperspace_drive smallint NOT NULL,
	laser_technology smallint NOT NULL,
	ion_technology smallint NOT NULL,
	plasma_technology smallint NOT NULL,
	intergalactic_research_network smallint NOT NULL,
	astrophysics smallint NOT NULL,
	graviton_technology smallint NOT NULL,
	CONSTRAINT player_research_pkey PRIMARY KEY (player_name)

);
-- ddl-end --
-- ALTER TABLE public.player_research OWNER TO postgres;
-- ddl-end --

-- object: public.player_planets | type: TABLE --
-- DROP TABLE IF EXISTS public.player_planets CASCADE;
CREATE TABLE public.player_planets (
	planet_id integer NOT NULL,
	owner varchar(20) NOT NULL,
	metal bigint NOT NULL,
	chrystal bigint NOT NULL,
	deuterium bigint NOT NULL,
	metal_mine smallint NOT NULL,
	crystal_mine smallint NOT NULL,
	deuterium_synthesizer smallint NOT NULL,
	solar_plant smallint NOT NULL,
	fusion_reactor smallint NOT NULL,
	metal_storage smallint NOT NULL,
	crystal_storage smallint NOT NULL,
	deuterium_tank smallint NOT NULL,
	shielded_metal_den integer,
	underground_crystal_den integer,
	seabed_deuterium_den integer,
	alliance_depot smallint NOT NULL,
	robotics_factory smallint NOT NULL,
	shipyard smallint NOT NULL,
	research_lab smallint NOT NULL,
	missile_silo smallint NOT NULL,
	nanite_factory smallint NOT NULL,
	terraformer smallint NOT NULL,
	space_dock smallint NOT NULL,
	rocket_launcher smallint NOT NULL,
	light_laser smallint NOT NULL,
	heavy_laser smallint NOT NULL,
	gauss_cannon smallint NOT NULL,
	ion_cannon smallint NOT NULL,
	plasma_turret smallint NOT NULL,
	small_shield_dome smallint NOT NULL,
	large_shield_dome smallint NOT NULL,
	anti_ballistic_missiles smallint NOT NULL,
	interplanetary_missiles smallint NOT NULL,
	small_cargo smallint NOT NULL,
	large_cargo smallint NOT NULL,
	light_fighter smallint NOT NULL,
	heavy_fighter smallint NOT NULL,
	cruiser smallint NOT NULL,
	battleship smallint NOT NULL,
	colony_ship smallint NOT NULL,
	recycler smallint NOT NULL,
	espionage_probe smallint NOT NULL,
	bomber smallint NOT NULL,
	solar_satellite smallint NOT NULL,
	destroyer smallint NOT NULL,
	CONSTRAINT player_planets_pkey PRIMARY KEY (planet_id)

);
-- ddl-end --
-- ALTER TABLE public.player_planets OWNER TO postgres;
-- ddl-end --

-- object: planets_owner_fkey | type: CONSTRAINT --
-- ALTER TABLE public.planets DROP CONSTRAINT IF EXISTS planets_owner_fkey CASCADE;
ALTER TABLE public.planets ADD CONSTRAINT planets_owner_fkey FOREIGN KEY (owner)
REFERENCES public.players (name) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: player_research_fkey | type: CONSTRAINT --
-- ALTER TABLE public.player_research DROP CONSTRAINT IF EXISTS player_research_fkey CASCADE;
ALTER TABLE public.player_research ADD CONSTRAINT player_research_fkey FOREIGN KEY (player_name)
REFERENCES public.players (name) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: player_planet_id | type: CONSTRAINT --
-- ALTER TABLE public.player_planets DROP CONSTRAINT IF EXISTS player_planet_id CASCADE;
ALTER TABLE public.player_planets ADD CONSTRAINT player_planet_id FOREIGN KEY (planet_id)
REFERENCES public.planets (id) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --

-- object: player_planets_owner | type: CONSTRAINT --
-- ALTER TABLE public.player_planets DROP CONSTRAINT IF EXISTS player_planets_owner CASCADE;
ALTER TABLE public.player_planets ADD CONSTRAINT player_planets_owner FOREIGN KEY (owner)
REFERENCES public.players (name) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;
-- ddl-end --


