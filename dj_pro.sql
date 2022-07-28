#设置客户端连接服务器端的编码
set names utf8;
#丢弃数据库，如果存在
drop database if exists dj_pro;
#创建新的数据库，设置存储字符的编码
create database dj_pro charset=utf8;
#进入数据库
use dj_pro;
#创建分类表
#云台列表
create table Cloud(
  cid int primary key auto_increment,
  structure varchar(200) ,  #结构
  run varchar(100),      #可控转动范围
  stable varchar(30),  #稳定系统
  speed varchar(30),  #速度
  deg varchar(30) #角度
  
);
insert into Cloud values
(1,
'俯仰：-135° 至 80°,横滚：-135° 至 45°,平移：-30° 至 30°',
'俯仰：-90° 至 60°,横滚：-90° 或 0°',
'3 轴机械增稳云台（俯仰、横滚、平移）',
'100°/s',
'±0.01°'
),
(null,
'俯仰：-135° 至 100°,横滚：-45° 至 45°,平移：-27° 至 27°',
'俯仰：-90° 至35°,横滚：-5° 或5°',
'3 轴机械增稳云台（俯仰、横滚、平移）',
'100°/s',
'±0.07°'
),
(null,
'俯仰：-110° 至 35°,横滚：-35° 至 35°,平移：-20° 至 20°',
'俯仰：-90° 至0°,-90° 至 20°（扩展）',
'3 轴机械增稳云台（俯仰、横滚、偏航）',
'100°/s',
'±0.01°'
),
(null,
'俯仰：-90° 至 0°（默认设置）,-90° 至 20°（扩展）,偏航：-30° 至 30°',
'俯仰：-90° 至 30°,横滚：-5° 或5°0° 或 90°（横拍及竖拍模式）',
'3 轴机械增稳云台（俯仰、横滚、平移）',
'120°/s',
'±0.02°'
),
(null,
'俯仰：-90° 至 30°,偏航：-30° 至 30°, ',
'俯仰：,-90° 至 30°',
'3 轴机械增稳云台（俯仰、横滚、平移）',
'120°/s',
'±0.02°'
),
(null,
'俯仰：-80° 至 0,偏航：-17° 至 17°, ',
'俯仰：,-85° 至 0°',
'2 轴机械增稳云台（俯仰、横滚）',
'120°/s',
'±0.03°'
);



#新建表格相机

create table Camera(
  caid int primary key auto_increment,
  sensor varchar(200) ,  #影响传感器
  lens varchar(100),      #镜头
  los varchar(100),  #ISO 范围
  speed varchar(30),  #快门速度
  maxsize varchar(100) ,#角度
  photo_mode  varchar(300), #照片拍摄模式
  resolution  varchar(500),   #录像分辨率
  video_rate  varchar(20), #视频最大码率
  fill varchar(50), #文件系统
  img varchar(50), #图片格式
  video_format varchar(50) #视频格式
);

