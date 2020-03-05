应用层： MapReduce, Spark
计算层： yarn
存储层： hdfs 和 hbase

还有一层应用是建立在这三层之上的，如 pig, hive 和 crunch。

## yarn 运行机制

yarn 通过两类长期运行的守护进程提供服务：管理集群上资源使用的资源管理器，运行在集群中所有节点上且能够启动和监控容器的节点管理器。容器用于执行特定应用程序的进程。

为了在 yarn 上运行一个应用，首先，客户端联系资源管理器，要求它运行一个 application master 进程。然后资源管理器找到一个能够在容器中启动 application master 的节点管理器。

从无到有编写一个 yarn 应用时一件相当复杂的事情，但在很多情况下不必这样做，有很多现成的应用。例如，如果你有兴趣运行一个作业的有向图，spark 就很合适；如果你对流处理感兴趣，spark，storm 都能提供帮助。

## yarn 中的调度