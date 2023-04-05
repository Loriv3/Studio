% read video 
video = VideoReader("videoTest\Formula Student East 2022 - AutoX (Alumni Cup) ⧸ Rennteam Stuttgart F0711-11 onboard.mp4")%insert here the video you want to convert

% number of frames
nFrames = video.NumFrames();
n = nFrames;

% Frame Storing
for i = 1:n
    frame = read(video,i);
    imwrite(frame, ['image' int2str(i),'.jpg']);
    Im(i) = image(frame)
end