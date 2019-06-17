# K-Color-Images

University of Auckland

ENGGEN 131 Project 1, Semester 2 2018

This Project uses the k-means clustering algorithm to find the clusters of similar pixels in the picture and then turns those clusters into a single pixel color by taking the average of the whole cluster.
Hence, taking a picture with millions of colors and converting it to just a few while still retaining the original image.

# This is the Original Image

![1](https://user-images.githubusercontent.com/34535571/53775142-375ba100-3f56-11e9-8155-da5369a1c949.jpg)

# This is the image Containing 10 Colors

![2](https://user-images.githubusercontent.com/34535571/53775183-58bc8d00-3f56-11e9-990b-f9c413bc7f8c.jpg)

For more information about the algorithm see: https://en.wikipedia.org/wiki/K-means_clustering

# How to use
1. Place the picture that you want to modify in the project directory.
2. Run the ConvertImage file.
3. Enter the name of the file (e.g. clocktower.jpg).
4. Enter the number of colors you need in the picture (e.g. 10).
5. Enter the upper bound for the number of iterations (e.g. 200).
6. Voila! If convergence is met within the number of iterations then you will see the picture with k colors otherwise you will see an approximation of the image with k colors.
