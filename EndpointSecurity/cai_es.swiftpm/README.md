# cai_es

命令行工具。主要功能记录libEndpointSecurity库中产生的事件。
参数：
1. 配置文件：包含订阅的事件数组。默认全部。
2. 输出文件夹：默认当前文件夹。

## 运行
1. Debug process as root
2. Build post-actions add script
`/usr/bin/codesign --force --sign - -o runtime --entitlements ${WORKSPACE_PATH}/../../../es_client.entitlements --timestamp\=none --generate-entitlement-der ${BUILT_PRODUCTS_DIR}/cai_es `