insert into Camera values
(1,

'1/2.3 英寸 CMOS,有效像素：1200 万',

'视角：83°,等效焦距：24 mm,光圈：f/2.8,对焦点：1 m 至无穷远',

'视频：,100 至 3200（自动）,100 至 3200（手动）,照片：,100 至 3200（自动）,100 至 3200（手动）',

'电子快门：4 至 1/8000 s',

'4:3 宽高比：4000×3000,16:9 宽高比：4000×2250',

'单张拍摄：1200 万像素,多张连拍：不支持,自动包围曝光（AEB）：1200 万像素,3 张 @0.7EV 步长,定时拍摄：1200 万像素,JEPG：2/3/5/7/10/15/20/30/60 秒,RAW：5/7/10/15/20/30/60 秒,智能拍摄：不支持,竖拍全景：不支持,广角全景（3x3）：4819x3739,180° 全景（1x7）：7069x1352,球形全景（3×8+1）：4096x2048,（180° 和广角照片尺寸会根据不同的拍摄情况会有轻微变动）',

'4K: 3840×2160,24/25/30fps,2.7K: 2720×1530,24/25/30/48/50/60fps,FHD: 1920×1080,24/25/30/48/50/60fps',

'100 Mbps',

'FAT32 (≤ 32 GB),exFAT (> 32 GB)',

'JPEG / DNG (RAW)',

'MP4 (H.264/MPEG-4 AVC)'

),
(null,

'1 英寸 CMOS,
有效像素：2000 万',

'视角：84°,
等效焦距：24 mm,
光圈：f/2.8 - f/11,
对焦点：1 m 至无穷远（带自动对焦）',

'视频：,
100 至 3200（自动）,
100 至 6400（手动）,

照片：,
100 至 3200（自动）,
100 至 12800（手动）',

'电子快门：8 至 1/8000 s,
机械快门：8 至 1/2000 s',

'5472×3648',

'单张拍摄：2000 万像素,
多张连拍：2000 万像素，3/5/7/10/14 张,
自动包围曝光（AEB）：2000 万像素，3/5 张 @0.7EV 步长,
定时拍摄：2000 万像素（间隔：2/3/5/7/10/15/20/30/60 秒）,
智能拍摄：不支持,
竖拍全景（3×1）：不支持,
广角全景（3×3）：不支持,
180°全景（3×7）：不支持,
球形全景（3×8+1）：不支持',

'H.265,

C4K: 4096×2160,
24/25/30fps,
@100 Mbps,

4K: 3840×2160,
24/25/30fps,
@100 Mbps,

2.7K: 2720×1530,
24/25/30fps,
@65 Mbps,

2.7K: 2720×1530,
48/50/60fps,
@80 Mbps,

FHD: 1920×1080,
24/25/30fps,
@50 Mbps,

FHD: 1920×1080,
48/50/60fps,
@65 Mbps,

FHD: 1920×1080,
120fps,
@100 Mbps,

HD: 1280×720,
24/25/30fps,
@25 Mbps,

HD: 1280×720,
48/50/60fps,
@35 Mbps,

HD: 1280×720,
120fps,
@60 Mbps,

H.264,

C4K: 4096×2160,
24/25/30/48/50/60fps,
@100 Mbps,

4K: 3840×2160,
24/25/30/48/50/60fps,
@100 Mbps,

2.7K: 2720×1530,
24/25/30fps,
@80 Mbps,

2.7K: 2720×1530,
48/50/60fps,
@100 Mbps,

FHD: 1920×1080,
24/25/30fps,
@60 Mbps,

FHD: 1920×1080,
48/50/60fps,
@80 Mbps,

FHD: 1920×1080,
120fps,
@100 Mbps,

HD: 1280×720,
24/25/30fps,
@30 Mbps,

HD: 1280×720,
48/50/60fps,
@45 Mbps,

HD: 1280×720,
120fps,
@80 Mbps',

'100 Mbps',

'FAT32 (≤ 32 GB),

exFAT (> 32 GB)',

'JPEG / DNG (RAW)',

'MP4 / MOV (H.264/AVC, H.265/HEVC）'

),
(null,

'1/2.3 英寸 CMOS,有效像素：1200 万',

'视角：81.9°,
等效焦距：25 mm,
光圈：f/2.6,
对焦点：2 m 至无穷远',

'视频：,
100 至 3200（自动）,
100 至 3200（手动）,

照片：,
100 至 1600（自动）,
100 至 1600（手动）',

'电子快门：4 至 1/8000 s',

'3968×2976',

'单张拍摄：1200 万像素,
多张连拍：1200 万像素，3 张,
自动包围曝光（AEB）：1200 万像素，3 张 @0.7EV 步长,
定时拍摄：1200 万像素（间隔：2/3/5/7/10/15/20/30/60 秒）,
智能拍摄：不支持,
竖拍全景（3×1）：支持,
广角全景（3×3）：支持,
180° 全景（3×7）：支持,
球形全景（3×8+1）：不支持',

'1920×1080,
30fps',

'24 Mbps',

'FAT32',

'JPEG',

'MP4 (H.264/MPEG-4 AVC)'

),
(null,

'1 英寸 CMOS,
有效像素：2000 万',

'视角：77 °,
等效焦距：28 mm,
光圈：f/2.8 - f/11,
对焦点：1 m 至无穷远（带自动对焦）',

'视频：,
100 至 6400,

照片：,
100 至 3200（自动）,
100 至 12800（手动）',

'电子快门：8 至 1/8000 s',

'5427×3648',

'单张拍摄：2000 万像素,
多张连拍：2000 万像素,
自动包围曝光（AEB）：2000 万像素，3/5 张 @0.7EV 步长,
定时拍摄：2000 万像素,
JPEG：2/3/5/7/10/15/20/30/60 秒,
RAW：5/7/10/15/20/30/60 秒,
智能拍摄：不支持,
竖拍全景（3×1）：3328×8000,
广角全景（3×3）：8000×6144,
180° 全景（3×7）：8192×3500,
球形全景（3×8+1）：8192×4096',

'4K: 3840×2160,
24/25/30fps,

2.7K: 2688x1512,
24/25/30/48/50/60fps,

FHD: 1920×1080,
24/25/30/48/50/60/120fps',

'100 Mbps',

'FAT32 (≤ 32 GB),

exFAT (> 32 GB)',

'JPEG / DNG (RAW)',

'MP4 / MOV (H.264/MPEG-4 AVC, H.265/HEVC)'

),
(null,

'1/2.3 英寸 CMOS,
有效像素：1200 万',

'视角：83°,
等效焦距：24 mm,
光圈：f/2.8,
对焦点：1 m 至无穷远',

'视频：,
100 至 3200（自动）,
100 至 3200（手动）,

照片：,
100 至 1600（自动）,
100 至 3200（手动）,

照片：,
100 至 1600（自动）,
100 至 1600（手动）',

'电子快门：4 至 1/8000 s',

'4:3 宽高比：4000×3000,
16:9 宽高比：4000×2250',

'单张拍摄：1200 万像素,
多张连拍：不支持,
自动包围曝光 (AEB)：不支持,
定时拍摄：1200 万像素,
JEPG：2/3/5/7/10/15/20/30/60 秒,
智能拍摄：不支持,
竖拍全景：不支持,
广角全景：不支持,
180° 全景：不支持,
球形全景：不支持',

'2.7K: 2720x1530,
25/30fps,

FHD: 1920×1080,
25/30/50/60fps',

'40 Mbps',

'FAT32 (≤ 32 GB),

exFAT (> 32 GB)',

'JPEG',

'MP4 (H.264/MPEG-4 AVC)'

),
(null,

'1/2.3 英寸 CMOS,
有效像素：1235 万',

'视角：78.8°,
等效焦距：26 mm,
光圈：f/2.2,
对焦点：0.5 m 至无穷远（带自动对焦）',

'视频：,
100 至 3200（自动）,
100 至 3200（手动）,

照片：,
100 至 1600（自动）,
100 至 1600（手动）',

'电子快门：8 至 1/8000 s',

'4000×3000',

'单张拍摄：1200 万像素,
多张连拍：1200 万像素，3/5/7 张,
自动包围曝光（AEB）：1200 万像素，3 张 @0.7EV 步长,
定时拍摄：1200 万像素（间隔：2/3/5/7/10/15/20/30/60 秒）,
智能拍摄：不支持,
竖拍全景（3×1）：不支持,
广角全景（3×3）：不支持,
180° 全景（3×7）：不支持,
球形全景（3×8+1）：不支持',

'C4K: 4096×2160,
24fps,

4K: 3840×2160,
24/25/30fps,

2.7K: 2720x1530,
24/25/30fps,

FHD: 1920×1080,
24/25/30/48/50/60/96fps,

HD: 1280×720,
24/25/30/48/50/60/120fps',

'60 Mbps',

'FAT32 (≤ 32 GB),

exFAT (> 32 GB)',

'JPEG / DNG (RAW)',

'MP4 / MOV (H.264/MPEG-4 AVC)'

);

