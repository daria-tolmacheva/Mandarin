# Mandarin Shader (Renderman + OSL)

The base geometry and scenes are constructed in RIB with mandarin displacement and color shaders written in OSL.
To run on your own machine use the `Makefile` and change `FILE` variable to the scene you want to render (the two images shown or `mandarin` for lower quality image of a single mandarin).

![Backlit CGI mandarin on the wooden table.](images/image1.png){width=74%} ![Backlit CGI mandarin on the wooden table.](images/image2.png){width=23.4%}

### To improve
- Refactor the code to create functions for repeated pasts of shaders such as dots.
- Rename "first.osl" shader to "color.osl" to match its purpose.