<template>
  <div>
    <div class="banner">
      <div class="banner_content">
        <div class="banner_box">
          <h1>消费无人机对比</h1>
          <router-link to="/">
             <p style="color:#fff;">DJI Mini 3 Pro</p>
          </router-link>
         
        </div>
      </div>
    </div>

    <div class="header" id="header">
      <div class="center">
        <div class="header-box">
          <div class="header-left">
            <input type="checkbox" />
            <span>隐藏相同选项</span>
          </div>
          <ul class="header-right">
            <!-- 第一个小模块 -->
            <li class="header-right-item">
              <div class="item">
                <span id="item1">DJI Mini 3 Pro</span>
                <div class="header-right-img" ref="img1" @click="goup1"></div>
              </div>
              <div class="header-down hide" ref="pic1">
                <ul
                  class="header-down-product"
                  @mouseleave="gohide1"
                  id="ulOne"
                  @click="changeUlOne"
                >
                  <!-- 第一张图 -->
                  <li
                    class="header-down-product-card active"
                    @click="toggleData1"
                  >
                    <img src="../assets/compare/1.png" alt="" />

                    <p>DJI Mini 3 Pro</p>
                  </li>
                  <!-- 第二张图 -->
                  <li class="header-down-product-card" @click="toggleData1">
                    <img src="../assets/compare/2.png" alt="" />
                    <p>DJI Mavic 3</p>
                  </li>
                  <!-- 第三章图 -->
                  <li class="header-down-product-card" @click="toggleData1">
                    <img src="../assets/compare/3.png" alt="" />
                    <p>DJI Mini SE</p>
                  </li>
                  <!-- 第四张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/4.png" alt="" />
                    <p>DJI Air 2S</p>
                  </li>
                  <!-- 第五张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/5.png" alt="" />
                    <p>DJI Mini 2</p>
                  </li>
                  <!-- 第六张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/6.png" alt="" />
                    <p>DJI Mavic Air 2</p>
                  </li>
                  <!-- 第七张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/7.png" alt="" />
                    <p>御 Mavic 2Pro</p>
                  </li>
                  <!-- 第二轮7张图 -->

                  <!-- 第八张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/8.png" alt="" />
                    <p>御 Mavic 2 Zoom</p>
                  </li>
                  <!-- 第九张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/9.png" alt="" />
                    <p>精灵 Phantom 4Pro</p>
                  </li>
                  <!-- 第十张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/10.png" alt="" />
                    <p>御Mavic Air</p>
                  </li>
                  <!-- 第十一张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/11.png" alt="" />
                    <p>御Mavic Mini</p>
                  </li>
                  <!-- 第十二张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/12.png" alt="" />
                    <p>御Mavic Pro铂金版</p>
                  </li>
                  <!-- 第十三张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/13.png" alt="" />
                    <p>晓 Spark</p>
                  </li>
                  <!-- 第十四张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/14.png" alt="" />
                    <p>精灵Phantom 4Advanced</p>
                  </li>
                  <!-- 第十三张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/15.png" alt="" />
                    <p>御 Mavic Pro</p>
                  </li>
                  <!-- 第十四张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/16.png" alt="" />
                    <p>精灵Phantom 4Pro V2.0</p>
                  </li>
                </ul>
              </div>
            </li>

            <!-- 第二个小模块 -->
            <li class="header-right-item">
              <div class="item">
                <span id="item2">DJI Mavic 3</span>
                <div class="header-right-img" ref="img2" @click="goup2"></div>
              </div>
              <div class="header-down hide" ref="pic2">
                <ul
                  class="header-down-product"
                  @mouseleave="gohide2"
                  @click="changeUlTwo"
                >
                  <!-- 第一张图 -->
                  <li class="header-down-product-card">
                    <img
                      src="../assets/compare/1.png"
                      alt=""
                      @click="toggleData2"
                    />

                    <p>DJI Mini 3 Pro</p>
                  </li>
                  <!-- 第二张图 -->
                  <li
                    class="header-down-product-card activeTwo"
                    @click="toggleData2"
                  >
                    <img src="../assets/compare/2.png" alt="" />
                    <p>DJI Mavic 3</p>
                  </li>
                  <!-- 第三章图 -->
                  <li class="header-down-product-card" @click="toggleData2">
                    <img src="../assets/compare/3.png" alt="" />
                    <p>DJI Mini SE</p>
                  </li>
                  <!-- 第四张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/4.png" alt="" />
                    <p>DJI Air 2S</p>
                  </li>
                  <!-- 第五张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/5.png" alt="" />
                    <p>DJI Mini 2</p>
                  </li>
                  <!-- 第六张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/6.png" alt="" />
                    <p>DJI Mavic Air 2</p>
                  </li>
                  <!-- 第七张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/7.png" alt="" />
                    <p>御 Mavic 2Pro</p>
                  </li>
                  <!-- 第二轮7张图 -->

                  <!-- 第八张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/8.png" alt="" />
                    <p>御 Mavic 2 Zoom</p>
                  </li>
                  <!-- 第九张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/9.png" alt="" />
                    <p>精灵 Phantom 4Pro</p>
                  </li>
                  <!-- 第十张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/10.png" alt="" />
                    <p>御Mavic Air</p>
                  </li>
                  <!-- 第十一张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/11.png" alt="" />
                    <p>御Mavic Mini</p>
                  </li>
                  <!-- 第十二张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/12.png" alt="" />
                    <p>御Mavic Pro铂金版</p>
                  </li>
                  <!-- 第十三张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/13.png" alt="" />
                    <p>晓 Spark</p>
                  </li>
                  <!-- 第十四张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/14.png" alt="" />
                    <p>精灵Phantom 4Advanced</p>
                  </li>
                  <!-- 第十三张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/15.png" alt="" />
                    <p>御 Mavic Pro</p>
                  </li>
                  <!-- 第十四张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/16.png" alt="" />
                    <p>精灵Phantom 4Pro V2.0</p>
                  </li>
                </ul>
              </div>
            </li>
            <!-- 第三个小模块 -->
            <li class="header-right-item">
              <div class="item">
                <span id="item3">DJI Mini SE</span>
                <div class="header-right-img" ref="img3" @click="goup3"></div>
              </div>
              <div class="header-down hide" ref="pic3">
                <ul
                  class="header-down-product"
                  @mouseleave="gohide3"
                  @click="changeUlThree"
                >
                  <!-- 第一张图 -->
                  <li class="header-down-product-card" @click="toggleData3">
                    <img src="../assets/compare/1.png" alt="" />

                    <p>DJI Mini 3 Pro</p>
                  </li>
                  <!-- 第二张图 -->
                  <li class="header-down-product-card" @click="toggleData3">
                    <img src="../assets/compare/2.png" alt="" />
                    <p>DJI Mavic 3</p>
                  </li>
                  <!-- 第三章图 -->
                  <li
                    class="header-down-product-card activeThree"
                    @click="toggleData3"
                  >
                    <img src="../assets/compare/3.png" alt="" />
                    <p>DJI Mini SE</p>
                  </li>
                  <!-- 第四张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/4.png" alt="" />
                    <p>DJI Air 2S</p>
                  </li>
                  <!-- 第五张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/5.png" alt="" />
                    <p>DJI Mini 2</p>
                  </li>
                  <!-- 第六张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/6.png" alt="" />
                    <p>DJI Mavic Air 2</p>
                  </li>
                  <!-- 第七张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/7.png" alt="" />
                    <p>御 Mavic 2Pro</p>
                  </li>
                  <!-- 第二轮7张图 -->

                  <!-- 第八张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/8.png" alt="" />
                    <p>御 Mavic 2 Zoom</p>
                  </li>
                  <!-- 第九张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/9.png" alt="" />
                    <p>精灵 Phantom 4Pro</p>
                  </li>
                  <!-- 第十张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/10.png" alt="" />
                    <p>御Mavic Air</p>
                  </li>
                  <!-- 第十一张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/11.png" alt="" />
                    <p>御Mavic Mini</p>
                  </li>
                  <!-- 第十二张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/12.png" alt="" />
                    <p>御Mavic Pro铂金版</p>
                  </li>
                  <!-- 第十三张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/13.png" alt="" />
                    <p>晓 Spark</p>
                  </li>
                  <!-- 第十四张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/14.png" alt="" />
                    <p>精灵Phantom 4Advanced</p>
                  </li>
                  <!-- 第十三张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/15.png" alt="" />
                    <p>御 Mavic Pro</p>
                  </li>
                  <!-- 第十四张图 -->
                  <li class="header-down-product-card">
                    <img src="../assets/compare/16.png" alt="" />
                    <p>精灵Phantom 4Pro V2.0</p>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <!-- <div style="width: 1200px; height: 1000px; background-color: red; margin:0 auto;"></div> -->

    <div class="content" v-if="data">
      <div class="center">
        <div class="content-box">
          <div class="box"></div>

          <ul class="content-list">
            <li class="cotent-list-item">
              <div class="cotent-list-img">
                <img src="../assets/compare/1.png" id="contentImg1" />
              </div>
              <div class="cotent-list-text">
                <p>{{ p1.datails }}</p>
              </div>

              <div class="cotent-list-price">
                <p>￥{{ p1.price }}</p>
              </div>
            </li>

            <li class="cotent-list-item">
              <div class="cotent-list-img">
                <img src="../assets/compare/2.png" id="contentImg2" />
              </div>
              <div class="cotent-list-text">
                <p>{{ p2.datails }}</p>
              </div>
              <div class="cotent-list-price">
                <p>￥{{ p2.price }}</p>
              </div>
            </li>

            <li class="cotent-list-item">
              <div class="cotent-list-img">
                <img src="../assets/compare/3.png" id="contentImg3" />
              </div>
              <div class="cotent-list-text">
                <p>￥{{ p3.datails }}</p>
              </div>
              <div class="cotent-list-price">
                <p>￥{{ p3.price }}</p>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <!-- 热点参数 -->
    <div class="params">
      <div class="center">
        <div class="params-content">
          <h2>热点参数</h2>
          <!-- 第一行尺寸 -->
          <div class="params-rows">
            <div class="params-rows-title">
              尺寸
              <p>长*宽*高</p>
            </div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <span class="bold-large">159*203*56mm</span>
                  <p class="hint">展开</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">347.5*283*107.7mm</span>
                  <p class="hint">展开</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">171*245*62mm</span>
                  <p class="hint">展开</p>
                </div>
              </div>
              <!-- 小二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <span class="bold-large">138×81×58 mm</span>
                  <p class="hint">折叠</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">145×90×62 mm</span>
                  <p class="hint">折叠</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">221×96.3×90.3 mm</span>
                  <p class="hint">折叠</p>
                </div>
              </div>
              <!-- 小三行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <span class="bold-large">245×289×56 mm</span>
                  <p class="hint">展开(含浆叶)</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">251×362×70 mm</span>
                  <p class="hint">展开(含浆叶)</p>
                </div>
                <div class="params-rows-list-cell">-</div>
              </div>
            </div>
          </div>
          <!-- 第二行起飞重量 -->
          <div class="params-rows">
            <div class="params-rows-title">起飞重量</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <span class="bold-large">＜ 249 g<sup>[1]</sup></span>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">＜ 249 g<sup>[1]</sup></span>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">Mavic 3：895 g</span>
                  <span class="bold-large">Mavic 3 Cine：899 g</span>
                </div>
              </div>
            </div>
          </div>
          <!-- 第三行最大飞行时间 -->
          <div class="params-rows">
            <div class="params-rows-title">最大飞行时间</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <span class="bold-large">30分钟</span>
                  <p class="hint">展开</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">34分钟</span>
                  <p class="hint">
                    （智能飞行电池，无风环境 21.6 公里/小时匀速飞行）
                  </p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">46分钟</span>
                </div>
              </div>
              <!-- 小二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">47 分钟</span>
                  <p class="hint">
                    （长续航智能飞行电池[2]，无风环境 21.6 公里/小时匀速飞行）
                  </p>
                </div>
                <div class="params-rows-list-cell"></div>
              </div>
            </div>
          </div>

          <!-- 第四行云台相机 -->
          <div class="params-rows">
            <div class="params-rows-title">云台相机</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <span class="bold-large">3轴</span>
                  <p class="hint">机械稳增云台</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">3轴</span>
                  <p class="hint">机械稳增云台</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">3轴</span>
                  <p class="hint">机械稳增云台</p>
                </div>
              </div>
              <!-- 小二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <span class="bold-large">1/2.3 英寸 CMOS</span>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">1/1.3 英寸 CMOS</span>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">4/3 CMOS</span>
                  <p class="hint">哈苏相机</p>
                </div>
              </div>
              <!-- 小三行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <span class="bold-large">2.7K/30fps</span>
                  <p class="hint">最大录像分辨率</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">4K/60fps</span>
                  <p class="hint">最大录像分辨率</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">5.1K/50fps</span>
                  <p class="hint">哈苏相机最大录像分辨率</p>
                </div>
              </div>
              <!-- 小四行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">4K/50fps</span>
                  <p class="hint">长焦相机最大录像分辨率</p>
                </div>
              </div>
              <!-- 小五行 -->

              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <span class="bold-large">1200 万像素</span>
                  <p class="hint">最大图片分辨率</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">4800 万像素</span>
                  <p class="hint">最大图片分辨率</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">2000 万像素</span>
                  <p class="hint">哈苏相机最大图片分辨率</p>
                </div>
              </div>
              <!-- 小六行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">1200 万像素</span>
                  <p class="hint">长焦相机最大图片分辨率</p>
                </div>
              </div>
            </div>
          </div>

          <!-- 第五行障碍物感知能力 -->
          <div class="params-rows">
            <div class="params-rows-title">起飞重量</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="bold-large">下方</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="bold-large">前方、后方、下方</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="bold-large">
                    全向双目视觉系统，辅以机身底部红外传感器
                  </p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第六控制方向 -->
          <div class="params-rows">
            <div class="params-rows-title">起飞重量</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <span class="bold-large">遥控器</span>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">遥控器</span>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">遥控器</span>
                </div>
              </div>
            </div>
          </div>
          <!-- 第七最大控制距离 -->
          <div class="params-rows">
            <div class="params-rows-title">
              最大控制距离
              <p>（无干扰、无遮挡）</p>
            </div>
            <div class="params-rows-list" style="border: 0">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <span class="bold-large">2.4 GHz 频段</span>
                  <p class="hint">FCC：12 km[3]</p>
                  <p class="hint">CE：8 km</p>
                  <p class="hint">SRRC：8 km</p>
                  <p class="hint">MIC：8 km</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">2.4 GHz 频段</span>
                  <p class="hint">FCC：12 km[3]</p>
                  <p class="hint">CE：8 km</p>
                  <p class="hint">SRRC：8 km</p>
                  <p class="hint">MIC：8 km</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">型号 MR1SD25</span>
                  <p class="hint">2.4 GHz 频段</p>
                  <p class="hint">MIC：2 km</p>
                  <p class="hint">CE：2 km</p>
                </div>
              </div>
              <!-- 小二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <span class="bold-large">5.8 GHz 频段[4]</span>
                  <p class="hint">FCC：12 km[3]</p>
                  <p class="hint">CE：8 km</p>
                  <p class="hint">SRRC：8 km</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">5.8 GHz 频段</span>
                  <p class="hint">FCC：15 km</p>
                  <p class="hint">CE：8 km</p>
                  <p class="hint">SRRC：8 km</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">型号 MR1SS5</span>
                  <p>5.8 GHz 频段[2]</p>
                  <p class="hint">FCC：4 km[3]</p>
                  <p>SRRC：2.5 km</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 飞行器 -->
    <div class="params">
      <div class="center">
        <div class="params-content">
          <h2>飞行器</h2>
          <!-- 第一行最大上升速度 -->
          <div class="params-rows">
            <div class="params-rows-title">最大上升速度</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">5 m/s</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">8 m/s</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">4 m/s</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第二行最大下降速度 -->
          <div class="params-rows">
            <div class="params-rows-title">最大下降速度</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">5 m/s</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">6 m/s</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">3 m/s</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第三行最大水平飞行速度 -->
          <div class="params-rows">
            <div class="params-rows-title">最大水平飞行速度</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">16 m/s[5]</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">21 m/s</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>13 m/s</p>
                </div>
              </div>
            </div>
          </div>

          <!-- 第四行最大起飞海拔高度 -->
          <div class="params-rows">
            <div class="params-rows-title">最大起飞海拔高度</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">4000 米</p>
                  <p>（搭载智能飞行电池）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">6000 m</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>3000 米</p>
                </div>
              </div>
            </div>
          </div>

          <!-- 第五行最大飞行时间 -->
          <div class="params-rows">
            <div class="params-rows-title">
              最大起飞行时间
              <p>(无风环境)</p>
            </div>

            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">34 分钟</p>
                  <p>（搭载智能飞行电池，21.6 km/h 匀速飞行）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">46 分钟[2]</p>
                  <p>（无风环境 25 km/h 匀速飞行）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>30 分钟</p>
                  <p>（无风环境下 17 公里/小时匀速飞行）</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第六醉长悬停时间 -->
          <div class="params-rows">
            <div class="params-rows-title">
              最长悬停时间
              <p>（无风环境）</p>
            </div>

            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">30 分钟</p>
                  <p class="hint">（智能飞行电池）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">40 分钟</p>
                </div>
                <div class="params-rows-list-cell">-</div>
              </div>
              <!-- 第二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">40 分钟</p>
                  <p class="hint">（长续航智能飞行电池[2]）</p>
                </div>
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell"></div>
              </div>
            </div>
          </div>
          <!-- 第七最大续航里程 -->
          <div class="params-rows">
            <div class="params-rows-title">
              最大续航里程
              <p>（无风环境）</p>
            </div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">18 公里</p>
                  <p class="hint">
                    （智能飞行电池，无风环境 43.2 公里/小时匀速飞行）
                  </p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">30 km</p>
                </div>
                <div class="params-rows-list-cell">-</div>
              </div>
              <!-- 小二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">25 公里</p>
                  <p class="hint">
                    （长续航智能飞行电池[2]，无风环境 43.2 公里/小时匀速飞行）
                  </p>
                </div>
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell"></div>
              </div>
            </div>
          </div>
          <!-- 第八最大抗风等级 -->
          <div class="params-rows">
            <div class="params-rows-title">最大抗风等级</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">10.7 m/s（5 级风）</p>
                </div>
                <div class="params-rows-list-cell">-</div>
                <div class="params-rows-list-cell">
                  <p class="hint">10.7 m/s（5 级风）</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第九最大可倾斜角度 -->
          <div class="params-rows">
            <div class="params-rows-title">最大可倾斜角度</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">40°</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>35°</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">30°</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第十 最大旋转角速度-->
          <div class="params-rows">
            <div class="params-rows-title">最大旋转角度</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">250°/s</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>200°/s</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">150°/s</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第十一工作环境温度 -->
          <div class="params-rows">
            <div class="params-rows-title">工作环境温度</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">-10℃ 至 40℃</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>-10°C 至 40°C</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">0℃ 至 40℃</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第十二工作频率 -->

          <div class="params-rows">
            <div class="params-rows-title">发射功率</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">2.4 GHz 频段</p>
                  <p>FCC： 26 dBm</p>
                  <p>CE： 20 dBm</p>
                  <p>SRRC：20 dBm</p>
                  <p>MIC：20 dBm</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">2.4 GHz 频段</p>
                  <p>FCC： 33 dBm</p>
                  <p>CE： 20 dBm</p>
                  <p>SRRC：20 dBm</p>
                  <p>MIC：20 dBm</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">型号 MT2SS5</span>
                  <p class="hint">5.8 GHz 频段[2]</p>
                  <p>FCC： 30 dBm</p>
                  <p>CE： 28 dBm</p>
                </div>
              </div>
              <!-- 第二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">5.8 GHz 频段</p>
                  <p>FCC： 26 dBm</p>
                  <p>CE： 14 dBm</p>
                  <p>SRRC：26 dBm</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">5.8 GHz 频段</p>
                  <p>FCC： 33 dBm</p>
                  <p>CE： 14 dBm</p>
                  <p>SRRC：30 dBm</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">型号 MT2SD25</span>
                  <p class="hint">2.4 GHz 频段</p>
                  <p>FCC： 19 dBm</p>
                  <p>CE： 19 dBm</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第十四CNSS -->
          <div class="params-rows">
            <div class="params-rows-title">CNSS</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">GPS + Galileo + BeiDou</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">GPS + Galileo + BeiDou</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">GPS + GLONASS</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第十五停精度 -->
          <div class="params-rows">
            <div class="params-rows-title">悬停精度</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">垂直：</p>
                  <p>±0.1 米（视觉定位正常工作时）</p>
                  <p>±0.5 米（GNSS 正常工作时）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">垂直：</p>
                  <p>±0.1 米（视觉定位正常工作时）</p>
                  <p>±0.5 米（GNSS 正常工作时）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">垂直：</p>
                  <p>±0.1 米（视觉定位正常工作时）</p>
                  <p>±0.5 米（GPS 正常工作时）</p>
                </div>
              </div>
              <!-- 第二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">水平：</p>
                  <p>±0.3 米（视觉定位正常工作时）</p>
                  <p>±0.5 米 （高精度定位系统正常工作时）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">水平：</p>
                  <p>±0.3 米（视觉定位正常工作时）</p>
                  <p>±0.5 米（高精度定位系统正常工作时）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">水平：</p>
                  <p>±0.3 米（视觉定位正常工作时）</p>
                  <p>±1.5 米（GPS 正常工作时）</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第十六记载内存 -->
          <div class="params-rows">
            <div class="params-rows-title">记载内存</div>
            <div class="params-rows-list" style="border: 0">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">-</div>
                <div class="params-rows-list-cell">
                  <p class="hint">Mavic 3：8GB（可用空间约 7.2GB）</p>
                  <p>Mavic 3 Cine：1TB（可用空间约</p>
                  <p>934.8GB）</p>
                </div>
                <div class="params-rows-list-cell">-</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 云台 -->

    <div class="params">
      <div class="center">
        <div class="params-content">
          <h2>云台</h2>
          <!-- 第一行结构设计范围 -->
          <div class="params-rows">
            <div class="params-rows-title">结构设计范围</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">俯仰：-135° 至 80°</p>
                  <p>横滚：-135° 至 45°</p>
                  <p>平移：-30° 至 30°</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">俯仰：-135° 至 100°</p>
                  <p>橫滾：-45° 至 45°</p>
                  <p>平移：-27° 至 27°</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">俯仰：-110° 至 +35°</p>
                  <p>横滚：-35° 至 +35°</p>
                  <p>平移：-20° 至 +20°</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第二行可控转动范围-->
          <div class="params-rows">
            <div class="params-rows-title">可控转动范围</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">俯仰：-90° 至 60°</p>
                  <p>横滚：-90° 或 0°</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">俯仰：-90° 至 35°</p>
                  <p>平移：-5° 至 5°</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">俯仰：</p>
                  <p>-90° 至 0°（默认设置）</p>
                  <p>-90° 至 +20°（扩展）</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第三行稳定系统 -->
          <div class="params-rows">
            <div class="params-rows-title">稳定系统</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">3 轴机械增稳云台（俯仰、横滚、平移）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">3 轴机械增稳云台（俯仰、橫滾、平移）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>3 轴机械云台（俯仰、横滚、平移）</p>
                </div>
              </div>
            </div>
          </div>

          <!-- 第四行最大控制转速(俯仰) -->
          <div class="params-rows">
            <div class="params-rows-title">最大控制转速(俯仰)</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">100°/s</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">100°/s</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>120°/s</p>
                </div>
              </div>
            </div>
          </div>

          <!-- 第五行角度抖动量-->
          <div class="params-rows">
            <div class="params-rows-title">角度抖动量</div>

            <div class="params-rows-list"  style="border:0;">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">±0.01°</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">±0.007°</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>±0.01°</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--感知系统  -->

    <div class="params">
      <div class="center">
        <div class="params-content">
          <h2>感知系统</h2>
          <!-- 第一行前方 -->
          <div class="params-rows">
            <div class="params-rows-title">前方</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">精确测距范围：0.39 至 25 米</p>
                  <p>有效避障速度：飞行速度小于 10 米/秒</p>
                  <p>视角范围（FOV）：水平 106°，垂直 90°</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">测距范围：0.5 至 20 米</p>
                  <p>可探测范围：0.5 至 200 米</p>
                  <p>有效避障速度：飞行速度不超过 15 m/s</p>
                  <p>视角（FOV）：水平 90°，垂直 103°</p>
                </div>
                <div class="params-rows-list-cell">-</div>
              </div>
            </div>
          </div>
          <!-- 第二行后方-->
          <div class="params-rows">
            <div class="params-rows-title">后方</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">精确测距范围：0.36 至 23.4 米</p>
                  <p>有效避障速度：飞行速度小于 10 米/秒</p>
                  <p>视角范围（FOV）：水平 58°，垂直 73°</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">测距范围：0.5 至 16 米</p>
                  <p>有效避障速度：飞行速度不超过 14 m/s</p>
                  <p>视角（FOV）：水平 90°，垂直 103°</p>
                </div>
                <div class="params-rows-list-cell">-</div>
              </div>
            </div>
          </div>
          <!-- 第三行上方 -->
          <div class="params-rows">
            <div class="params-rows-title">上方</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">-</div>
                <div class="params-rows-list-cell">
                  <p class="hint">测距范围：0.2 至 10 米</p>
                  <p>有效避障速度：飞行速度不超过 6 m/s</p>
                  <p>视角（FOV）：前后 100°，左右 90°</p>
                </div>
                <div class="params-rows-list-cell">-</div>
              </div>
            </div>
          </div>

          <!-- 第四行下方 -->
          <div class="params-rows">
            <div class="params-rows-title">下方</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">精确测距范围：0.15 至 9 米</p>
                  <p>精确悬停范围：0.5 至 12 米</p>
                  <p>视觉悬停范围：0.5 至 30 米</p>
                  <p>有效避障速度：飞行速度小于 3 米/秒</p>
                  <p>视角范围（FOV）：前后 104.8°</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">测距范围：0.3 至 18 米</p>
                  <p>有效避障速度：飞行速度不超过 6 m/s</p>
                  <p>视角（FOV）：前后 130°，左右 160°</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>精确悬停范围：0.5 至 10 米</p>
                </div>
              </div>
            </div>
          </div>

          <!-- 第五行左右-->
          <div class="params-rows">
            <div class="params-rows-title">左右</div>

            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">-</div>
                <div class="params-rows-list-cell">
                  <p class="hint">测距范围：0.5 至 25 米</p>
                  <p>有效避障速度：飞行速度不超过 15 m/s</p>
                  <p>视角（FOV）：水平 90°，垂直 85°</p>
                </div>
                <div class="params-rows-list-cell">-</div>
              </div>
            </div>
          </div>
          <!-- 第六行有效使用环境-->
          <div class="params-rows">
            <div class="params-rows-title">有效使用环境</div>

            <div class="params-rows-list" style="border: 0">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">前方、后方、下方°</p>
                  <p>表面为漫反射材质，表面纹理丰富</p>
                  <p>反射率大于 20%（如水泥路面等）</p>
                  <p>光照条件充足（> 15 lux，室内日光灯正</p>
                  <p>常照射环境）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">前、后、左、右、上方：</p>
                  <p>
                    表面有丰富纹理，光照条件充足（> 15
                    lux，室內日光灯正常照射环境）
                  </p>
                  <br />
                  <p>下方：</p>
                  <p>
                    地面有丰富纹理，光照条件充足（> 15
                    lux，室內日光灯正常照射环境），表面为漫反射材质且反射率大于
                    20%（如墙面、树木、人等）
                  </p>
                </div>
                <div class="params-rows-list-cell">
                  <p>下方：</p>
                  <p>
                    表面为漫反射材质，表面可辨别 反射率大于
                    20%（如墙面、树木、人等）
                  </p>
                  <p>光照条件充足（>15 lux，室内日光灯正常照射环境）</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 相机 -->
    <div class="params">
      <div class="center">
        <div class="params-content">
          <h2>相机</h2>
          <!-- 第一行影像传感器 -->
          <div class="params-rows">
            <div class="params-rows-title">影像传感器</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>1/1.3 英寸 CMOS</p>
                  <p class="hint">有效像素：4800 万</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">3哈苏相机</span>
                  <p class="hint">展开</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>1/2.3 英寸 CMOS</p>
                  <p class="hint">有效像素：1200 万</p>
                </div>
              </div>
              <!-- 小二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">长焦相机</span>
                  <p class="hint">1/2 英寸 CMOS，有效像素 1200 万</p>
                </div>
                <div class="params-rows-list-cell"></div>
              </div>
            </div>
          </div>
          <!-- 第二行镜头 -->
          <div class="params-rows">
            <div class="params-rows-title">镜头</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>视角：82.1°</p>
                  <p class="hint">等效焦距：24 mm</p>
                  <p>光圈：f/1.7</p>
                  <p>对焦点：1 米至无穷远</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">哈苏相机</span>
                  <p class="hint">可视角度：84°</p>
                  <p>等效焦距：24 mm</p>
                  <p>光圈：f/2.8 至 f/11</p>
                  <p>对焦点：1 米至无限远（带自动对焦）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>视角：83°</p>
                  <p class="hint">有等效焦距：24 mm</p>
                  <p>光圈：f/2.8</p>
                  <p>对焦点：1 米至无穷远</p>
                </div>
              </div>
              <!-- 小二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">长焦相机</span>
                  <p class="hint">可视角度：15°</p>
                  <p>等效焦距：162 mm</p>
                  <p>光圈：f/4.4</p>
                  <p>对焦点：3 米至无限远</p>
                </div>
                <div class="params-rows-list-cell"></div>
              </div>
            </div>
          </div>
          <!-- 第三行ISO范围 -->
          <div class="params-rows">
            <div class="params-rows-title">ISO范围</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">视频：</p>
                  <p>100 至 6400（自动）</p>
                  <p>100 至 6400（手动）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>视频：</p>
                  <p class="hint">100 至 3200（自动）</p>
                  <p>100 至 3200（手动）</p>
                </div>
                <div class="params-rows-list-cell"></div>
              </div>
              <!-- 小二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">照片：</p>
                  <p>100 至 6400（自动）</p>
                  <p>100 至 6400（手动）</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">长焦相机</span>
                  <p>影片：100 至 6400</p>
                  <p>照片：100 至 6400</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>照片：</p>
                  <p>100 至 3200（自动）</p>
                  <p>100 至 3200（手动）</p>
                </div>
              </div>
            </div>
          </div>

          <!-- 第四行快门速度 -->
          <div class="params-rows">
            <div class="params-rows-title">快门速度</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">电子快门：2 至 1/8000 s</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">哈苏相机</span>
                  <p class="hint">电子快门：8 至 1/8000 秒</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">电子快门：4 至 1/8000 s</p>
                </div>
              </div>
              <!-- 小二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">长焦相机</span>
                  <p>电子快门：2 至 1/8000 秒</p>
                </div>
                <div class="params-rows-list-cell"></div>
              </div>
            </div>
          </div>

          <!-- 第五行最大照片尺寸 -->
          <div class="params-rows">
            <div class="params-rows-title">最大照片尺寸</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>
                    4:3 宽高比：8064×6048（4800 万像素），4032×3024（1200
                    万像素） 16:9 宽高比：4032×2268（1200 万像素）
                  </p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">哈苏相机</span>
                  <p class="bold-large">5280×3956</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>4:3 宽高比：4000×3000</p>
                  <p>16:9 宽高比：4000×2250</p>
                </div>
              </div>
              <!-- 第二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">长焦相机</span>
                  <p class="bold-large">4000×3000</p>
                </div>
                <div class="params-rows-list-cell"></div>
              </div>
            </div>
          </div>
          <!-- 第六照片拍摄模式 -->
          <div class="params-rows">
            <div class="params-rows-title">照片拍摄模式</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>单张拍摄</p>
                  <p>定时拍摄：</p>
                  <p>
                    JPEG：2/3/5/7/10/15/20/30/60 秒
                    JPEG+RAW：2/3/5/7/10/15/20/30/60 秒
                  </p>
                  <p>自动包围曝光（AEB）：3/5 张 @2/3 EV 步长</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">哈苏相机</span>
                  <p>单拍：2000 万像素</p>
                  <p>自动包围曝光（AEB）：2000 万像素，3/5 张 @0.7EV</p>
                  <p>
                    连拍：2000 万像素，3/5/7 张 定时拍照：2000
                    万像素，2/3/5/7/10/15/20/30/60 秒
                  </p>
                </div>
                <div class="params-rows-list-cell">
                  <p>单张拍摄</p>
                  <p>定时拍摄：</p>
                  <p>JPEG：2/3/5/7/10/15/20/30/60 秒</p>
                </div>
              </div>
              <!-- 第二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>自动包围曝光（AEB）：3/5 张 @2/3 EV 步长</p>
                  <p>全景拍摄模式：</p>
                  <p>
                    竖拍（3×1）：3328×7936 广角（3×3）：8192×3294
                    180°（3×7）：7200×5376 球形全景（3×8+2）：8192×4096
                  </p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">长焦相机</span>
                  <p>单拍：1200 万像素</p>
                  <p>自动包围曝光（AEB）：1200 万像素，3/5 张 @0.7EV</p>
                  <p>
                    连拍：1200 万像素，3/5/7 张 定时拍照：1200
                    万像素，2/3/5/7/10/15/20/30/60 秒
                  </p>
                </div>
                <div class="params-rows-list-cell">
                  <p>单张拍摄</p>
                  <p>定时拍摄：</p>
                  <p>JPEG：2/3/5/7/10/15/20/30/60 秒</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第七录像分辨率 -->
          <div class="params-rows">
            <div class="params-rows-title">
              最大控制距离
              <p>（无干扰、无遮挡）</p>
            </div>
            <div class="params-rows-list" style="border: 0">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">4K</p>
                  <p class="hint">3840×2160@24/25/30/48/50/60fps</p>
                  <p class="hint">2.7K：</p>
                  <p class="hint">2720×1530@24/25/30/48/50/60fps</p>
                  <p>FHD：</p>
                  <p>
                    1920×1080@24/25/30/48/50/60fps 慢动作拍摄：1920×1080@120fps
                  </p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">哈苏相机</span>
                  <p class="hint">
                    Apple ProRes 422 HQ/Apple ProRes 422/Apple ProRes 422 LT[3]
                  </p>
                  <p class="hint">5.1K：</p>
                  <p class="hint">5120×2700@24/25/30/48/50fps</p>
                  <p class="hint">DCI 4K：</p>
                  <p>4096×2160@24/25/30/48/50/60/120[4]fps</p>
                  <p>4K：</p>
                  <p>3840×2160@24/25/30/48/50/60/120[4]fps</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">2.7K：</p>
                  <p class="hint">2720×1530@24/25/30fps</p>
                  <p class="hint">FHD：</p>
                  <p>1920×1080@24/25/30/48/50/60fps</p>
                </div>
              </div>
              <!-- 小二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">长焦相机</span>
                  <p class="hint">H264/H.265</p>
                  <p class="hint">4K：3840×2160@25/30/50fps</p>
                  <p class="hint">FHD：1920×1080@25/30/50fps</p>
                </div>
                <div class="params-rows-list-cell"></div>
              </div>
            </div>
          </div>
          <!-- 第八视频最大码率 -->
          <div class="params-rows">
            <div class="params-rows-title">视频最大码率</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>150 Mbps</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">哈苏相机</span>
                  <p class="hint">
                    H.264/H.265 传输速率：200 Mbps Apple ProRes 422 HQ[3]
                    传输速率：3772 Mbps
                  </p>
                  <p>Apple ProRes 422[3] 传输速率：2514 Mbps</p>
                  <p>Apple ProRes 422 LT[3] 传输速率：1750 Mbps</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>40 Mbps</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第九支持文件系统 -->
          <div class="params-rows">
            <div class="params-rows-title">支持文件系统</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="bold-large">FAT32（≤32GB）</p>
                  <p>exFAT（>32GB）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="bold-large">exFAT</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="bold-large">FAT32（≤32GB）</p>
                  <p>exFAT（>32GB）</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第十图片格式 -->
          <div class="params-rows">
            <div class="params-rows-title">图片格式</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="bold-large">JPEG/DNG（RAW）</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">哈苏相机</span>
                  <p class="bold-large">JPEG/DNG（RAW）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>JPEG</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第十一视频格式 -->
          <div class="params-rows">
            <div class="params-rows-title">视频格式</div>
            <div class="params-rows-list" style="border: 0">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">MP4/MOV（H.264/H.265）</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">哈苏相机</span>
                  <p>Mavic 3：</p>
                  <p class="hint">MP4/MOV（MPEG-4 AVC/H.264，HEVC/H.265）</p>
                  <p>Mavic 3 Cine：</p>
                  <p>MP4/MOV（MPEG-4 AVC/H.264，HEVC/H.265）</p>
                  <p>MOV（Apple ProRes 422 HQ/422/422 LT）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>MP4（H.264/MPEG-4 AVC）</p>
                </div>
              </div>
              <!-- 小二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">长焦相机</span>
                  <p>MP4/MOV（MPEG-4 AVC/H.264，HEVC/H.265）</p>
                </div>
                <div class="params-rows-list-cell"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 遥控器 -->
    <div class="params">
      <div class="center">
        <div class="params-content">
          <h2>遥控器</h2>
          <!-- 第一行工作频率 -->
          <div class="params-rows">
            <div class="params-rows-title">工作频率</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">DJI RC 和 DJI RC-N1 遥控器：</p>
                  <p>2.4 GHz 和 5.8 GHz 频段[4]</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">DJI RC-N1 遥控器：</p>
                  <p>2.4 GHz 频段</p>
                  <p>5.8 GHz 频段</p>
                </div>
                <div class="params-rows-list-cell">
                  <span class="bold-large">型号 MR1SS5</span>
                  <p class="hint">5.725 - 5.850 GHz[2]</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第二行最大信号有效距离 -->
          <div class="params-rows">
            <div class="params-rows-title">
              最大信号有效距离
              <p>(无干扰,无遮挡)</p>
            </div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">5 m/s</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">6 m/s</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">3 m/s</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第三行工作环境温度 -->
          <div class="params-rows">
            <div class="params-rows-title">工作环境温度</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">16 m/s[5]</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">21 m/s</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>13 m/s</p>
                </div>
              </div>
            </div>
          </div>

          <!-- 第四行发射功率(EIRP)-->
          <div class="params-rows">
            <div class="params-rows-title">发射功率(EIRP)</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">4000 米</p>
                  <p>（搭载智能飞行电池）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">6000 m</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>3000 米</p>
                </div>
              </div>
            </div>
          </div>

          <!-- 第五行内置电池 -->
          <div class="params-rows">
            <div class="params-rows-title">内置电池</div>

            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">34 分钟</p>
                  <p>（搭载智能飞行电池，21.6 km/h 匀速飞行）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">46 分钟[2]</p>
                  <p>（无风环境 25 km/h 匀速飞行）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>30 分钟</p>
                  <p>（无风环境下 17 公里/小时匀速飞行）</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第六工作电流/电压-->
          <div class="params-rows">
            <div class="params-rows-title">工作电流/电压</div>

            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">30 分钟</p>
                  <p class="hint">（智能飞行电池）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">40 分钟</p>
                </div>
                <div class="params-rows-list-cell">-</div>
              </div>
              <!-- 第二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">40 分钟</p>
                  <p class="hint">（长续航智能飞行电池[2]）</p>
                </div>
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell"></div>
              </div>
            </div>
          </div>
          <!-- 第七支持移动设备 -->
          <div class="params-rows">
            <div class="params-rows-title">支持移动设备</div>
            <div class="params-rows-list" style="border:0;">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">18 公里</p>
                  <p class="hint">
                    （智能飞行电池，无风环境 43.2 公里/小时匀速飞行）
                  </p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">30 km</p>
                </div>
                <div class="params-rows-list-cell">-</div>
              </div>
              <!-- 小二行 -->
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">25 公里</p>
                  <p class="hint">
                    （长续航智能飞行电池[2]，无风环境 43.2 公里/小时匀速飞行）
                  </p>
                </div>
                <div class="params-rows-list-cell"></div>
                <div class="params-rows-list-cell"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 充电器 -->
    <div class="params">
      <div class="center">
        <div class="params-content">
          <h2>充电器</h2>
          <!-- 第一行工作频率 -->
          <div class="params-rows">
            <div class="params-rows-title">输入</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">-</div>
                <div class="params-rows-list-cell">
                  <p class="hint">交流电：100 至 240 V，47 至 63 Hz，2.0 A</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">100 至 240 V，50/60 Hz，0.5 A</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第二行最大信号有效距离 -->
          <div class="params-rows">
            <div class="params-rows-title">输出</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">-</div>
                <div class="params-rows-list-cell">
                  <p class="hint">
                    USB-C：5.0 V⎓5.0 A/9.0 V⎓5.0 A/12.0 V⎓5.0 A/15.0 V⎓4.3A/20.0
                    V⎓3.25 A/5.0~20.0 V⎓3.25 A
                  </p>
                  <p>USB-A：5 V⎓2 A</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">12 V/1.5 A 或 9 V/2 A 或 5 V/3 A</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第三行工作环境温度 -->
          <div class="params-rows">
            <div class="params-rows-title">电压</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">-</div>
                <div class="params-rows-list-cell">
                  <p class="hint">15.4 V</p>
                </div>
                <div class="params-rows-list-cell">-</div>
              </div>
            </div>
          </div>

          <!-- 第四行发射功率(EIRP)-->
          <div class="params-rows">
            <div class="params-rows-title">额定功率</div>
            <div class="params-rows-list" style="border:0;">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">-</div>
                <div class="params-rows-list-cell">
                  <p class="hint">65 W</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>18 W</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 智能飞行电池 -->
    <div class="params">
      <div class="center">
        <div class="params-content">
          <h2>智能飞行电池</h2>
          <!-- 第一行工作频率 -->
          <div class="params-rows">
            <div class="params-rows-title">能量</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">18.1 Wh（智能飞行电池）</p>
                  <p>28.4 Wh（长续航智能飞行电池[2]）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">77 Wh</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">17.32 Wh</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第二行最大信号有效距离 -->
          <div class="params-rows">
            <div class="params-rows-title">容量</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>2453 mAh（智能飞行电池）</p>
                  <p>3850 mAh（长续航智能飞行电池[2]）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">5000 mAh</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">2250 mAh</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第三行工作环境温度 -->
          <div class="params-rows">
            <div class="params-rows-title">标称电压</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>7.38 V（智能飞行电池、长续航智能飞行电池[2]）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">15.4 V</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>7.7 V</p>
                </div>
              </div>
            </div>
          </div>

          <!-- 第四行发射功率(EIRP)-->
          <div class="params-rows">
            <div class="params-rows-title">充电限制电压</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>8.5 V（智能飞行电池、长续航智能飞行电池[2]）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">17.6 V</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>8.8 V</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 电池类型 -->

          <div class="params-rows">
            <div class="params-rows-title">电池类型</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>Li-ion（智能飞行电池、长续航智能飞行电池[2]）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">LiPo 4S</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>LiPo 2S</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 重量 -->
          <div class="params-rows">
            <div class="params-rows-title">重量</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>80.5 g（智能飞行电池） 121 g（长续航智能飞行电池[2]）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">335.5 g</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>82.5 g</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 充电环境温度 -->

          <div class="params-rows">
            <div class="params-rows-title">充电环境温度</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>5°C 至 40°C（智能飞行电池、长续航智能飞行电池[2]）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">5℃ 至 40℃</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>5℃ 至 40℃</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 最大充电功率 -->
          <div class="params-rows">
            <div class="params-rows-title">最大充电功率</div>
            <div class="params-rows-list"  style="border:0;">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>37 W（智能飞行电池） 58 W（长续航智能飞行电池[2]）</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">65 W</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>29 W</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- APP图传 -->
     <div class="params">
      <div class="center">
        <div class="params-content">
          <h2>APP / 图传</h2>
          <!-- 第一行工作频率 -->
          <div class="params-rows">
            <div class="params-rows-title">图传方案</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>DJI O3</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">O3+</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">增强版 Wi-Fi</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第二行最大信号有效距离 -->
          <div class="params-rows">
            <div class="params-rows-title">移动设备 App</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>DJI Fly</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">
                    DJI Fly</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">DJI Fly</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 第三行工作环境温度 -->
          <div class="params-rows">
            <div class="params-rows-title">实时图传质量</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>1080p/30fps</p>
                </div>
                <div class="params-rows-list-cell">
                   <p>遥控器：1080p/30fps 或 1080p/60fps</p>
                </div>
                <div class="params-rows-list-cell">
                 
                  <p>720p/30fps</p>
                </div>
              </div>
            </div>
          </div>

          <!-- 第四行发射功率(EIRP)-->
          <div class="params-rows">
            <div class="params-rows-title">实时图传最大码率</div>
            <div class="params-rows-list">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>飞行器 + 遥控器：18Mbps</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">16Mbps</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>飞行器 + 遥控器：4Mbps</p>
                </div>
              </div>
            </div>
          </div>
          <!-- 延时 -->
           <div class="params-rows">
            <div class="params-rows-title">延时
              <p>视乎实际拍摄环境及移动设备）</p>
            </div>
            <div class="params-rows-list"  style="border:0;">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p>飞行器 + 遥控器：约 120 毫秒</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">飞行器 + DJI RC-N1 遥控器：130 毫秒</p>
                  <p>飞行器 + DJI RC Pro：120 毫秒</p>
                </div>
                <div class="params-rows-list-cell">
                  <p>飞行器 + 遥控器：170 至 240 毫秒</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 其他 -->
     <div class="params">
      <div class="center">
        <div class="params-content">
          <h2>其他</h2>
          <!-- 第一行工作频率 -->
          <div class="params-rows">
            <div class="params-rows-title">注释</div>
            <div class="params-rows-list"  style="border:0;">
              <div class="params-rows-list-content">
                <div class="params-rows-list-cell">
                  <p class="hint">* 以上数据均在最新版固件下测得，请及时关注并保持当前固件为最新版本，以获得最佳性能。</p>
                  <br>
                  <p>[1] 飞行器标准重量（含智能飞行电池、桨叶和 microSD 卡）。产品重量可能会因物料批次不同等原因而有所差异，请以实际产品为准；该产品在部分国家或地区免注册，详情请查阅当地相关法律法规。</p>
                  <br>
                  <p>[2] 该配件须单独购买。</p>
                  <br>
                  <p>[3] 该数据采用 FCC 标准，在各种典型干扰强度的场景且无遮挡的环境下测得，不承诺实际飞行距离，仅供用户实际使用时作飞行距离参考。</p>
                  <br>
                  <p>[4] 由于当地政策法规限制，在日本、俄罗斯、以色列、乌克兰、哈萨克斯坦等区域激活产品时 5.8 GHz 频段将被自动禁用，在上述地点请使用 2.4 GHz 频段飞行，具体情况请查询并遵守当地法规。</p>
                  <br>
                  <p>[5] 最大水平飞行速度受当地法规动态限制，实际飞行时请遵守当地法律法规。</p>
                  <br>
                <p>[6] 飞行器重量增加会影响飞行动力。安装 DJI Mini 3 Pro 长续航智能飞行电池后，请勿安装桨叶保护罩或其他第三方配件等额外负载，以避免动力不足的情况。</p>
                </div>
                <div class="params-rows-list-cell">
                  <p class="hint">[1] 在室外空旷无干扰环境下测得，15 公里传输距离仅在 FCC 标准下实现；中国大陆地区采用 SRRC 标准，最远图传通信距离为 8 公里；以上数据为各标准下单程不返航飞行的最远通信距离，实际飞行时请留意 DJI Fly app 上的返航提示。
