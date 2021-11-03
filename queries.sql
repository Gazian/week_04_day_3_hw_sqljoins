SELECT      vict.name victim_name,
            vict.run_speed,
            bite.infected_on,
            zomb.name zombie_name,
            zomb.type zombie_type
FROM        victims vict
INNER JOIN  bitings bite
ON          vict.id = bite.victim_id
INNER JOIN  zombies zomb
ON          bite.zombie_id = zomb.id;