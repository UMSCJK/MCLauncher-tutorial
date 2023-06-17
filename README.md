# MCLauncher使用教程
---
![MCLauncher](/img/mclauncher.png)
## 前提
- 拥有Minecraft for Windows正版
- 使用之前备份好`com.mojang`文件夹
  - 路径：
    `"%LocalAppData%\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang"`
  - 进入方法：按住键盘上的`Win+R`打开“运行”对话框，在输入框中粘贴上述路径，然后点击`确定`或按下`回车`键<br>
    ![run-com.mojang](/img/run-com.mojang.png)
  - 备份方法：复制到任何其他地方，如桌面等
  - 还原：原路返回
- 软件操作存在一定风险，电脑小白**务必**按照教程操作
- 已启用Windows开发人员模式 (按住键盘上的`Win+I`打开`Windows设置-更新与安全-开发者选项-开发人员模式`，Windows 11中在`Windows设置-隐私与安全性-开发人员模式`)<br>
  ![dev21h2](/img/dev21h2.png)
  上图截取自Windows 10 LTSC 2021 (21H2)，设置界面也有可能是下图这样的：截取自Windows 10 LTSC 2019 (1809) 和Windows 11 (22H2)<br>
  ![dev1809](/img/dev1809.png)<br>
  ![dev22h2](/img/dev22h2.png)

---
## 软件下载
### MCLauncher
  - 官方GitHub：https://github.com/MCMrARM/mc-w10-version-launcher/releases
  - 无法正常访问GitHub：https://kgithub.com/MCMrARM/mc-w10-version-launcher/releases
### 压缩解压软件
  - 7-Zip (必装)：https://sparanoid.com/lab/7z/
  - Bandizip (推荐日常使用)：https://www.bandisoft.com/bandizip/
### 加速器
  - Watt Toolkit (Steam++)：https://steampp.net/
    作者对加速器软件了解不多，故不多做推荐，但Watt Toolkit经验证在作者的环境下确实好用
---
## 安装
### 注意事项
  - 下文中出现的所有`Minecraft`都指Minecraft for Windows (Windows UWP端)
  - 下文中出现的所有“根目录”都指`MCLauncher.exe`所在的文件夹，如：`\MCLauncher.exe`
  - 下文中全部以反斜杠`\`开头的路径，都是指该路径直接存在于根目录下
  - 根目录的绝对路径中不能出现中文，如：`"D:\Programs\MCLauncher"`、`"C:\Program Files\MCLauncher"`，根目录的名称不一定要是`MCLauncher`
  - 任何UWP软件，包括Minecraft的安装目录下都会有一个名为`AppxManifest.xml`的文件，本教程中会利用此文件帮助理解各种目录结构
  - 如果遇到不熟悉的操作，文末的问题部分也许能帮到你
### 【不推荐】MCLauncher自带下载
  - 安装路径：`\<版本号>\`，如：存在文件`\1.20.0.1\AppxManifest.xml`
  - 下载慢或卡死就直接放弃
  - 如果MCLauncher启动非常慢，最后弹出一个报错弹窗：<br>
    ![error](/img/error.png)
    - 原因：版本列表下载失败，服务器在国外，无法正常访问属于正常现象
    - 解决办法：不管，直接点确定
  - 如果版本列表加载不出来而又需要它
    1. 下载安装运行Watt Toolkit (Steam++改名，如果不使用加速器会有很大概率加载不出下一步的网页)
    2. 打开网页：https://raw.githubusercontent.com/MCMrARM/mc-w10-versiondb/master/versions.json.min
    3. `Ctrl+A`, `Ctrl+C`复制所有内容
    4. 在根目录打开或新建`versions.json`文件
    5. 打开`versions.json`文件 (记事本、Visual Studio Code都可以)
    6. `Ctrl+A`, `Ctrl+V`粘贴刚才从网页复制的内容
    7. 刷新MCLauncher
        - 方法一：MCLauncher主界面顶部`菜单栏-Options-Refresh version list`
        - 方法二：重启MCLaucher
### 手动下载并导入appx安装包
  1. 下载appx
      - https://mcappx.com
          - (如果下载缓慢可以更换数据库重新下载，如果下载文件的后缀不是appx而是zip也不影响在本教程中的使用，当然你也可以把后缀名改成appx)
      - https://mc.minebbs.com/#/windows
      - https://store.rg-adguard.net/
          - 该网站仅能获取最新版本的安装包，当你想下载刚发布的新版本但没在上面两个网站中找到时适合使用
          - 打开网页后在中间的输入框内粘贴`https://www.microsoft.com/store/productId/9NBLGGH2JHXJ`，然后点击`✔`，加载一会后便可看到一些appx文件，在文件名以`Microsoft.MinecraftUWP_`开头、以`.appx`结尾的几个文件中找到你需要的版本，点击文件名即可开始下载 (大部分人电脑的CPU和Windows系统都兼容64位版本，若兼容)
  2. 解压安装
      - 方法一：软件内导入
        - MCLauncher主界面顶部`菜单栏-File-Import APPX file`
        - 选择appx安装包并打开
      - 方法二：手动解压
        - appx打开方式
          1. 后缀名改为`zip`
          2. 使用压缩软件打开，如7-Zip、Bandizip等
        - 解压路径：`"\imported_versions\<版本号>"`，该文件夹的名称决定了MCLauncher主界面Imported选项卡中显示的版本名称
          例：存在文件`"\imported_versions\1.20.0.1\AppxManifest.xml"`
          (不存在的文件夹需要自己创建)
        - 注意：解压完后MCLauncher软件内并不会立刻显示出导入的版本，需要点击主界面顶部的`菜单栏-Options-Refresh version list`按钮刷新一下版本列表
  3. 删除p7x文件
    路径：`"\imported_versions\<版本号>\AppxSignature.p7x"`
    否则导入的MC版本无法正常启动
