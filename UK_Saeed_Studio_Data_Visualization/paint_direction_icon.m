function [  ] = paint_direction_icon( walking_direction_image, location_x, location_y)
    global walking_direction_icons_folder_path ;
    uniquebgcolor=[0 0 0]; 
    walking_direction_image_url = strcat(walking_direction_icons_folder_path, walking_direction_image);
    walking_direction_image_url = char(walking_direction_image_url(1,1));
    [Direction_Icon_Image, ~, ~] = imread(walking_direction_image_url);
    Direction_Icon_Image = imresize(Direction_Icon_Image,[40 40]);

    mask = bsxfun(@eq,Direction_Icon_Image,reshape(uniquebgcolor,1,1,3));
    imagesc(location_x, location_y, Direction_Icon_Image,'alphadata',1-double(all(mask,3)));
end