</p>
<br>
                  <p>[2] 本页面所列出的飞行时间，均为量产版 DJI Mavic 3 飞行器在受控测试环境下测得，在不同的外部环境、使用方式、固件版本下，结果或有不同程度的差异，请以实际体验为准。</p>
                  <br>
                  <p>[3] DJI Mavic 3 Cine 支持 Apple ProRes 422 HQ/Apple ProRes 422/Apple ProRes 422 LT 编码，Mavic 3 仅支持 H.264/H.265 编码。</p>
                  <br>
                  <p>
                    [4] 帧率数字为记录帧率，播放时默认表现为慢动作视频。
                  </p>
                </div>
                <div class="params-rows-list-cell">
                  
                  <p class="hint">[1] 飞行器起飞重量为 242 克（含电池、桨叶及 microSD 卡），产品重量可能会因物料批次不同等原因而有所差异，请以实际产品为准；该产品在部分国家或地区免注册，详情请查阅当地相关法律法规。以上数据均在最新版固件下测得，请及时关注并保持当前固件为最新版本，以获得更高性能。</p>
                  <br>
                  <p>[2] 由于当地政策法规限制，5.8 GHz 频段在日本、俄罗斯、以色列、乌克兰、哈萨克斯坦等区域会被自动禁用，在上述地点请使用 2.4 GHz 频段飞行，具体情况请查询并遵守当地法规。</p>
                  <br>
                  <p>[3] 以上数据为各标准下的最远通信距离，均在无干扰室外空旷环境下测得，实际飞行时请留意 DJI Fly app 上的返航提示。以下为适用各个标准的国家和地区。</p>
                  <br>
                  <p>SRRC 标准：中国大陆地区。</p>
                  <br>
                  <p>FCC 标准：美国、澳大利亚、加拿大、中国香港、中国台湾、智利、哥伦比亚、波多黎各等区域。</p>
                  <br>
                  <p>CE 标准：英国、俄罗斯、法国、德国、葡萄牙、西班牙、瑞士、中国澳门、新西兰、阿联酋等区域。</p>
                  <br>
                  <p>MIC 标准：日本。</p>
                </div>
              </div>
            </div>
          </div>
          
          
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      data: null,
      img1: "",
      pic1: "",
      img2: "",
      pic2: "",
      img3: "",
      pic3: "",
      scroll: 0,
      p1: null,
      p2: null,
      p3: null,
      p: null,
    };
  },
  // 计算属性
  computed: {},
  mounted() {
     document.body.style.backgroundColor = "#fff"
    //给窗口添加鼠标滚动监听事假
    window.addEventListener("scroll", this.menu);
    this.getData();

   console.log(this.$route.meta)
  },
  methods: {
    //点击图片切换数据
    toggleData1() {
      this.p1 = this.p[3];
    },
    toggleData2() {
      this.p2 = this.p[4];
    },
    toggleData3() {
      this.p3 = this.p[5];
    },
    //获取后台数据
    getData() {
      const url = "params/seap";
      this.axios.get(url).then((res) => {
        this.data = res.data;
        this.p = res.data.data;
        this.p1 = res.data.data[0];
        this.p2 = res.data.data[1];
        this.p3 = res.data.data[2];
        console.log(res);
      });
    },

    //给下拉区域的ul绑定点击事件 做事件委托 让li高亮,并且上面小标题的文字变化,下面的整片区域内容变化
    changeUlOne(e) {
      //console.log("被点击的元素是", e.target);
      if (e.target.localName == "li") {
          document.querySelector(".active").classList.remove("active");
        e.target.classList.add("active");
        // 点击切换文本内容
        item1.innerHTML = e.target.children[1].innerHTML;
        // 点击切换图片
        contentImg1.src = e.target.children[0].src;
      }
      if (e.target.localName == "img") {
         document.querySelector(".active").classList.remove("active");
        e.target.parentElement.classList.add("active");
        item1.innerHTML = e.target.nextElementSibling.innerHTML;
        contentImg1.src = e.target.src;
      }
      if (e.target.localName == "p") {
        document.querySelector(".active").classList.remove("active");
        e.target.parentElement.classList.add("active");
        item1.innerHTML = e.target.innerHTML;
        contentImg1.src = e.target.prevElementSibling.src;
      }
    },
    
    // 第二个小框
    changeUlTwo(e) {
      console.log("被点击的元素是", e.target);
      if (e.target.localName == "li") {
        document.querySelector(".activeTwo").classList.remove("activeTwo");
        e.target.classList.add("activeTwo");
        item2.innerHTML = e.target.children[1].innerHTML;
        // 点击切换图片
        contentImg2.src = e.target.children[0].src;
      }
      if (e.target.localName == "img") {
        document.querySelector(".activeTwo").classList.remove("activeTwo");
        e.target.parentElement.classList.add("activeTwo");
        item2.innerHTML = e.target.nextElementSibling.innerHTML;
        contentImg2.src = e.target.src;
      }
      if (e.target.localName == "p") {
        document.querySelector(".activeTwo").classList.remove("activeTwo");
        e.target.parentElement.classList.add("activeTwo");
        item2.innerHTML = e.target.innerHTML;
        contentImg2.src = e.target.prevElementSibling.src;
      }
    },
    // 第三个小框
    changeUlThree(e) {
      console.log("被点击的元素是", e.target);
      if (e.target.localName == "li") {
        document.querySelector(".activeThree").classList.remove("activeThree");
        e.target.classList.add("activeThree");
        item3.innerHTML = e.target.children[1].innerHTML;
        // 点击切换图片
        contentImg3.src = e.target.children[0].src;
      }
      if (e.target.localName == "img") {
        document.querySelector(".activeThree").classList.remove("activeThree");
        e.target.parentElement.classList.add("activeThree");
        item3.innerHTML = e.target.nextElementSibling.innerHTML;
        contentImg3.src = e.target.src;
      }
      if (e.target.localName == "p") {
        document.querySelector(".activeThree").classList.remove("activeThree");
        e.target.parentElement.classList.add("activeThree");
        item3.innerHTML = e.target.innerHTML;
        contentImg3.src = e.target.prevElementSibling.src;
      }
    },
    //监听到鼠标滚动之后的操作
    menu() {
      this.scroll = document.documentElement.scrollTop;
      //打印滚动距离
      //console.log(this.scroll)
      if (this.scroll > 100) {
        header.style.position = "sticky";
        header.style.top = "0px";
        header.style.left = "10%";
        header.style.opacity="1";
      } 
    },
    //  点击三角 切换下拉菜单和上三角
    goup1() {
      this.$refs.img1.classList.toggle("up");

      this.$refs.pic1.classList.toggle("hide");
      this.$refs.pic1.classList.toggle("show");

      // 其他两个兄弟要隐藏
      this.$refs.pic2.classList.add("hide");
       this.$refs.pic3.classList.add("hide");
        this.$refs.img3.classList.remove("up");
      this.$refs.img2.classList.remove("up");
    },
    //  点击三角 切换下拉菜单和上三角
    goup2() {
      this.$refs.img2.classList.toggle("up");
      this.$refs.pic2.classList.toggle("show");
      this.$refs.pic2.classList.toggle("hide");

      // 其他两个兄弟要隐藏
       this.$refs.pic1.classList.add("hide");
       this.$refs.pic3.classList.add("hide");
        this.$refs.img1.classList.remove("up");
      this.$refs.img3.classList.remove("up");
    },
    //  点击三角 切换下拉菜单和上三角
    goup3() {
      this.$refs.img3.classList.toggle("up");
      this.$refs.pic3.classList.toggle("show");

      this.$refs.pic3.classList.toggle("hide");

      // 其他两个兄弟要隐藏
      this.$refs.pic1.classList.add("hide");
      this.$refs.pic2.classList.add("hide");
      this.$refs.img1.classList.remove("up");
      this.$refs.img2.classList.remove("up");
    },
    // 鼠标移出ul区域内 自动收起
    gohide1() {
      this.$refs.pic1.classList.add("hide");
      // this.$refs.img1.classList.add("up");
      //  this.$refs.img2.classList.remove("up");
      // this.$refs.img3.classList.remove("up");
    },
    gohide2() {
      this.$refs.pic2.classList.add("hide");
      // this.$refs.img2.classList.add("up");
      // this.$refs.img1.classList.remove("up");
      // this.$refs.img3.classList.remove("up");
    },
    gohide3() {
      this.$refs.pic3.classList.add("hide");
      // this.$refs.img3.classList.add("up");
      //  this.$refs.img1.classList.remove("up");
      // this.$refs.img2.classList.remove("up");
    },
  },
};
</script>