#智能飞行电池列表
create table Battery(
  bid int primary key auto_increment,
  energy varchar(200) ,  #能量
  volume varchar(100),      #容量
  voltage varchar(100),  #电压
  limit_voltage varchar(30),  #充电限制电压
  battery_type varchar(50),  #电池类型
  weight  varchar(100) ,#重量
  temperature  varchar(300), #充电环境温度
  max_power  varchar(500)  #最大充电功率
  
);
insert into Battery values
(1,

'59.29 Wh',

'3850 mAh',

'15.4 V',

'17.6 V',

'LiPo 4S',

'297 g',

'5℃ 至 40℃',

'80 W'

),
(null,

'17.28 Wh',

'2400 mAh',

'7.2 V',

'8.4 V',

'Li-ion 2S',

'100 g',

'5℃ 至 40℃',

'24 W'

),
(null,

'43.6 Wh',

'
3830 mAh',

'11.4 V',

'
13.05 V',

'LiPo 3S',

'240 g',

'5℃ 至 40℃',

'100 W'

),
(null,

'能量59.29 Wh',

'3850 mAh',

'15.4 V',

'17.6 V',

'LiPo 4S',

'297 g',

'5℃ 至 40℃',

'80 W'

),
(null,

'17.32 Wh',

'2250 mAh',

'7.7 V',

'8.8 V',

'LiPo 2S',

'82.5 g',

'5℃ 至 40℃',

'29 W'

),
(null,

'16.87 Wh',

'1480 mAh',

'1480 mAh',

'13.05 V',

'LiPo 3S',

'29 W',

'5℃ 至 40℃',

'29 W'

);

create table aerobat(
    aid  int  primary key auto_increment,
    Max_rising_speed  varchar(16),
    Max_descent_speed varchar(16),
    Max_horizontal_speed varchar(16),
    Max_takeoff_altitude  varchar(16),
    Max_flight_time    varchar(16),
    Max_hover_time     varchar(16),
    Max_endurance_mileage varchar(16),
    Max_wind_resistance_grade  varchar(16),
    Max_tilt_angle  varchar(16),
    Max_rotation  varchar(16),
    Working_Tem  varchar(16),
    Mhz  varchar(32),
    EIRP varchar(64),
    GNSS  varchar(32),
    Hover_accuracy varchar(64),
    Onboard_memory varchar(64)
); 

insert into aerobat values(1,
'5 m/s',
'5 m/s',
'16 m/s',
'4000 米,(搭载智能飞行电池),3000 米,(搭载长续航智能飞行电池)',
'34 分钟,(搭载智能飞行电池,21.6 km/h 匀速飞行),47 分钟,(搭载长续航智能飞行电池,21.6 km/h 匀速飞行)',
'30 分钟,(智能飞行电池)40 分钟,(长续航智能飞行电池)',

'18 公里,(智能飞行电池，无风环境 43.2 公里/小时匀速飞行)
25 公里,(长续航智能飞行电池，无风环境 43.2 公里/小时匀速飞行)',

'10.7 m/s(5 级风)',
'40°',
'250°/s',
'-10℃ 至 40℃',
'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,
FCC：< 26 dBm,
CE：< 20 dBm,
SRRC：< 20 dBm,
MIC：< 20 dBm,
5.8 GHz 频段,
FCC：< 26 dBm,
CE：< 14 dBm,
SRRC：< 26 dBm',


'GPS + Galileo + BeiDou',

'垂直：
±0.1 米（视觉定位正常工作时）,
±0.5 米（GNSS 正常工作时）,
水平：
±0.3 米（视觉定位正常工作时）,
±0.5 米 （高精度定位系统正常工作时）',

'-'

);

insert into aerobat values(null,
'6 m/s',
'6 m/s',
'68.4 m/s',
'5000 米',
'31 分钟,（无风环境 19.4 km/h 匀速飞行）',
'30 分钟',

'18.5 km',

'5 级风',
'35°',
'250°/s',
'0℃ 至 40℃',
'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,
FCC: ≤ 30 dBm,
CE: ≤ 20 dBm,
SRRC: ≤ 20 dBm,
MIC: ≤ 20 dBm,
5.8 GHz 频段,
FCC: ≤ 30 dBm,
CE: ≤ 14 dBm,
SRRC: ≤ 29 dBm',


'GPS+GLONASS+GALILEO',

'垂直：
±0.1 m （视觉定位正常工作时）,
±0.5 m （GNSS 正常工作时）,
水平：
±0.1 m （视觉定位正常工作时）,
±1.5 m （GNSS 正常工作时）',

'8 GB'

);




