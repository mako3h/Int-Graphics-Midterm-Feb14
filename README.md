# Intermediate Graphics Midterm - Febuary 14th
 
 2 Parts 
 - Part 1 = Things integrated before the midterm
 - Part 2 = Things integrated during the midterm 

# Things That I Added Before Midterm

Nine shaders scripts that were all previously used/given in the lectures

I will list the shaders below
- Toon Ramp
- Diffuse
- Bump Diffuse
- Diffuse Wrap
- LUT
- Reflection
- Shader PBR
- Standard Specular PBR
- Rim Lighting

I created a material for each of these shaders and attached each shader onto it. 

I added one texture to the project (It was made from one of my gdw group members (Caleb B.) (I am referencing this as it was made by him and not by me. But not found from online))

I created a NormalMap for this texture as well by using the website below
https://cpetry.github.io/NormalMap-Online/ 

I retreived a ramp texture from online. This was taken and made by from the website below
http://xdpixel.com/shader-experiments/ 

This is everything that I have added into the unity file before hand. I added these nine shaders and two textures (One made by my GDW group member and the other created from the first texture using a normalMapping website)

# Things Added During The Midterm Duration

I am an even number for the midterm (100827699) (1+9=10)

I retreived the prefab for my airplane on in the unity asset store. Here is a link below where
https://assetstore.unity.com/packages/3d/vehicles/air/simple-low-poly-mini-airplanes-178911 

I created a desert-like environment for the plane to move around within.

I created my own ramp texture for part 1. I created 3 different ones, to see which one fit the best and which one I liked the most. I ended up choosing a rampTex that starts very purple and gets lighter everytime. I chose this as I believe this very darkness, to very light, makes the lighting bounce off the cartoonish ship the best. I used the normal toon ramp shader that we used within the lecture.

I created a rotation script for the plane to rotate around. The camera is on a slight angle so that you can see the plane shader changes color when it moves better.

For part 2, I chose to make a visual effect for when the plane were to take damage. When I hear something takes damage, I think, it turns color to red for a short duration until it return to its original color. Therefore, for part 2, I created two more things. First, I created a new toonRamp material that held a red ramp pattern which acts as the "takes damage" ramp pattern. Then secondly, I created a C# script for when the player "takes damage", the plane changes to the red toonRamp material for 3 seconds, and then returns to its original ramp pattern. But since there is no way for it to take damage, if you press the "1" button on the keyboard, this effect will run. I am adding comments in the c# script I made explaining the lines of code.

The custom ramp pattern is the purple toon pattern that is currently located on the plane. If you press button "1" then you are able to see the "takeDamage" ramp pattern for 3 seconds before it goes back to normal.

ORGANIZATION EXPLAINED BELOW
 - All of the matierals that I used throughout this submission are in the "Material" folder
 - The two scripts that I created during this midterm period are located in the "InMidtermScripts" folder
 - The custom ramp patterns that I created are located in the "Custom Ramp" folder. I only used the "TakeDamageRamp" and the "Original Ramp" patterns. I created all of these in "Google Drawings"
 - In the "simple_low_poly_planes" folder, that is what I imported from the unity store (plane asset) and talked about above
 - In the "InLectureShaders+Mats" folder, it is what I imported from the lectures. Only the ToonRamp shader was used
 - In the "MyOwnTexture + NormalMapOfIt" folder, it is what two matierals I imported and talked about before the midterm. Neither were used.