---
## 光影
### 备份原版渲染器文件夹
  1. 安装7-Zip，把`7z.exe`和`7z.dll`复制到`"C:\Windows\System32"`
    (7-Zip默认安装路径：`"C:\Program Files\7-Zip"`)
  2. 创建`backup.bat`，代码：

    7z a materials_original.zip .\materials\**
    exit

  3. 作用：备份`materials`文件夹
    原理：利用7-Zip命令行版把`materials`文件夹压缩成`materials_original.zip`
### 替换光影
  1. 下载光影
      - B站搜索 https://search.bilibili.com
      - 必应高级搜索 https://bing.com
        - 技巧：
      - 苦力怕论坛 https://klpbbs.com
      - MCPEDL https://mcpedl.com
      - 渲染龙光影列表
        - GitHub：
        https://github.com/DominoKorean/Render-dragon-shader-list
        - 如果打不开：
        https://kgithub.com/DominoKorean/Render-dragon-shader-list
        打开此网页后点击一个光影版本号即可开始下载，如果下载没有立刻开始可以配合加速器使用 (如Watt Toolkit等)
  2. 光影版本和MC版本的兼容情况<br>
      ![table](/img/table.png)
  3. 替换完成后重启游戏即可生效
### 还原渲染器文件夹
  1. 创建`reset.bat`，代码：
   
    rmdir /S /Q "materials"
    md "materials"
    7z x "materials_original.zip" -o".\materials"
    exit

  2. 作用：从`materials_original.zip`还原`materials`文件夹
    原理：删除`materials`文件夹，创建新的`materials`文件夹，
    将`materials_original.zip`中的文件解压到新的`materials`文件夹
---
## 问题
### 如何创建bat批处理脚本？
  1. 在Windows资源管理器中打开需要放置bat的文件夹
  2. 在空白处`右键-新建-文本文档`
  3. 打开创建的文本文档 (用记事本或者任何文本编辑软件都可以)
  4. 把需要的代码复制粘贴进去
  5. 保存文件
      - 按键盘上的`Ctrl`和`S`保存
      - 软件`菜单栏-文件-保存`
  6. 关闭你的文本编辑软件
  7. bat批处理脚本创建完毕，已经可以运行了
