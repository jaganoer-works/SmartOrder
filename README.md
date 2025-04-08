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
├── Makefile
├── .env.example
├── docs/
│   ├── architecture.md
│   ├── api-spec.yaml
│   └── security.md
├── infrastructure/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── scripts/
│   └── create-issues.sh
├── app/
│   ├── Console/
│   ├── Exceptions/
│   ├── Http/
│   │   ├── Controllers/
│   │   └── Middleware/
│   └── Models/
├── bootstrap/
├── config/
├── database/
│   ├── migrations/
│   ├── seeders/
│   └── factories/
├── public/
├── resources/
├── routes/
├── storage/
├── tests/
├── .github/
│   └── workflows/
└── LICENSE
```

## 開発環境セットアップ手順

1. プロジェクトクローン
```bash
git clone https://github.com/【あなたのユーザー名】/smartorder.git
cd smartorder
```

2. Laravel プロジェクト作成
```bash
composer create-project --prefer-dist laravel/laravel .
```

3. .env ファイル作成
```bash
cp .env.example .env
```

4. .env ファイルの DB 設定
```
DB_CONNECTION=pgsql
DB_HOST=db
DB_PORT=5432
DB_DATABASE=smartorder
DB_USERNAME=postgres
DB_PASSWORD=password
```

5. アプリケーションキー生成
```bash
make key-generate
```

6. マイグレーション実行
```bash
make migrate
```

7. Docker コンテナ起動
```bash
make up
```

8. アプリケーションにアクセス
ブラウザで [http://localhost:8000](http://localhost:8000) にアクセス！

9. プロジェクトボード作成（Issue 一括作成）
```bash
make issues
```

10. Swagger UI にアクセスして API ドキュメント確認

まず、`docs/api-spec.yaml` がホスト側に存在することを確認してください。
その上で以下を実行します：

```bash
make down
make up
```

ブラウザで [http://localhost:8080](http://localhost:8080) にアクセスすると、SmartOrder API ドキュメントが表示されます！

---

## 📊 アーキテクチャ概要

SmartOrder プロジェクトの全体像は以下の通りです：

### システム構成図
- ユーザー → API Gateway → Laravel アプリケーション
- Laravel アプリケーション → PostgreSQL (RDS 予定)
- Laravel アプリケーション → S3 (ファイル保存)
- CloudFront 経由で静的ファイル配信
- AWS WAF によるセキュリティ対策
- Terraform でインフラ管理
- GitHub Actions で CI/CD 自動化
- CloudWatch による監視とログ管理

### アプリケーション構成
- **Laravel** : API サーバー、認証、CRUD 処理
- **PostgreSQL** : データ永続化
- **Docker Compose** : ローカル開発環境
- **Terraform** : AWS インフラ自動化
- **GitHub Actions** : CI/CD パイプライン

### セキュリティ
- JWT / OAuth2.0 による API 認証
- WAF / API Gateway で外部からの攻撃防御
- .env による環境変数管理

---

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
