### I Love Hearthstone
============

這是一個幫你計算在爐石戰記這款遊戲中，發生隨機事件的機率結果。

目前雖然只有祕法飛彈機制的函數，但未來會新增更多卡片功能。

  * 集體恐慌
  * 褻瀆
  * 任何與隨機有關的機制

注意 --- 以下都是模擬出來的結果 --- 只能讓你有最高的機率做正確的選擇，
並不能保證勝利。

若你想知道這些機率結果，可以依下列步驟安裝此套件。
~~~R
 install.packages("devtools")
 library(devtools)
 install_github("schifferm/Statistical-simulation/ILOVEHEARTHSTONE")
 library(ILOVEHEARTHSTONE)
~~~
接著就可以使用祕法飛彈來模擬了，假設對面英雄滿血，並且場上站了2血與3血怪各一隻，
下面的函數可以幫你計算存活機率：

~~~R
> ArcaneMissiles(c(3,2,30),1,3)
~~~
若你有兩發祕法飛彈，結果如下：

~~~R
> ArcaneMissiles(c(3,2,30),1,6)
     30      3      2
[1,]  1 0.6075 0.3205
~~~
這結果告訴你，記得先點天生技，別想賽。
***
世界冠軍Tom60229說過：

## 唯有把細節做到完美，把失誤降到最低，才有資格提到「運氣」這兩個字。