<style lang="scss" scoped>
* {
  margin: 0;
  padding: 0;
}
.center {
  width: 1200px;
  margin: 0 auto;
}
.banner {
  
  background-color: #000;
  position: relative;
  color: #fff;
  padding: 64px 0;
  margin-bottom: 48px;
  h1 {
    font-size: 28px;
    line-height: 32px;
    font-weight: 500;
    margin-bottom: 8px;
  }
  p {
    font-size: 16px;
    line-height: 24px;
  }
}
.banner_content {
  width: 1200px;
  margin: 0 auto;
  position: relative;
  background-size: cover;
}
.header {
  margin-bottom: 50px;
  background-color: #fff;
  z-index: 20;
}
.header-box {
  display: flex;
  justify-content: space-between;
}
.header-left {
  font-size: 14px;
  line-height: 24px;
  width: 282px;
  display: flex;
  align-items: center;
  input {
    display: inline-block;
    margin-right: 8px;
    width: 16px;
    height: 16px;
    font-size: 16px;
    cursor: pointer;
    border: 1px solid #d8d8d8;
    outline: none;
  }
}
.header-right {
  width: 894px;
  display: flex;
  justify-content: space-between;
  list-style: none;
  .header-right-item {
    position: relative;
    width: 282px;
    .item {
      position: relative;
      display: flex;
      align-items: center;
      height: 40px;
      cursor: pointer;
      border-bottom: 2px solid rgba(0, 0, 0, 0.09);

      span {
        display: inline-block;
        width: 266px;
        cursor: pointer;
      }
      .header-right-img {
        width: 16px;
        height: 16px;
        background-image: url("../assets/compare/1.svg");
        background-position: center;
        background-repeat: no-repeat;
        background-size: contain;
        transition: all 0.25s ease;
      }
    }
  }
}
.header-right-img.up {
  transform: rotate(180deg);
}
.header-down.show {
  transition: opacity 0.2s ease 0s, max-height 0.5s ease 0.1s;
  max-height: calc(100vh - 144px);
  opacity: 1;
}
.header-down.hide {
  transition: opacity 0.1s ease 0.3s, max-height 0.5s ease 0s;
  max-height: 0;
  opacity: 0;
}
.header-down {
  background-color: white;
  display: block;
  position: absolute;
  top: 56x;
  width: 472px;
  height: auto;
  max-height: calc(100vh - 144px);
  // transition: opacity 0.2s ease 0s, max-height 0.5s ease 0.1s;
  overflow-x: hidden;
  overflow-y: scroll;
  z-index: 10;
  //opacity: 1;
  transform: translateX(-95px);
  box-shadow: 0 4px 8px rgb(0 0 0 / 10%);
}
.header-down-product {
  width: calc(100% - 48px);
  margin: 24px;
  display: flex;
  flex-wrap: wrap;
}

