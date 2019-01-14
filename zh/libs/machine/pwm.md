machine.PWM
========

PWM： 脉宽调制模块， 硬件支持的PWM， 可以指定任意引脚（0到47引脚）

## 构造函数

```python
class machine.PWM(tim, freq, duty, pin, enable=True)
```

通过指定的参数新建一个 PWM 对象

### 参数

* `tim`: 每个PWM依赖一个定时器来产生波形， 所以这里需要传一个定时器对象
* `freq`： PWM 波形频率
* `duty`： PWM 占空比， 指高电平占整个周期的百分比，取值：[0,100]
* `enable`： 是否立即开始产生波形，默认位`True`，及对象生成后立即开始在指定的引脚上产生 PWM 波形

## 方法

### init

类似构造函数

#### 参数

与构造函数相同

```python
PWM.init(tim, freq, duty, pin, enable=True)
```

#### 返回值

无


### freq

获取或者设置 PWM 频率

#### 参数

* `freq`： PWM 频率， 可选， 如果不传参数则步设置只返回当前频率值

#### 返回值

当前设置的实际的 PWM 频率


### duty

获取或者设置 PWM 占空比

#### 参数

* `duty`： PWM 占空比 可选， 如果不传参数则步设置只返回当前占空比值

#### 返回值

当前设置的 PWM 占空比值


### enable

使能 PWM 输出， 使指定的引脚上立即产生波形

#### 参数

无

#### 返回值

无

### disable

失能 PWM 输出， 指定的引脚不再产生波形

#### 参数

无

#### 返回值

无

### deinit/\__del\__

注销 PWM 硬件，释放占用的资源，关闭 PWM 时钟

e.g.
```python
pwm.deinit()
```
或者
```python
del pwm
```
#### 参数

无

#### 返回值

无


## 常量

无


## 例程


### 例程 1 （呼吸灯）

```
from machine import Timer,PWM
import time

tim = Timer(Timer.TIMER0, Timer.CHANNEL0, mode=Timer.MODE_PWM)
ch = PWM(tim, freq=500000, duty=50, pin=board_info.LED_G)
duty=0
dir = True
while True:
    if dir:
        duty += 10
    else:
        duty -= 10
    if duty>100:
        duty = 100
        dir = False
    elif duty<0:
        duty = 0
        dir = True
    time.sleep(0.05)
    ch.duty(duty)
```

### 例程 2

```
import time
import machine

tim = machine.Timer(machine.Timer.TIMER0, machine.Timer.CHANNEL0, mode=machine.Timer.MODE_PWM)
ch0 = machine.PWM(tim, freq=3000000, duty=20, pin=board_info.LED_G, enable=False)
ch0.enable()
time.sleep(3)
ch0.freq(2000000)
print("freq:",ch0.freq())
ch0.duty(60)
time.sleep(3)
ch0.disable()
```

