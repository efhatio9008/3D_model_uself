OFFSHORE HOLOGRAM WEBSITE V0.1
==============================

文件：
  index.html                 网站主页面（全息、原始、线框三种模式）
  offshore-platform.glb      Tripo Studio 导出原始石油钻井平台模型
  start_website.bat          Windows 本地启动器（需要安装 Python，并需要联网加载 Three.js）

本地预览（Windows）：
  1. 解压整个 ZIP（不要只打开 ZIP 里的 HTML）。
  2. 双击 start_website.bat。Windows 如果询问网络防火墙权限，仅需本机访问。
  3. 浏览器打开 http://127.0.0.1:8000
  4. 等模型载入完成（约 72 MB）。
  5. 蓝色全息按钮 = 本网站重新渲染的青绿色效果；不是 GLB 自带的全息材质。
  6. 原始按钮 = Tripo GLB 原始材质；线框按钮 = 简化抽样的发光线条。

如果提示端口 8000 已被占用：
  请关闭之前的本地服务，或在命令提示符中改用 python -m http.server 8001，
  然后打开 http://127.0.0.1:8001 。

交互：
  鼠标左键拖动旋转，滚轮缩放；手机一指旋转，两指缩放；自动旋转开/关；重置视角。

GitHub Pages：
  将 index.html 和 offshore-platform.glb 上传同一个仓库根目录；
  在仓库 Settings -> Pages 配置从 main 分支根目录部署。
  注意 GLB 文件接近 69 MiB，GitHub 单文件常规上传和网页上传可能存在限制；
  使用 Git 进行推送通常更稳妥，且模型较大，移动网络加载较慢。

设计说明：
  - 已确认模型没有骨骼和动画：工业建筑展示不需要 rig。
  - GLB 有原始贴图，但没有专用 Hologram Style 材质；网页效果为近似重建。
  - 为控制超高面数模型的渲染压力，全息线框使用部分三角形抽样，
    并非 Tripo 原始视图的逐像素复制；后续可根据画面再调色与密度。
  - 网页依赖 Three.js CDN，首次使用时需要互联网。