insert into aerobat values(null,
'8 m/s',
'6 m/s',
'21 m/s',
'6000 米',
'46 分钟,（无风环境 25 km/h 匀速飞行）',
'40 分钟',

'30 km',

'-',
'35°',
'200°/s',
'-10℃ 至 40℃',
'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,
FCC：<33 dBm,
CE：<20 dBm,
SRRC：<20 dBm,
MIC：<20 dBm,
5.8 GHz 频段,
FCC：<33 dBm,
CE：<14 dBm,
SRRC：<30 dBm',


'GPS + Galileo + BeiDou',

'垂直：
±0.1 米（视觉定位正常工作时）,
±0.5 米（GNSS 正常工作时）,
水平：
±0.3 米（视觉定位正常工作时）,
±0.5 米（高精度定位系统正常工作时）',

'Mavic 3：8GB（可用空间约 7.2GB）,
Mavic 3 Cine：1TB（可用空间约 934.8GB）'
);


insert into aerobat values(null,
'5 m/s',
'3.5 m/s',
'57.6 m/s',
'4000 米',
'31 分钟,（无风环境 17 km/h 匀速飞行）',
'29 分钟',

'16 km',

'5 级风',
'40°',
'250°/s',
'0℃ 至 40℃',
'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,
FCC: ≤ 26 dBm,
CE: ≤ 20 dBm,
SRRC: ≤ 20 dBm,
MIC: ≤ 20 dBm,
5.8 GHz 频段,
FCC: ≤ 26 dBm,
CE: ≤ 14 dBm,
SRRC: ≤ 26 dBm',


'GPS+GLONASS+GALILEO',

'
垂直：
±0.1 m（视觉定位正常工作时）,
±0.5 m（GPS 正常工作时）,
水平：
±0.3 m（视觉定位正常工作时）,
±1.5 m （GPS 正常工作时）',

'-'
);


insert into aerobat values(null,
'5 m/s',
'3 m/s',
'65 m/s',
'5000 米',
'27 分钟,（无风环境 25 km/h 匀速飞行）',
'24 分钟',

'13 km',

'5 级风',
'35°',
'300°/s',
'0℃ 至 40℃',
'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,
FCC: ≤ 26 dBm,
CE: ≤ 20 dBm,
SRRC: ≤ 20 dBm,
5.8 GHz 频段,
FCC: ≤ 23 dBm,
CE: ≤ 13 dBm,
SRRC: ≤ 23 dBm',


'GPS+GLONASS',

'垂直：
±0.1 m（视觉定位正常工作时）,
±0.5 m（GPS 正常工作时）,
水平：
±0.3 m（视觉定位正常工作时）,
±1.5 m（GPS 正常工作时）,',

'-'
);

insert into aerobat values(null,
'5 m/s',
'3 m/s',
'65 m/s',
'5000 米',
'30 分钟,（无风环境 25 km/h 匀速飞行）',
'27分钟',

'13 km',

'5 级风',
'35°',
'300°/s',
'0℃ 至 40℃',
'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,
FCC: ≤ 26 dBm,
CE: ≤ 20 dBm,
SRRC: ≤ 20 dBm,
5.8 GHz 频段,
FCC: ≤ 23 dBm,
CE: ≤ 13 dBm,
SRRC: ≤ 23 dBm',


'GPS+GLONASS',

'垂直：
±0.1 m（视觉定位正常工作时）,
±0.5 m（GPS 正常工作时）,
水平：
±0.3 m（视觉定位正常工作时）,
±1.5 m（GPS 正常工作时）,',

'-'
);








create table transmission(
    gid int  primary key auto_increment,
    img_scheme   varchar(64),
    Mobile_app   varchar(64),
    quality     varchar(64),
    Max_code_rate varchar(64),
    delayeds    varchar(64)
);


insert into transmission values(
    1,
    'DJI O3',
    'DJI Fly',
    '1080p/30fps',
    '飞行器 + 遥控器：18Mbps',
    '飞行器 + 遥控器：约 120 毫秒'
),
(
    null,
    'O3 图传 2.4 GHz/5.8 GHz 自动切换，向下兼容 OcuSync 2.0,
    4 天线 两发四收',

    'DJI Fly',

    '飞机 + 标配遥控器：
    1080p/30fps,
    飞机 + DJI 带屏遥控器：
    1080p/30fps',

    '44 Mbps（素材下载）,
     16 Mbps（实时图传）',

    '飞机+标配遥控器，码率为 12 Mbps 时，120 ms,
    飞机+DJI 带屏遥控器，码率为 12 Mbps 时，130 ms'
),
(
     null ,
    'O3+',
    'DJI Fly',

    '遥控器:1080p/30fps 或 1080p/60fps',

    '飞行器 + DJI RC-N1 遥控器：130 毫秒,
      飞行器 + DJI RC Pro：120 毫秒',

    '16Mbps'
),
(
    null ,
    'OcuSync 2.0',
    'DJI Fly',

    '遥控器：720p/30fps',

    '8 Mbps',

    '约 200 ms'
),
(
    null ,
    'OcuSync',
    'DJI GO 4',

    '遥控器：
    720p/30fps
    1080p/30fps,
    移动设备：
    720p/30fps,
    DJI 飞行眼镜,
    720p/30fps,
    720p/60fps,
    1080p/30fps',

    '12 Mbps',

    '160 至 170 ms'
),
(
    null ,
    'OcuSync',
    'DJI GO 4',

    '遥控器：
    720p/30fps,
    1080p/30fps,
    移动设备：,
    720p/30fps,
    DJI 飞行眼镜,
    720p/30fps,
    720p/60fps,
    1080p/30fps',

    '12 Mbps',

    '160 至 170 ms'
);

create table Params(
  pid int primary key auto_increment,
  datails varchar(200),
  price int,
  size1 varchar(30),
  size2 varchar(30),
  size3 varchar(30),
  weight1 varchar(10),
  maxtime varchar(10),
  photo1 varchar(10), 
  photo2 varchar(10), 
  photo3 varchar(10), 
  photo4 varchar(10),
  prevent varchar(50),
  control1 varchar(10),
  ranges1 varchar(50),
  range11 varchar(50),
  range12 varchar(50),
  range13 varchar(50),
  ranges2 varchar(50),
  ranges21 varchar(50),
  ranges22 varchar(50),
  ranges23 varchar(50)
);

