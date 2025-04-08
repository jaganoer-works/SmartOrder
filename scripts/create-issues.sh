#!/bin/bash

REPO="https://github.com/jaganoer-works/SmartOrder"

declare -a issues=(
  "Week 1: リポジトリ初期セットアップ|リポジトリ作成 / 初期設定 / README / docs 構成"
  "Week 1: Docker 環境構築（Laravel + PostgreSQL）|Dockerfile / docker-compose.yml / .env.example 作成"
  "Week 2: API 設計書（OpenAPI）作成|エンドポイント設計 & OpenAPI 仕様書作成"
  "Week 2: API 設計 AI レビュー依頼|API 設計書を AI にレビュー依頼"
  "Week 3: Terraform 初期構成|AWS インフラの Terraform 初期セット"
  "Week 3: AWS 構成図作成|docs/architecture.md に AWS 構成図追加"
  "Week 3: GitHub Actions 基盤構築|CI/CD パイプライン構築"
  "Week 4: 注文 API 実装|Laravel 注文 API を作成"
  "Week 4: PostgreSQL テーブル設計|DB テーブル設計とマイグレーション"
  "Week 4: API ローカル動作確認|Postman などで動作確認"
  "Week 5: JWT / OAuth2.0 実装|Laravel で JWT 認証導入"
  "Week 5: AWS WAF 設定|AWS WAF を導入しセキュリティ強化"
  "Week 6: GitHub Actions CI/CD 構築|CI/CD 完成 & 自動デプロイ"
  "Week 6: PHPUnit テスト作成|単体テスト作成とカバレッジ向上"
  "Week 6: デプロイ & 動作確認|本番環境へデプロイ"
  "Week 7: CloudWatch ログ設計|監視とログ設計"
  "Week 7: Rate Limit / キャッシュ設計|API キャッシュ戦略 & レート制限"
  "Week 7: 負荷試験シナリオ作成|負荷試験シナリオの AI 作成"
  "Week 8: docs 更新|設計書・ドキュメント最終更新"
  "Week 8: 技術ブログ執筆|アウトプットとしてブログ投稿"
  "Week 8: GitHub リポジトリ公開|リポジトリ公開と整理"
)

for issue in "${issues[@]}"
do
  IFS="|" read -r title body <<< "$issue"
  echo "Creating issue: $title"
  gh issue create --repo "$REPO" --title "$title" --body "$body"
done

echo "✅ 全ての Issue を作成しました！"
