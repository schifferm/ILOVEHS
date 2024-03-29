# I Love Hearthstone 
============

這是一個幫你計算在爐石戰記這款遊戲中，發生隨機事件的機率結果。

目前雖然只有秘法飛彈機制(取後不放回)的函數，但未來會新增更多卡片功能。

  * 集體恐慌
  * 褻瀆
  * 任何與隨機有關的機制。

注意 --- 以下都是模擬出來的結果 --- 只能讓你有最高的機率做正確的選擇，
並不能保證勝利。

若你想知道這些機率結果，可以依下列步驟安裝此套件。
~~~R
 install.packages("devtools")
 library(devtools)
 install_github("schifferm/ILOVEHS/ILOVEHEARTHSTONE",force=TRUE)
 library(ILOVEHEARTHSTONE)
~~~
接著就可以使用秘法飛彈來模擬了，假設對面英雄滿血，並且場上站了2血與3血怪各一隻，
下面的函數可以幫你計算存活機率：

~~~R
> ArcaneMissiles(c(3,2,30),1,3)
~~~
若你有兩發秘法飛彈，結果如下：

~~~R
> ArcaneMissiles(c(3,2,30),1,6)
     30      3      2
[1,]  1 0.6075 0.3205
~~~
這結果告訴你，記得先點天生技，別想賽。
***
世界冠軍Tom60229說過：

### 唯有把細節做到完美，把失誤降到最低，才有資格提到「運氣」這兩個字。

## 函數介紹

### ArcaneMissiles
============

一個用來計算打出秘法飛彈這張卡的剩餘場面結果的函數。在數學上是一種取後不放回的條件機率問題。

#### 參數介紹 

| 參數名稱 | 說明 |
| ------ | ----------- |
| enemyHP   | 敵人血量，可以是一整數或向量。 |
| damage | 每次造成的傷害量，是一整數，預設為1。 |
| times    | 造成傷害的次數，是一整數，預設為3。 |
| n    | 執行這張卡的效果次數，數值越大執行時間越慢，但得到的結果越精準，預設10000次已經非常足夠。 |

#### 範例

以下是兩發秘法飛彈打在英雄、二血及三血的怪物上，輸出如下：

~~~R
> ArcaneMissiles(c(3,2,30),1,6)
     30      3      2
[1,]  1 0.6075 0.3205
~~~

它將會依敵人血量排序，並給你存活在場上的機率值，這些資訊足夠你判斷是否該在這個時機打出秘法飛彈。

## 參考

[秘法飛彈](https://playhearthstone.com/zh-tw/cards/564-arcane-missiles)


