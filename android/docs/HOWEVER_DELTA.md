# howeverandroid-architecture-lab 改造说明

## 当前已落地改造

1. 包名从 `com.example.android.architecture.blueprints.todoapp` 调整为 `com.howeveryir.android.archlab.todoapp`。
2. `applicationId` 调整为 `com.howeveryir.android.archlab.todoapp`。
3. 代码目录按新命名空间迁移。
4. 应用名改为 `However Task Lab`。
5. 新增本地化配置样例 `config/local.sample.properties`。
6. 新增衍生项目说明协议 `LICENSE.HOWEVER`。
7. 新增上游同步脚本 `scripts/sync_upstream.sh`。

## 后续建议

- 按环境分层接入真实 API。
- 增加埋点、崩溃、性能监控。
- 逐步将 fake remote 切换为真实网络数据源。
