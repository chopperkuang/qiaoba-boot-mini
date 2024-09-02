# qiaoba-boot-mini
基础 `ruoyi-vue-pro` 简化及小优化版本。

优化点：
- 精简项目初始化的数据
- 精简配置项，当有需要的模块时再引入
- `creator` 和 `updater` 改为 `Long` 类型，避免数据库关联时字段类型不一致。