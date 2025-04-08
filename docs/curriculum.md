# SmartOrder プロジェクト 実践型カリキュラム

## ✨ 概要
**SmartOrder** - B2B 受発注クラウド API サービス

目的: API + クラウドネイティブ + 認証技術を実践で習得し、ポートフォリオとして完成させる。

## テクノロジースタック
- Laravel + Docker Compose
- PostgreSQL
- AWS Lambda + API Gateway
- S3 / CloudFront
- Terraform / GitHub Actions
- OAuth2.0 / JWT 認証
- OpenAPI / Swagger

## リポジトリ構成
```
/project-root
├── README.md
├── docker-compose.yml
├── Dockerfile
├── docs/
│   ├── architecture.md
│   ├── api-spec.yaml
│   └── security.md
├── infrastructure/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── src/
│   ├── handlers/
│   ├── services/
│   └── utils/
├── .github/
│   └── workflows/
├── tests/
└── LICENSE
```

## 週次タスク

| 週 | 内容 |
|---|---|
| **Week 1** | リポジトリ準備 (リポジトリ作成 / README / docs / Docker 環境構築) |
| **Week 2** | API 設計書作成 (OpenAPI / AI レビュー) |
| **Week 3** | インフラ設計 (Terraform / AWS 構成図 / CI 基盤) |
| **Week 4** | CRUD API 実装 (注文 API / PostgreSQL / 動作確認) |
| **Week 5** | 認証・セキュリティ (JWT / OAuth2 / WAF) |
| **Week 6** | CI/CD & テスト (GitHub Actions / 単体テスト / デプロイ) |
| **Week 7** | パフォーマンス & 監視 (CloudWatch / キャッシュ / 負荷診断) |
| **Week 8** | アウトプット整理 (docs / 技術ブログ / 公開) |

## 🤖 AI 活用プロンプト集
- "OpenAPI YAML を作成してください（Laravel API 用）"
- "Terraform で AWS 環境（EC2 / RDS / S3）構成コードを生成してください"
- "GitHub Actions で Laravel アプリケーションの CI/CD ワークフローを生成してください"
- "AWS WAF の設計案と API Gateway の構成を作成してください（EC2 または ECS 構成想定）"
- "注文 API の PHP Unit テストコードを生成してください（Laravel 用）"

## 🌟 ゴール
- 実務レベルのポートフォリオ完成
- GitHub 公開 & 技術ブログ
- 案件実戦レベルの準備完了