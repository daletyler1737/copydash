# CopyDash（妙复制大师）支持网站 / Support site

这个仓库只干两件事：给 Microsoft Store 上架提供**支持网站 URL** 和**隐私策略 URL**。

- 支持页：https://daletyler1737.github.io/copydash/
- 隐私策略：https://daletyler1737.github.io/copydash/privacy.html

## 改成什么用在哪里（Partner Center「属性」页）

| Partner Center 字段 | 填什么 |
|---|---|
| 网站 | `https://daletyler1737.github.io/copydash/` |
| 支持部门联系信息 | `https://github.com/daletyler1737/copydash/issues`（也接受邮箱） |
| 隐私策略 | 选「提供隐私策略文本」，贴项目仓库 `docs/隐私策略-粘贴用.txt` 全文；或改选「提供 URL」填上表的隐私策略链接 |

## 内容怎么改

`index.html`（支持页）和 `privacy.html`（隐私策略）都是纯静态单文件，没有外部 CDN 依赖，改完 commit + push 即可，Pages 约 1 分钟自动重新发布。

## 待办

- [ ] 上架后把支持页里的「商店链接」补上真实地址
- [ ] 如果想让客户发邮件而不是开 issue，把联系邮箱填进两个页面的支持段

## 本地预览

```bash
python -m http.server 8080
# 浏览器打开 http://localhost:8080/index.html
```
