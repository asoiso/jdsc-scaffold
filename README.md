# JDSC Scaffold

## 项目介绍

基于 Rush 和 PNPM 的 Monorepo 项目脚手架，集成了多个现代化的前后端框架和工具：

- [Next.js](https://nextjs.org/) - React 框架，用于构建现代化的 Web 应用
- [Strapi](https://strapi.io/) - Headless CMS，提供内容管理系统
- [Ant Design Pro](https://pro.ant.design/zh-CN/) - 企业级中后台前端/设计解决方案
- [Nuxt](https://nuxt.com/) - Vue.js 框架，用于构建现代化的 Web 应用

## 项目结构

```
├── apps/               # 业务应用
│   ├── admin/         # 后台管理系统
│   ├── cms/          # 内容管理系统
│   └── portal/       # 门户网站
├── packages/          # 公共包
│   ├── cli/          # 命令行工具
│   ├── common/       # 通用工具
│   ├── helper/       # 辅助函数
│   ├── hook/         # React Hooks
│   └── tsconfig/     # TypeScript 配置
└── playgrounds/       # 示例项目
    ├── ant-design-pro/ # Ant Design Pro 示例
    ├── next-hello/    # Next.js 示例
    ├── nuxt-hello/    # Nuxt.js 示例
    └── strapi-app/    # Strapi 示例
```

## 开发环境要求

- Node.js >= 20.0.0
- Rush >= 5.0.0
- PNPM >= 8.0.0

## 快速开始

### 首次使用

```bash
sh ./setup.sh
```

### 更新依赖

```bash
rush update
```

### 开发子项目

进入对应子项目目录，使用 rushx 执行 package.json 中的 scripts：

```bash
rushx dev
```

## 部署说明

项目支持多种部署方案：

- [Vercel](https://www.vercel.com/) - 适用于 Next.js 和 Nuxt.js 项目
- [Netlify](https://www.netlify.com/) - 适用于静态网站部署
