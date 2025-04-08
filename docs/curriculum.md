# SmartOrder プロジェクト 実践型カリキュラム

## ✨ 概要
**SmartOrder** - B2B 受発注クラウド API サービス

目的: API + クラウドネイティブ + 認証技術を実践で習得し、ポートフォリオとして完成させる。

## テクノロジースタック
- Node.js または Laravel
- AWS Lambda + API Gateway
- DynamoDB / S3 / CloudFront
- Terraform / GitHub Actions
- OAuth2.0 / JWT 認証
- OpenAPI / Swagger

## リポジトリ構成
```
/project-root
├── README.md
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
| **Week 1** | リポジトリ準備 (リポジト作成 / README / docs) |
| **Week 2** | API 設計書作成 (OpenAPI / AI レビュー) |
| **Week 3** | インフラ設計 (Terraform / AWS 構成図 / CI 基盤) |
| **Week 4** | CRUD API 実装 (注文 API / DynamoDB / 動作確認) |
| **Week 5** | 認証・セキュリティ (JWT / OAuth2 / WAF) |
| **Week 6** | CI/CD & テスト (GitHub Actions / 単体テスト / デプロイ) |
| **Week 7** | パフォーマンス & 監視 (CloudWatch / キャッシュ / 負荷診断) |
| **Week 8** | アウトプット整理 (docs / 技術ブログ / 公開) |

## 🤖 AI 活用プロンプト集
- "OpenAPI YAML 作成してください"
- "Terraform AWS Lambda 構成コードを生成してください"
- "GitHub Actions で AWS Lambda デプロイワークフローを生成してください"
- "API Gateway と WAF の設計案を作成してください"
- "注文 API の Jest テストコードを生成してください"

## 🌟 ゴール
- 実務レベルのポートフォリオ完成
- GitHub 公開 & 技術ブログ
- 案件実戦レベルの準備完了