### 提示程序包依赖于一个找不到的框架怎么办？
  报错信息如图 (可能会有部分版本号不一样)<br>
  ![frame](/img/frame.png)
  1. 打开网页https://store.rg-adguard.net/
  2. 打开网页后在中间的输入框内粘贴`https://www.microsoft.com/store/productId/9NBLGGH2JHXJ`，然后点击`✔`，加载一会后便可看到一些appx文件，如果加载不出来，请尝试更改右侧表单控件的选项 (默认是`RP`)
  3. 找到以`Microsoft.Services.Store.Engagement_`和`Microsoft.VCLibs.`开头、以`.appx`结尾的文件 (一共是6个)，再在这些文件中找到匹配你系统位数的两个，如：`Microsoft.Services.Store.Engagement_10.0.19011.0_x64__8wekyb3d8bbwe.appx`和`Microsoft.VCLibs.140.00_14.0.32530.0_x64__8wekyb3d8bbwe.appx`
  4. 点击文件名即可开始下载，如果出现`无法安全下载`的提示，请选择保留 (大部分人电脑的CPU和Windows系统都兼容64位版本，若兼容)
  5. 安装两个appx应用包 (在此提供一种通用的方法)
      1. 打开PowerShell
          - 方法一：按住键盘上的`Win+R`打开“运行”对话框，在输入框中输入`PowerShell`，然后点击`确定`或按下`回车`键<br>
          ![run-powershell](/img/run-powershell.png)
          - 方法二：按住键盘上的`Shift`键并在资源管理器文件夹窗口内的空白处点击鼠标右键或按动键盘上的`Shift+F10`，点击`在此处打开 PowerShell 窗口`或按下键盘上的`S`键<br>
          ![shift-r-click](/img/shift_r_click.png)
          - 方法三：在`开始菜单`搜索`PowerShell`并打开`Windows PowerShell`应用程序
          - 方法四：按住键盘上的`Win+X`，然后按下`A`键打开PowerShell
            - 打开的也有可能是命令提示符 (cmd.exe)，可以在`Windows设置-个性化-任务栏-当我右键……`更改`Win+X高级用户功能菜单`中显示的此部分内容，前提是你的Windows系统需要被激活
       2. 在打开的PowerShell命令行窗口中输入`Add-AppxPackage`和一个`空格`，接着把一个刚才下载的appx应用包拖放到命令行窗口，然后按下`回车`键以开始安装
       3. 重复以上步骤安装另一个appx应用包
  6. 再次尝试从MCLauncher启动游戏版本，如果还是无法启动，可能是因为你的系统内部版本太低或其他未知原因
### 提示程序包与设备不兼容怎么办？
  报错信息如图 (可能会有部分版本号不一样)<br>
  ![version](/img/version.png)
  1. 假设你想要解决兼容性问题的游戏版本安装在`"\imported_versions\1.20.0.1\"`，即存在文件`"\imported_versions\1.20.0.1\AppxManifest.xml"`
  2. 打开`AppxManifest.xml`文件 (用记事本或者任何文本编辑软件都可以)
  3. 修改文件中指定的最低兼容系统内部版本 (也可以称为内核版本)
     1. 找到文件中的`<Dependencies>`标签，它一般在文件的第18行
     2. 在其下面一行，也就是大部分时候的第19行，找到`MinVersion="10.0.19041.0"`，在较老的MC版本中这里的版本不一定是10.0.19041.0，但是不影响操作
     3. 把`19041`改成你的系统内部版本或者直接改成`10240` (这是Windows 10第一个正式发布版本的内部版本号)，其实只要小于等于你使用的Windows内核版本就行
  4. 保存文件
      - 按键盘上的`Ctrl`和`S`保存
      - 软件`菜单栏-文件-保存`
  5. 关闭你的文本编辑软件
  6. 再次尝试从MCLauncher启动你想要解决兼容性问题的游戏版本，如果还是无法启动，可能是因为你的系统内部版本确实太低了
### 我如何知道自己的Windows系统内部版本以及CPU和系统位数？
  1. 在此提供一种通用的方法
  2. 打开`DirectX诊断工具`(`dxdiag.exe`)
    按住键盘上的`Win+R`打开“运行”对话框，在输入框中输入`dxdiag`，然后点击`确定`或按下`回车`键<br>
    ![run-dxdiag](/img/run-dxdiag.png)
  3. 等待`DirectX诊断工具`启动，可能需要等待一小段时间
  4. `DirectX诊断工具`启动后切换到`系统`选项卡就能看到那些信息了
---
## 作者
[UMSC服务器](https://www.bilibili.com/video/BV19G4y1a7kg/ "宣传片")技术部长、前服主、[资源群](https://qm.qq.com/cgi-bin/qm/qr?k=Q-GMt1eguQmItZvu4PNaO9-63eFEP5Fb&jump_from=webapi&authKey=/5HkOWC7pc4S8Lk56s7s23zwqg7dg/sCyamdzgNMyMzktr8nBrkxSKcQEXxYQfW "QQ")群主 [`Cao Junkai6765`](https://space.bilibili.com/514740814 "B站主页") (脾气不太好)
部分灵感来自 [【MCBE-win10】版本切换与多开介绍（多开略讲）](https://www.bilibili.com/read/cv12731766 "B站专栏")