.header-down-product-card {
  position: relative;
  width: calc(33.333% - 45px);
  display: inline-block;
  margin-right: 8px;
  text-align: center;
  margin-top: 8px;
  border: 1px solid rgba(0, 0, 0, 0.15);
  border-radius: 4px;
  padding: 16px;
  cursor: pointer;
  transition: all 0.3s ease;
  vertical-align: top;
  div {
    position: absolute;
    left: 50%;
    top: 61%;
    transform: translateX(-50%);
    line-height: 16px;
    font-size: 10px;
    color: #52c41a;
    text-align: center;
  }
  img {
    height: auto;
    width: 100%;
  }
  p {
    line-height: 16px;
    font-size: 14px;
    margin-top: 8px;
  }
}
.header-down-product-card.active {
  border: 2px solid #1890ff;
  background-color: #e6f7ff;
  padding: 15px;
}
.activeTwo {
  border: 2px solid #1890ff;
  background-color: #e6f7ff;
  padding: 15px;
}
.activeThree {
  border: 2px solid #1890ff;
  background-color: #e6f7ff;
  padding: 15px;
}

// 第二册层 切换的内容层
.content {
  user-select: none;

  height: 700px;
  .box {
    width: 282px;
    display: inline-block;
  }
  ul.content-list {
    list-style: none;
    width: 894px;
    position: relative;
    left: 306px;
    display: flex;
    text-align: center;
    justify-content: space-between;
    li.cotent-list-item {
      display: inline-block;
      text-align: center;
      position: relative;
      width: 282px;
      padding-bottom: 80px;
      .cotent-list-img {
        position: relative;

        img {
          height: 218px;
          width: auto;
          margin-bottom: 8px;
          max-width: 100%;
        }
      }
    }
  }
}
.cotent-list-text {
  height: 144px;
  padding-top: 16px;
  margin-top: 16px;
  border-top: 1px solid #f0f1f2;
  padding-bottom: 16px;

  p {
    line-height: 24px;
    font-size: 14px;
  }
}
.cotent-list-price {
  width: 100%;
  border-top: 1px solid #f0f1f2;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  height: 200px;
  p {
    line-height: 24px;
    font-size: 20px;
  }
}
// 热点参数
.params {
  width: 100%;
  height: 100%;
  color: #3b3e40;
}
.params-content {
  padding-bottom: 32px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.09);
  h2 {
    padding-top: 64px;
    padding-bottom: 48px;
    font-size: 28px;
    font-weight: 500;
    line-height: 40px;
  }
  .params-rows {
    width: 100%;
    display: flex;
    justify-content: space-between;

    .params-rows-title {
      display: inline-block;
      vertical-align: top;
      width: 282px;
      font-weight: 500;
      font-size: 20px;
      line-height: 32px;
      margin-bottom: 32px;

      p {
        color: #919599;
        line-height: 16px;
        font-size: 14px;
        margin-top: 8px;
      }
    }

    .params-rows-list {
      display: inline-block;
      width: 894px;
      text-align: center;
      padding-bottom: 48px;
      margin-top: 4px;
      margin-bottom: 48px;
      border-bottom: 1px solid rgba(0, 0, 0, 0.09);
      .params-rows-list-content {
        padding-bottom: 32px;
        width: 100%;
        display: flex;
        justify-content: space-between;
        .params-rows-list-cell {
          display: inline-block;
          vertical-align: top;
          text-align: left;
          width: 282px;
          word-wrap: break-word;
          font-size: 16px;
          line-height: 1.5;
          .bold-large {
            font-weight: 500;
            line-height: 32px;
            font-size: 24px;
          }
          p {
            color: #919599;
            line-height: 16px;
            font-size: 14px;
            margin-top: 8px;
          }
        }
      }
    }
  }
}
</style>