insert into Params values
-- Row.1  DJI Mini 3 Pro
(null,
'低于249克 三向环境感知4K HDR视频可选 34/47分钟 续航无损 竖拍焦点跟随',
'4788',
'171*245*62mm',
'145*90*62mm',
'251*362*70mm',
'<249 g',
'47分钟',
'3 轴',
'1/1.3 英寸 CMOS',
'4K/60fps',
'4800 万像素',
'前方、后方、下方',
'遥控器',
'2.4 GHz 频段',
'FCC:12 km',
'CE:8 km',
'SRRC:8 km',
'5.8 GHz 频段',
'FCC:12 km',
'CE:8 km',
'SRRC:8 km'),


-- Row.2  DJI Air 2S
(null,
'1 英寸影像传感器 大师镜头 5.4K超高清视频 12公里全高清图传 四向环境感知 ADS-B',
'6499',
'183*253*77 mm',
'180*97*77 mm',
null,
'595 g',
'31分钟',
'3 轴',
'1 英寸 CMOS',
'5.4K/30fps',
'2000 万像素',
'前方、后方、下方',
'遥控器',
'2.4 GHz 频段',
'FCC:12 km',
'CE:8 km',
'SRRC:8 km',
'5.8 GHz 频段',
'FCC:12 km',
'CE:8 km',
'SRRC:8 km'),


-- Row.3 DJI Mavic 3
(null,
'4/3 CMOS 哈苏相机,Apple ProRes 422,HQ 15 公里高清图传,46 分钟飞行时间,全向避障,智能返航',
4999,
'183*253*77 mm',
'180*97*84 mm',
null,
'Mavic3: 895 g',
'46 分钟',
'3 轴',
'4/3 CMOS',
'5.1K/50fps',
'2000 万像素',
'全向双目视觉系统，辅以机身底部红外传感器',
'遥控器',
'2.4 GHz 频段',
'FCC:15 km',
'CE:8 km',
'SRRC:8 km',
'5.8 GHz 频段',
'FCC:15 km',
'CE:8 km',
'SRRC:8 km'),


-- Row.4  DJI Mini 2
(null,
'轻于 249 克,31 分钟续航,10 公里最远图传距离,4K/30fps 视频,4 倍变焦,智能拍摄模式',
'2899',
'159*203*56 mm',
'138*81*58 mm',
'245*289*56 mm',
'< 249 g',
'31 分钟',
'3 轴',
'1/2.3 英寸 CMOS',
'4K/30fps',
'1200 万像素',
'下方',
'遥控器',
'2.4 GHz 频段',
'FCC: 10 km',
'CE: 6 km',
'SRRC: 6 km',
'5.8 GHz 频段',
'FCC: 10 km',
'CE: 6 km',
'SRRC: 6 km'),


-- Row.5 御 Mavic Pro
(null,
'紧凑折叠4K,相机RAW,图片输出三轴机械增稳云台7 公里图传,27分钟续航',
null,
'30*244*85 mm',
'198*83*83 mm',
null,
'734g',
'27分钟',
'3轴',
'1/2.3 英寸 CMOS',
'4K/30fps',
'1200 万像素',
'前方、下方',
'遥控器',
'2.4 GHz 频段',
'FCC: 7 km',
'CE: 4 km',
'SRRC: 4 km',
null,
null,
null,
null),


-- Row.6  御 Mavic Pro 铂金版
(null,
'30 分钟续航,飞行更安静,紧凑折叠,4K 相机,RAW 图片输出,三轴机械增稳云台,7 公里图传',
null,
'305*244*85 mm',
'198*83*83 mm',
null,
'734 g',
'30 分钟',
'3 轴',
'1/2.3 英寸 CMOS',
'4K/30fps',
'1200 万像素',
'前方、下方',
'遥控器',
'2.4 GHz 频段',
'FCC: 7 km',
'CE: 4 km',
'SRRC: 4 km',
null,
null,
null,
null);


create table PerceptionSystem(
  pid int primary key auto_increment,
  front varchar(128),
  behind varchar(128),
  top varchar(128),
  bottom varchar(128),
  leftRight varchar(128),
  environment varchar(128)
);


insert into PerceptionSystem value
-- Row.1  DJI Mini 3 Pro
(1,
'精确测距范围：0.39 至 25 米,有效避障速度：飞行速度小于 10 米/秒,视角范围（FOV）：水平 106°，垂直 90°',

'精确测距范围：0.36 至 23.4 米,有效避障速度：飞行速度小于 10 米/秒,视角范围（FOV）：水平 58°，垂直 73°',

null,

'精确测距范围：0.15 至 9 米,精确悬停范围：0.5 至 12 米,视觉悬停范围：0.5 至 30 米,有效避障速度：飞行速度小于 3 米/秒,视角范围（FOV）：前后 104.8°，左右 87.6°',

null,

'前方、后方、下方,表面为漫反射材质，表面纹理丰富,反射率大于 20%（如水泥路面等）,光照条件充足（> 15 lux，室内日光灯正常照射环境）'),


