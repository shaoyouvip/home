[!IMPORTANT]

**To Everyone [Words from the Original Author]**

This project initially started as a simple personal homepage. However, as more and more people discovered this project, it received an overwhelming amount of attention that it was not originally intended for. Moreover, as a beginner's front-end work, the code is quite messy and of low quality. In addition, the project has been resold by many unknown resource or download sites, leading many uninformed buyers to find my contact information from the source code for inquiries or to request new features. However, due to personal life reasons and the fact that I have not benefited from this project, I am no longer able to maintain it. This repository will not be archived and will actively accept PRs from everyone, but will not update for any new features or bugs, please understand!

**n 55!w !'s Homepage**

This project is forked from imsyy's home page project, with imsyy being the original author.

- Original project address: [https://github.com/imsyy/home](https://github.com/imsyy/home)
- Author: [https://github.com/imsyy/](https://github.com/imsyy/)

The logo font of the homepage has been compressed; if you use letters other than the site's logo, it will revert to the default font. Here is the complete font, and if you cannot download it, you can replace `Pacifico-Regular-all.ttf` in the font directory.

**👀 Demo**

Due to CDN cache reasons, you may need to force refresh the browser cache with Ctrl + F5 to see the latest effects.

**n 55!w !'s Homepage**

**🎉 Features**

- [x] Loading animation
- [x] Site introduction
- [x] Hitokoto one-liner
- [x] Date and time
- [x] Real-time weather
- [x] Time progress bar
- [x] Music player
- [x] Mobile adaptation

**⚙️ Automatic Deployment**

If you encounter errors in the build environment or packaging process, you can use Github Actions for automatic construction.

After successfully forking the repository, go to the Actions page. If it is your first time turning it on, you will see the following prompt, click to start.

Then, any modification in the repository will trigger the workflow. After the workflow is completed, a downloadable compressed package will be generated below, which is the built static file, and you can upload it to the server yourself.

**⚙️ Manual Deployment**

Install Node.js environment

```bash
node > 16.16.0
npm > 8.15.0

Then run the cmd terminal with administrator privileges and navigate to the project root directory.

```bash
# Install pnpm
npm install -g pnpm

# Install dependencies
pnpm install

# Preview
pnpm dev

# Build
pnpm build
```

After the build is completed, the static resources will be generated in the `dist` directory. You can upload the files in the dist folder to the server, or you can use hosting platforms like Vercel to import and deploy automatically.

**⚙️ Docker Deployment**

Installation and configuration of Docker will not be explained here, please resolve it by yourself.

```bash
# Build
docker build -t home .

# Run
docker run -p 12445:12445 -d home
```

**⚙️ Vercel Deployment**

Other deployment platforms are roughly the same, and will not be explained here.

Click Fork in the upper right corner of this repository to copy it to your GitHub account.

Copy `/.env.example` file and rename it to `.env` (important)

Modify the configuration in the `.env` file as needed

Click Deploy to successfully deploy.

**Website Links**

You can customize the website links in `src/assets/siteLinks.json`:

```json
{
  "icon": "Blog",
  "name": "Blog",
  "link": "https://blog.tanziran.us.kg/"
}
```

The icon for the website link can be added in `src/components/Links/index.vue`:

```javascript
// Go to https://www.xicons.org to select and introduce here
// Here is the introduction of the fa type
import {
  Link,
  Blog,
  CompactDisc,
  Cloud,
  Compass,
  Book,
  Fire,
  LaptopCode,
} from "@vicons/fa";

// Website link icons
const siteIcon = {
  Blog,
  Cloud,
  CompactDisc,
  Compass,
  Book,
  Fire,
  LaptopCode,
};
```

**Social Links**

You can customize social links in `src/assets/socialLinks.json`.

**Weather**

Weather and region acquisition requires relevant API from Amap Open Platform.

Go to the Amap Open Platform console to create a Key for a Web service type, and fill the Key into the `VITE_WEATHER_KEY` in `.env`.

You can also replace it with other methods.

**Music**

This project uses the Aplayer music player based on MetingJS, which can quickly customize playlists.

*Only supports Mainland China*

Change the song-related parameters in the `.env` file to customize the playlist:

```bash
# Song API address
VITE_SONG_API="https://api-meting.imsyy.top"

# Song server (netease-NetEase Cloud Music, tencent-QQ Music)
VITE_SONG_SERVER="netease"

# Play type (song-Song, playlist-Playlist, album-Album, search-Search, artist-Artist)
VITE_SONG_TYPE="playlist"

# Play ID
VITE_SONG_ID="7452421335"
```

**Fonts**

The HarmonyOS Sans open-source font is now used, with font splitting to improve loading speed.

Since the anti-leech feature of this site's CDN is enabled, non-site domain names cannot access it. Please change the font introduction link to the following content, otherwise, the custom font will be invalid:

[https://s1.hdslb.com/bfs/static/jinkela/long/font/regular.css](https://s1.hdslb.com/bfs/static/jinkela/long/font/regular.css)

**Website Icons and Backgrounds**

**Website Background**

You can modify the website background in `public/images`.

If you want to add more local pictures as the website background, you can rename the pictures to `background+number` and modify them in `src/components/Background/index.vue`:

```javascript
if (type == 0) {
  // Modify the first number after Math.random() here to the number of pictures
  bgUrl.value = `/images/background${Math.floor(Math.random() * 10 + 1)}.webp`;
}
```

**Website Icons**

You can modify the website icons in `public/images/icon`.

**Technology Stack**

- Vue
- Vite
- Pinia
- IconPark
- xicons
- Aplayer

**APIs**

- Han Xiaohan WebAPI interface
- Botian API
- Mr. JiaoShu API
- Amap Open Platform
