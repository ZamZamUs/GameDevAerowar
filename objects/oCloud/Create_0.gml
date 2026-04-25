// pick random cloud sprite
cloud_sprites = [cloud, cloud1, cloud2, cloud3, cloud4, cloud5, cloud6];
sprite_index = cloud_sprites[irandom(array_length(cloud_sprites) - 1)];

// movement speed (slow)
hsp = random_range(-1, -3);

// optional size variation
image_xscale = random_range(0.7, 1.2);
image_yscale = image_xscale;