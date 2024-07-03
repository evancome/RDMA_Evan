---
make ip的时候需要把ib_transport文件夹的rocev2_config.hpp删掉
systhesis需要将rocev2_config.hpp添加到ib文件中.

本次修改添加了MR模块

进行C测试的时候,在prj的Source文件夹包含文件:
ib_mr.cpp
rocev2_config.hpp
Test Bench 文件夹包含:
TB_ib_mr
---

代码本地目录位置为: 
/home/liyomi/coyote_mr/coyote_0424/coyote
