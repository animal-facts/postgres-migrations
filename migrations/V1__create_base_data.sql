
-- Create a single table for all animals if it does not exist
CREATE TABLE IF NOT EXISTS animals (
    id SERIAL PRIMARY KEY,
    fact TEXT NOT NULL,
    animal TEXT NOT NULL,
    UNIQUE (fact, animal)
);

-- Insert data into the 'animals' table only if it doesn't already exist
DO $$
BEGIN
    -- Birds
    IF NOT EXISTS (SELECT 1 FROM animals WHERE animal = 'bird') THEN
        INSERT INTO animals (fact, animal) VALUES
            ('Many birds, such as starlings, sing notes too high for humans to hear.', 'bird'),
            ('Birds don''t fall off of a branch when they sleep because their toes automatically clench around the twig they are standing on. Because the grabbing action is done by tendons rather than muscles, the birds can sleep without danger of falling.', 'bird'),
            ('In the continental U.S. alone, between 1.4 billion and 3.7 billion birds are killed by cats annually.', 'bird'),
            ('The type of diet a bird eats in the wild is directly related to the shape of a bird''s beak.', 'bird'),
            ('Scientists believe that birds evolved from theropod dinosaurs.', 'bird'),
            ('More than 150 kinds of birds have become extinct since 1600, though many more may have died out that scientists don''t know about. It wasn''t just European explorers that killed bird species. Archeology shows that when people first arrived in ancient times in Hawaii and on islands in the South Pacific and Caribbean, they killed many birds Europeans had never seen before.', 'bird'),
            ('The earliest known bird is the Archaeopteryx. It lived during the Jurassic period 150 million years ago. Because it did not have the basic features of flight, scientists are uncertain if it could fly.', 'bird'),
            ('The Ostrich is the largest bird in the world. It also lays the largest eggs and has the fastest maximum running speed (97 kph).', 'bird'),
            ('The biggest bird that ever existed on Earth is the flightless elephant bird, which is now extinct. It weighed about 1000 lb. (450 kg.). Seven ostrich eggs would fit inside one elephant bird''s egg. Elephant birds died out 400 years ago, but people still find pieces of their tough-shelled eggs.', 'bird'),
            ('The unique black and white coloring of penguins works as camouflage.', 'bird'),
            ('Birds sense winter is coming by 1) changes in hormones that cause them to put on fat, 2) the changing length of the day, and 3) sensing small changes in air pressure, which is important in predicting weather changes.', 'bird'),
            ('Flamingos pair for a lifetime. Some stay with their mates for 50 years or more.', 'bird');
    END IF;

    -- Cats
    IF NOT EXISTS (SELECT 1 FROM animals WHERE animal = 'cat') THEN
        INSERT INTO animals (fact, animal) VALUES
            ('When a cat chases its prey, it keeps its head level. Dogs and humans bob their heads up and down.', 'cat'),
            ('Hearing is the strongest of cat''s senses: They can hear sounds as high as 64 kHz compared with humans, who can hear only as high as 20 kHz.', 'cat'),
            ('Cat people are more open to new experiences than typical ''dog people.''', 'cat'),
            ('Approximately 24 cat skins can make a coat.', 'cat'),
            ('Cats make about 100 different sounds. Dogs make only about 10.', 'cat'),
            ('Cats have an extra organ that allows them to taste scents on the air, which is why your cat stares at you with her mouth open from time to time.', 'cat'),
            ('Evidence suggests domesticated cats have been around since 3600 B.C., 2,000 years before Egypt''s pharaohs.', 'cat'),
            ('Cat owners are 17% more likely to have a graduate degree.', 'cat'),
            ('A cat called the Turkish Van does not have the fur insulation problem and LOVES water.', 'cat'),
            ('A cat ran for mayor of Mexico City in 2013.', 'cat'),
            ('A house cat is faster than Usain Bolt.', 'cat'),
            ('Among many other diseases, cats can suffer from anorexia, senility, feline AIDS and acne.', 'cat'),
            ('Calico cats are almost always female.', 'cat'),
            ('The oldest known pet cat was recently found in a 9,500-year-old grave on the Mediterranean island of Cyprus.', 'cat'),
            ('Cats can move their ears 180 degrees.', 'cat'),
            ('Cats are very soft.', 'cat');
    END IF;

    -- Dogs
    IF NOT EXISTS (SELECT 1 FROM animals WHERE animal = 'dog') THEN
        INSERT INTO animals (fact, animal) VALUES
            ('A dog''s nose print is unique, much like a person''s fingerprint.', 'dog'),
            ('Rin Tin Tin, the famous German Shepherd, was nominated for an Academy Award.', 'dog'),
            ('Tripping over your dog is the second most likely way to get injured around hounds. Bites are the most common.', 'dog'),
            ('In the Harry Potter series, Hagrid''s dog, Fang, was a Neapolitan Mastiff.', 'dog'),
            ('All dogs dream, but puppies and senior dogs dream more frequently than adult dogs.', 'dog'),
            ('Dog body odor is often called ''Frito Feet.''', 'dog'),
            ('Spaying or neutering your dog can help prevent certain types of cancer.', 'dog'),
            ('The Basenji is not technically ''barkless,'' as many people think. They can yodel.', 'dog'),
            ('Dogs can smell disease.', 'dog'),
            ('When dogs kick backward after they go to the bathroom it''s to mark their territory.', 'dog'),
            ('Dogs and humans have the same type of slow wave sleep (SWS) and rapid eye movement (REM).', 'dog'),
            ('Big happy ''helicopter'' tail wagging is one sign of a really nice dog.', 'dog');
    END IF;

    -- Foxes
    IF NOT EXISTS (SELECT 1 FROM animals WHERE animal = 'fox') THEN
        INSERT INTO animals (fact, animal) VALUES
            ('Grey foxes can retract their claws like cats do.', 'fox'),
            ('A male is called a ''dog fox'' while a female is called a ''vixen.''', 'fox'),
            ('Foxes dig underground dens where they take care of their kits and hide from predators.', 'fox'),
            ('Foxes are generally solitary animals and hunt on their own.', 'fox'),
            ('Foxes have whiskers on their legs and face, which help them to navigate.', 'fox'),
            ('Foxes use Earth''s magnetic field to hunt their prey.', 'fox'),
            ('Foxes have excellent hearing. Red foxes can reportedly hear a watch ticking 40 yards away!', 'fox'),
            ('There are at least 40 different voices foxes use, but the most common is their scream.', 'fox'),
            ('Most foxes are like medium-sized dogs, with the biggest foxes weighing 24 pounds.', 'fox');
    END IF;

    -- Kangaroos
    IF NOT EXISTS (SELECT 1 FROM animals WHERE animal = 'kangaroo') THEN
        INSERT INTO animals (fact, animal) VALUES
            ('Like all marsupials, kangaroos are born extremely early and develop in their mother''s pouch.', 'kangaroo'),
            ('On land, kangaroos only ever move their hind legs together. In water, they kick each leg independently.', 'kangaroo'),
            ('There are more kangaroos than humans in Australia.', 'kangaroo'),
            ('In one leap, kangaroos can jump 3m high and 7.6m long.', 'kangaroo'),
            ('Kangaroos have very powerful legs and can be dangerous at times.', 'kangaroo'),
            ('Kangaroos are marsupial animals found in Australia and New Guinea.', 'kangaroo'),
            ('There are four kangaroo species: red, eastern grey, western grey, and antilopine.', 'kangaroo'),
            ('Female kangaroos can determine the gender of their offspring and even delay gestation.', 'kangaroo');
    END IF;

END $$;