-- Row.2  DJI Air 2S
(null,

'精确测距范围：0.38 至 23.8 m,有效避障速度：飞行速度 ≤ 15 m/s,视（FOV）：水平 72°，垂直 58°',

'精确测距范围：0.37 至 23.4 m,有效避障速度：飞行速度 ≤ 12 m/s,视角（FOV）：水平 57°，垂直 44°',

'精确测距范围：0.34 至 28.6 m,视角（FOV）：水平 63°，垂直 78°',

'ToF 有效测量高度：0.1 至 8 m,精确悬停范围：0.5 至 30 m,视觉悬停范围：0.5 至 60 m',

null,

'表面为漫反射材质，表面可辨别,反射率 > 20%（如墙面、树木、人等）,光照条件充足（> 15 lux，室内日光灯正常照射环境）'),

-- Row.3  DJI Mavic 3
(null,

'测距范围：0.5 至 20 米,可探测范围：0.5 至 200 米,有效避障速度：飞行速度不超过 15 m/s,视角（FOV）：水平 90°，垂直 103°',

'测距范围：0.5 至 16 米,有效避障速度：飞行速度不超过 14 m/s,视角（FOV）：水平 90°，垂直 103°',

'测距范围：0.2 至 10 米,有效避障速度：飞行速度不超过 6 m/s,视角（FOV）：前后 100°，左右 90°',

'测距范围：0.3 至 18 米,有效避障速度：飞行速度不超过 6 m/s,视角（FOV）：前后 130°，左右 160°',

'测距范围：0.5 至 25 米,有效避障速度：飞行速度不超过 15 m/s,视角（FOV）：水平 90°，垂直 85°',

'前、后、左、右、上方：,表面有丰富纹理，光照条件充足（> 15 lux，室內日光灯正常照射环境）,
下方：,
地面有丰富纹理，光照条件充足（> 15 lux，室內日光灯正常照射环境），表面为漫反射材质且反射率大于 20%（如墙面、树木、人等）'),


-- Row.4  DJI Mini 2
(null,

null,

null,

null,

'精确悬停范围：0.5 至 10 m',

null,

'下方：
表面为漫反射材质，表面纹理丰富,反射率 > 20%（如水泥路面等）,光照条件充足（> 15 lux，室内日光灯正常照射环境）'),


-- Row.5  御 Mavic Pro
(null,

'精确测距范围：0.7 至 15 m,可探测范围：0.7 至 30 m,有效避障速度：飞行速度 ≤ 10 m/s,视角（FOV）：水平 60°，垂直 ±27°',

null,

null,

'有效测量高度：0.3 至 13 m,精确悬停范围：0.3 至 13 m',

null,

'前方：
表面有丰富纹理，光照条件充足,（> 15 lux，室内日光灯正常照射环境）,下方：,地面有丰富纹理，光照条件充足,（> 15 lux，室内日光灯正常照射环境）'),


-- Row.6  御 Mavic Pro 铂金版
(null,

'精确测距范围：0.7 至 15 m,可探测范围：0.7 至 30 m,有效避障速度：飞行速度 ≤ 10 m/s,视角（FOV）：水平 60°，垂直 ±27°',

null,

null,

'有效测量高度：0.3 至 13 m,精确悬停范围：0.3 至 13 m',

null,

'前方：,
表面有丰富纹理，光照条件充足,（> 15 lux，室内日光灯正常照射环境）,下方：,地面有丰富纹理，光照条件充足,（> 15 lux，室内日光灯正常照射环境）');


create table RemoteControl(
  rid int primary key auto_increment,
  workingFrequency varchar(50),
  maxDistance varchar(256),
  workingTemperature varchar(64),
  ERIP varchar(256),
  BuiltInBattery varchar(128),
  workingCurrent varchar(256),
  mobileDevices varchar(128)
);


insert into RemoteControl value
-- Row.1  DJI Mini 3 Pro
(1,
'DJI RC 和 DJI RC-N1 遥控器：,2.4 GHz 和 5.8 GHz 频段[4]',

'DJI RC 和 DJI RC-N1 遥控器：,2.4 GHz 频段,FCC：12 km[3],CE：8 km,SRRC：8 km,MIC：8 km,5.8 GHz 频段[4],FCC：12 km[3],CE：8 km,SRRC：8 km',

'DJI RC 和 DJI RC-N1 遥控器：,-10℃ 至 40℃',

'DJI RC 和 DJI RC-N1 遥控器：,2.4 GHz 频段,FCC：< 26 dBm,CE：< 20 dBm,SRRC：< 20 dBm,MIC：< 20 dBm,5.8 GHz 频段[4],FCC：< 26 dBm,CE：< 14 dBm,SRRC：< 23 dBm',

'DJI RC 和 DJI RC-N1 遥控器：5200 mAh',

'DJI RC：,1200 mA@3.6 V,DJI RC-N1 遥控器：,1200 mA@3.6 V（连接 Android 设备时）,700 mA@3.6 V（连接 iOS 设备时）',

'DJI RC-N1 遥控器：180×86×10 mm（长×宽×高）'
),

-- Row.2  DJI Air 2S
(null,

'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,FCC: 12 km,CE: 8 km,MIC: 8 km,SRRC: 8 km,5.8 GHz 频段,FCC: 12 km,CE: 8 km,SRRC: 8 km',

'-10°C 至 40°C',

'2.4 GHz 频段,FCC: ≤ 26 dBm,CE: ≤ 20 dBm,SRRC: ≤ 20 dBm,MIC: ≤ 20 dBm,5.8 GHz 频段,FCC: ≤ 26 dBm,CE: ≤ 14 dBm,SRRC: ≤ 26 dBm',

'5200 mAh',

'1200 mA@3.6 V（连接 Android 设备时）,700 mA@3.6 V（连接 iOS 设备时）',

'180×86×10 mm（长×宽×高）'
),

-- Row.3  DJI Mavic 3
(null,

'DJI RC-N1 遥控器：,2.4 GHz 频段,5.8 GHz 频段',

null,

'DJI RC-N1 遥控器：,0°C 至 40°C（32°F 至 104°F）',

'DJI RC-N1 遥控器：,
2.4 GHz 频段,FCC：≤26 dBm,CE：≤20 dBm,SRRC：≤20 dBm,MIC：≤20 dBm,5.8 GHz 频段,FCC：≤26 dBm,CE：≤14 dBm,SRRC：≤26 dBm',

'DJI RC-N1 遥控器：5200 mAh',

'DJI RC-N1 遥控器：,1200 mA@3.6 V（搭配 Android 系统设备）,700 mA@3.6 V（搭配 iOS 系统设备）',

'DJI RC-N1 遥控器：,180×86×10 mm（长×宽×高）'
),

-- Row.4  DJI Mini 2
(null,

'2.4 GHz 频段,5.8 GHz 频段',

'2.4 GHz 频段,FCC: 10 km,CE: 6 km,MIC: 6 km,SRRC: 6 km,5.8 GHz 频段,FCC: 10 km,CE: 6 km,SRRC: 6 km',

'-10°C 至 40°C',

'2.4 GHz 频段,FCC: ≤ 26 dBm,CE: ≤ 20 dBm,SRRC: ≤ 20 dBm,MIC: ≤ 20 dBm,5.8 GHz 频段,FCC: ≤ 26 dBm,CE: ≤ 14 dBm,SRRC: ≤ 26 dBm',

'5200 mAh',

'1200 mA@3.6 V（连接 Android 设备时）,700 mA@3.6 V（连接 iOS 设备时）',

'180×86×10 mm（长×宽×高）'
),

-- Row.5  御 Mavic Pro
(null,

'2.4 GHz 频段',

'2.4 GHz 频段,FCC: 7 km,CE: 4 km,SRRC: 4 km',

'0℃ 至 40℃',

'2.4 GHz 频段,FCC: ≤ 26 dBm,CE: ≤ 20 dBm,SRRC: ≤ 20dBm',

'2970 mAh',

'950 mA@3.7 V',

'最大长度 160 mm,厚度 6.5 至 8.5 mm'
),

-- Row.6  御 Mavic Pro 铂金版
(null,

'2.4 GHz 频段',

'2.4 GHz 频段,FCC: 7 km,CE: 4 km,SRRC: 4 km',

'0℃ 至 40℃',

'2.4 GHz 频段,FCC: ≤ 26 dBm,CE: ≤ 20 dBm,SRRC: ≤ 20 dBm',

'2970 mAh',

'950 mA@3.7 V',

'最大长度 160 mm,厚度 6.5 至 8.5 mm'
);


create table Charger(
  cid int primary key auto_increment, 
  input varchar(64),
  output varchar(64),
  voltage varchar(16),
  ratedPower varchar(16)
);


insert into Charger value
-- Row.1  DJI Mini 3 Pro
(1,
null,

null,

null,

null
),

-- Row.2  DJI Air 2S
(null,

'100 至 240V, 50/60 Hz, 1.3 A',

'电池接口：13.2 V - 2.82 A,USB 接口：5 V - 2 A',

'13.2 V',

'38 W'
),

-- Row.3  DJI Mavic 3
(null,

'交流电：100 至 240 V，47 至 63 Hz，2.0 A',

'USB-C：5.0 V-5.0 A/9.0 V-5.0 A/12.0 ,V-5.0 A/15.0 V-4.3A/20.0 V-3.25 ,A/5.0~20.0 V-3.25 A,
USB-A：5 V-2 A',

'15.4 V',

'65 W'
),

-- Row.4  DJI Mini 2
(null,

'100 至 240 V, 50/60 Hz, 0.5 A',

'12 V/1.5 A 或 9 V/2 A 或 5 V/3 A',

null,

'18 W'
),

-- Row.5  御 Mavic Pro
(null,

'100 至 240 V, 50/60 Hz, 1.4A',

'电池接口：13.05 V - 3.83 A,USB 接口：5 V - 2 A+2 A',

'5 V',

'50 W'
),

-- Row.6  御 Mavic Pro 铂金版
(null,

'100 至 240 V, 50/60 Hz, 1.4A',

'电池接口：13.05 V - 3.83 A,USB 接口：5 V - 2 A+2 A',

'5 V',

'50 W'
);




-- 用户列表模块
CREATE TABLE user(
did INT PRIMARY KEY AUTO_INCREMENT,  #编号
dphone VARCHAR(10240), #手机号
demail VARCHAR(1024) , #邮箱
dpwd VARCHAR(1024)  #密码
);

INSERT INTO user(`did`, `dphone`, `demail`, `dpwd`) VALUES (1, '13171831633', '1031124494@qq.com', 'abc123456');
INSERT INTO user (`did`, `dphone`, `demail`, `dpwd`) VALUES (2, '13552425659', '13552425659@qq.com', 'abc111111');
INSERT INTO user  (`did`, `dphone`, `demail`, `dpwd`) VALUES (3, '13185266654', '13185266654@qq.com', 'aaa123456');

-- 管理员列表
CREATE TABLE admin(
did INT PRIMARY KEY AUTO_INCREMENT,  #编号
dname VARCHAR(16),  #名称
dpwd VARCHAR(1024),  #密码
dphone VARCHAR(10240), #手机号
demail VARCHAR(1024)  #邮箱
);

INSERT INTO admin (`did`, `dname`, `dpwd`, `dphone`, `demail`) VALUES ('1', 'dingding', '123456', '18512355555', '123@qq.com');
INSERT INTO admin (`did`, `dname`, `dpwd`, `dphone`, `demail`) VALUES ('2', 'dangdang', '123456', '12345678955', '111@qq.com');
INSERT INTO admin (`did`, `dname`, `dpwd`, `dphone`, `demail`) VALUES ('3','bibi', '123456', '12345678955', '111@qq.com');


-- 常见问题列表
CREATE TABLE f_common(
c_id INT PRIMARY KEY AUTO_INCREMENT,  #编号
c_name VARCHAR(16),  #名称
c_title VARCHAR(1024),  #标题
c_details VARCHAR(10240) #详细
);

/**常见问题**/
INSERT INTO f_common VALUES
('NULL','产品','相比以往产品，DJI Mini 3 Pro 有哪些方面的提升？$$全新的 DJI Mini 3 Pro 应如何开机？$$如何激活 DJI Mini 3 Pro 飞行器？$$DJI Mini 3 Pro 防水吗？$$使用 DJI Mini 3 Pro 前，需安装什么应用程序？$$为什么 DJI Mini 3 Pro 采用了全新的外观设计？$$ 为什么 DJI Mini 3 Pro 的后视视觉传感器放在了机身顶部？$$DJI Mini 3 Pro 是否支持增强图传？$$DJI Mini 3 Pro 的抗风等级是多少？$$DJI Mini 3 Pro 无风扇设计，是否会带来一些使用限制？ ','相比 DJI Mini 2、御 Mavic Air 2，DJI Mini 3 Pro 针对影像系统、视觉感知系统、续航时间、智能功能、图传系统等模块进行了全面提升。$$<br>
具体包括：在延续 249 克轻巧机身的基础上，采用 1/1.3 英寸且支持原生 HDR 的影像传感器，具备三向避障及全新升级的 APAS 4.0（高级飞行辅助系统），最长飞行时间可达 47 分钟*，全高清数字图传 DJI O3 最远传输距离可达 12 公里，支持焦点跟随、无损竖拍、延时摄影、大师镜头、手机快传等智能功能。$$<br>
* 搭载长续航智能飞行电池，在无风环境下以 21.6 公里/小时匀速飞行。$$<br>使用长续航智能飞行电池（该配件需单独购买），机身重量会超过 249 克，请在飞行前查询、确认并严格遵守当地法律法规。$$<br>$$为了保障飞行器出厂时的运输安全，我们会提前使电池进入休眠状态。$$首次开机使用前，需要将电池放入机身或充电管家内，连接充电器给电池充电以唤醒电池。$$<br>唤醒电池后，短按一次飞行器电源按键，再长按两秒即可开机。$$<br>$$搭配 DJI RC-N1 遥控器：首先将移动设备（需处于联网状态）与遥控器连接，然后通过 DJI Fly app 连接 DJI Mini 3 Pro，按照 DJI Fly 界面的提示完成激活流程。$$<br>
'),
('NULL','相机','DJI Mini 3 Pro 是否支持使用手动挡拍摄照片和录制视频？$$如何开启 DJI Mini 3 Pro 的 HDR 模式？$$DJI Mini 3 Pro 在什么录像规格下可以获得最佳画质？$$DJI Mini 3 Pro 的双原生 ISO 如何运作？','支持。$$<br>可以通过 DJI Fly app 手动设置相机快门速度、ISO 和白平衡参数。$$<br>'),
('NULL','遥控器','使用 DJI RC 时如何分享拍摄作品？$$DJI RC HOST 接口的作用是什么？$$为什么 DJI RC 需要配合 microSD 卡使用？$$DJI RC 是否支持快充？','DJI RC 目前仅支持在拍摄后快速预览影像，不支持原素材下载、编辑、分享等功能。$$<br>建议您在手机上安装 DJI Fly app，并使用 app 的手机快传功能。$$<br>将 DJI Mini 3 Pro 直接连接手机，即可将无人机中的素材快速传输至手机，并通过手机端的 DJI Fly app 管理与分享素材。$$<br>'),
('NULL','图传','对比 OcuSync 2.0 图传，DJI O3 图传有哪些方面的提升？$$DJI Mini 3 Pro 的手机快传功能有哪些提升？ ','DJI O3 图传系统使用全新图传方案，从双天线升级为四天线，不仅带来远达 12 公里的全高清图传品质（FCC 标准，无遮挡无干扰），并增强了图传系统的抗干扰能力，进一步提升 DJI Mini 3 Pro 在城市等复杂环境下飞行的图传可靠性。$$<br>'),
('NULL','动力及电池','DJI Mini 3 Pro 的最大飞行高度是多少？$$DJI Mini 3 Pro 的桨叶多久需要更换？$$如何更换？$$DJI Mini 3 Pro 能否使用其他 USB-C 接口的充电器进行充电？$$DJI Mini 3 Pro 双向充电管家有哪些功能？','最大飞行高度为 500 米，根据不同国家/地区的法规要求有不同限制，飞行前请查询并确认当地法规。$$<br>'),
('NULL','固件升级','如何升级 DJI Mini 3 Pro 的固件？哪些情况会导致固件升级失败？','飞行器连接遥控器后，DJI Fly app 会推送固件更新提示（若有新版本固件发布），您可以根据指示升级飞行器、遥控器、电池等设备的固件。$$<br>'),
('NULL','配件通用性','DJI Mini 3 Pro 可以使用 DJI Mini 2 的哪些配件？$$DJI Mini 3 Pro 能搭配哪些遥控器使用？$$DJI Mini 3 Pro 是否支持 DJI 飞行眼镜和 DJI 穿越摇杆？','DJI Mini 3 Pro 可兼容 DJI RC-N1 遥控器及其相关配件、DJI 18W USB 充电器。$$<br>除此之外，DJI Mini 2 其他配件均无法搭配 DJI Mini 3 Pro 使用。$$<br>
');

