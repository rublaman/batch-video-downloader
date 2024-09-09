# Batch video downloader

A simple batch script to download streaming videos from a list of URLs using `ffmpeg`. This script reads URLs from a `urls.txt` file and automatically downloads each video, saving them with unique filenames. It supports streaming formats such as `.m3u8` adaptive playlists and is perfect for quickly downloading multiple streaming videos without the need for manual input.

## Features

- Batch download multiple videos from a list of URLs
- Automatic naming of downloaded files
- Works with various video formats supported by ffmpeg

## Requirements

- [FFmpeg](https://ffmpeg.org/download.html) must be installed and accessible from the command line.
- A text file (`urls.txt`) containing the list of video URLs to download, each on a new line.

## Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/your-username/ffmpeg-video-downloader.git
   cd ffmpeg-video-downloader
   ```

2. **Ensure FFmpeg is installed**:

   If you haven't already, download and install FFmpeg from the [official website](https://ffmpeg.org/download.html). Make sure it's added to your system's PATH.

## Usage

1. **Create or update the `urls.txt` file**:

   Add the URLs of the videos you want to download. Each URL should be on a separate line, for example:

   ```bash
    https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8
    https://devstreaming-cdn.apple.com/videos/streaming/examples/img_bipbop_adv_example_ts/master.m3u8
   ```

2. **Run the batch script**:

   On Windows, double-click the `download_videos.bat` file or run it from the command line:

   ```bash
   download_videos.bat
   ```

3. **Check the output**:

   Downloaded videos will be saved in the same directory as the script with names like `video1.mp4`, `video2.mp4`, etc.

## Notes

- Ensure the URLs in `urls.txt` are direct links to video files or playlists compatible with ffmpeg.
- The script will automatically number the output files to avoid overwriting.
- If a download fails, the script will continue with the next URL in the list.

## Troubleshooting

- If you encounter an error saying "ffmpeg is not recognized", make sure FFmpeg is correctly installed and added to your system's PATH.
- For issues with specific URLs, try downloading them manually with ffmpeg to identify any format-specific problems.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).
