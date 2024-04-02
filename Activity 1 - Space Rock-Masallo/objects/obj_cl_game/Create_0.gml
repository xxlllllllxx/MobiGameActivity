up = false;
down = false;
left = false;
right = false;

objective_finished = false;

mechanics = array_create(5, 5);

mechanics[0][0] = "Welcome to Space Game, created by Masallo";
mechanics[0][1] = "Use [ W-S-A-D ] or [ Arrow ] keys to navigate the space";
mechanics[0][2] = "Click the [ RED ] button to Fire a projectile";
mechanics[0][3] = "Watch out, BIg rocks splits into small rocks";
mechanics[0][4] = "Complete the Objective at Upper right corner to finish the Level";

mechanics[1][0] = "Welcome to Space Game";
mechanics[1][1] = "Bullet uses 5 points per shot, Use them sparringly";
mechanics[1][2] = "Rocks only appear at the top side of the space";
mechanics[1][3] = "Rocks can go over the top and appear at the bottom, same as left to right";
mechanics[1][4] = "Complete the Objective at Upper right corner to finish the Level";

mechanics[2][0] = "Level 3 introduces a new button labeled [ B ], b stands for Boost";
mechanics[2][1] = "Blue Booster helps the Space ship Phase through rocks";
mechanics[2][2] = "Approach the Green object to change the booster type";
mechanics[2][3] = "Green Booster makes the Space ship projectile stronger";
mechanics[2][4] = "Complete the Objective at Upper right corner to finish the Level";

mechanics[3][0] = "Welcome to Space Game Classic level 4";
mechanics[3][1] = "Boosters does not come without cost, it generates over time";
mechanics[3][2] = "Approach the Purple object if it appears to change the booster type";
mechanics[3][3] = "Purple Booster makes the invincible";
mechanics[3][4] = "Complete the Objective at Upper right corner to finish the Level";

mechanics[4][0] = "Welcome to Space Game Classic level 5";
mechanics[4][1] = "Green Booster has a kickback whenever you fired a projectile with the booster active";
mechanics[4][2] = "Boosters gets used up faster than it can regenerate";
mechanics[4][3] = "You've done well, now finish this level to unlock the infinite mode";
mechanics[4][4] = "Complete the Objective at Upper right corner to finish the Level";

next = 0;
show_mechanics = true;
alarm[0] = 120;