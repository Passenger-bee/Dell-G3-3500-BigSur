---
typora-root-url: ./README.assets
---



# Dell-G3-3500

Hackintosh 

**引导器版本：OpenCore 0.6.5（Debug版本）**

**系统版本：BigSur 11.1**

**#2023.3.10 更新 ，经过很长时间的折腾，我终于发现了自己是个完美主义者，而这份EFI也不负我的期望达到了白苹果98%的功能，之前的那份readme也只是粗略的写了一份，今天完善一下分享出来供大家参考#**

下面是我的笔记本配置图：

<img src="/Users/harrypotter/Documents/GitHub/Dell-G3-3500/README.assets/硬件参数.png" style="zoom: 67%;" />

*配置如上图所示：*其中机器出场自带的三星Pm991会导致内核崩溃，已更换为西部数据的SN750。为了更好地体验白苹果的网络功能，将网卡更换为博通94352z，**但是有一个重要的一个问题：这个网卡有可能会和自带的以太网卡驱动两者产生冲突，有可能需要禁用以太网卡的驱动。**

接下来是我的硬盘分区图：

![分区图](/Users/harrypotter/Documents/GitHub/Dell-G3-3500/README.assets/分区图.png)

（当时对整个硬盘全部格式化，ESP分区放在最前面，用U盘引导进系统MacOS分区为第一分区，win为第二个分区，每个都分了120GB的空间）

 以下是实现的功能：

#    **首先是最关心的几个问题：**

**CPU/电源管理：**应该是完美电源控制了，CpuFriend.kext个人不建议使用，会导致机器大量发热。

<img src="/Users/harrypotter/Documents/GitHub/Dell-G3-3500/README.assets/about.png" alt="about" style="zoom:50%;" />

<img src="/Users/harrypotter/Documents/GitHub/Dell-G3-3500/README.assets/电池-电源适配器.png" alt="电池-电源适配器" style="zoom:50%;" />

<img src="/Users/harrypotter/Documents/GitHub/Dell-G3-3500/README.assets/电池.png" alt="电池" style="zoom: 50%;" />

<img src="/Users/harrypotter/Documents/GitHub/Dell-G3-3500/README.assets/电源.png" alt="电源" style="zoom: 33%;" />

**显卡/显示器：**已开启HiDPi，使用“one-key-hidpi” **分辨率为1424x802**，另外一个问题是：<u>使用1680x945是最完美的分辨率，但会造成睡眠再次唤醒画面会变成原来的1/4，而且页面会很卡顿。</u>显卡GTX1650Ti已禁用，无法驱动。

<img src="/Users/harrypotter/Documents/GitHub/Dell-G3-3500/README.assets/图形卡-显示器.png" alt="图形卡-显示器" style="zoom:50%;" />

<img src="/Users/harrypotter/Documents/GitHub/Dell-G3-3500/README.assets/显示器.png" alt="显示器" style="zoom:50%;" />

**声音**：内置扬声器正常使用，但是内置麦克风、3.5mm音频查口无法使用（前者是因为intel智音技术无解，后者是声卡Codec好像比较乱，已从linux中提取出Codec，想研究的可以研究一下。）另外添加了开机音响，但是不知道为何没响。

 一个解决方案是：连接蓝牙音响，使用蓝牙音箱上的麦克风（但是对我而言麦克风用处很小）

<img src="/Users/harrypotter/Documents/GitHub/Dell-G3-3500/README.assets/输出音量.png" alt="输出音量" style="zoom:50%;" />

**最主要的网络/蓝牙：**更换为苹果原装网卡以后（注意免驱，不需要添加Brcmpatch这类驱动文件），wifi、以太网、隔空投送、接力、随航、用AppleWatch解锁🔓一切如白苹果一般丝滑。

<img src="/Users/harrypotter/Documents/GitHub/Dell-G3-3500/README.assets/wifi.png" alt="wifi" style="zoom:50%;" />

<img src="/Users/harrypotter/Documents/GitHub/Dell-G3-3500/README.assets/蓝牙.png" alt="蓝牙" style="zoom:50%;" />

## **然后是其他琐碎项目：**

 **USB端口：**已映射两个usb2.0、 一个usb3.0、一个type-c口（由于没有设备没有测试），HDMI（直接连英伟达显卡，无解）

   **睡眠：**十分钟进入睡眠，唤醒敲两下键盘，AppleWatch解锁丝滑无比。

   **背光**：屏幕调节亮度不是很丝滑，键盘调节两档就像windows里那样。

**触控板：**就和白苹果一样，但是pc触控板手感极差。

**SD读卡器：**正常

**摄像头：**正常

**iMessage、FaceTime：**正常

**AppleID、AppStore：**正常，smbios已设为MacBookPro15.1

**启动磁盘：**可以从win启动到mac，相反mac也可以启动到win。

 

**没有驱动的总结为以下：**

~~1.HDMI接口~~

~~2.内置麦克风~~

~~3.耳机3.5mm接口~~

~~4.Type-C没有进行测试（不知道能否可以进行外接显示器使用）~~



### 最后是一些杂语：

  折腾了很长时间，就为了这个机器更加完美一点，可是等到一切都很完美的时候，就想稳稳定定用着。系统如今已出到Ventura13.2.1了，但是最好不要更新系统，因为不知道会有什么bug...嗯，没什么好说的了，那就祝大家有美好的一天，Good Luck！

  有问题了可以问我，能解决了帮你解决。

 

