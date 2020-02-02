## 如何带新人

- 确保他能够掌握工作需要的工具。（需要文档）
- 确保他了解工作的流程和方式。（需要文档）
- 确保他知道应该去哪里获得文档或其他知识。（需要文档）
- 听取其对于当前工作内容以及工作方式的意见。（需要沟通和记录）
- 了解他当前的能力水平，并为其安排相应的学习内容与成长计划，为其安排适合的工作。
- review 他的工作内容，确保其具备独立工作的能力。
- 安排工作的时候，应当清楚的解释工作内容的意义，期望能带来的价值。

## 如何进行 code review

- 不能容忍有功能瑕疵的代码，比如会导致死锁，会导致事务过长，会导致数据一致性下降。
- 不能容忍读不懂的代码，代码写出来就是用来读的。
- 对代码风格有基本的要求，对命名有基本的要求，需要形成团队规范。
- 给予对方一定的正面反馈，对有瑕疵的代码提出疑虑和建议，提出的问题和建议应当是能帮助对方的。
- 提供一些 reference，比如相关的链接或截图，帮助对方理解自己的代码审查结果。

对于业务团队来说，通常需求都非常满，上线压力过大，常常会出现一切都要为上线时间让步的情况。如果上层不重视代码质量，则非常容易导致「公地悲剧」。代码质量本身并不容易制定 KPI、OKR 等考核，因此常常为业务压力让步，需求排期过程中往往是先将开发时间占满，然后由测试保证软件功能无瑕疵。

code review 可以让代码再功能实现的基础上，减少 bug，更能提升代码质量，提升代码的可读性，可维护性，可重用性。

而关于排期太紧的问题，应当从项目管理角度解决，毕竟代码的长期可维护是非常重要的指标（尽管我们在 OKR 中看不到它）。至于需求变化太快的问题，则应该层需求侧加以解决。遇到问题应该多问几个为什么？不止是说需求变化太快了，而要问：为什么需求变化这么快？然后解决需求变化快的问题。（比如需求调研是不是应该更准确？业务是不是应该隔离？代价是什么？）

如果是进入新的团队，跟从、理解、信任是融入的关键。还是要学会求同存异。

## 一些鸡汤

How to get rich: 专业知识 + 责任感 + 杠杆。

将获得专业知识的过程当作一场游戏，而非一份工作。专业知识应当高度技术性或创造性，它应当无法被外包或自动化。

尽你所能的努力工作。即使如此，你选择和谁一起工作、还有你工作什么，要比你努力程度更重要。

在你的领域里成为世界上最优秀的人。不断重新定义你所做的事情，直至你是这个领域里做世界第一。

没有一项叫作“商学”的技能。别去读那些商业杂志，也别去上那些商学课程。去学学微观经济学、博弈论、心理学、说服他人的艺术、伦理学、数学和计算机科学。

资本意味着金钱。融资的方法：运用你特有的专业知识，承担责任，并且展现出优质判断力。劳动力意即雇佣他人为你工作。这个是最古老以及最为人所争抢的杠杆。劳动力杠杆会令你的父母对你刮目相看，但不要浪费你的生命追随它。资本和劳动力是被动的杠杆。所有人都在追逐资本，但别人需要同意投资给你。所有人都想尝试去当领袖，但别人需要愿意跟随你。代码和媒体则无需他人许可，而正是这些造就了时代新富。软件和媒体在你睡觉的时候还能工作赚钱。

杠杆是你判断力的放大器。

读比听更快。做比看更快。

投资人问你：如果巨头决定进军你的行业你怎么办？你应当回答："welcome"