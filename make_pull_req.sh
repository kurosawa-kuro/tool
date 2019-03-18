#!/bin/bash

echo "【タイトルを入力して下さい。】"
read TITLE
echo "【ブランチを入力して下さい。】"
read BRANCH
echo "【チケットのURLを入力して下さい。】"
read URL
echo ""
echo "【ブランチ元がmasterではない場合は入力して下さい。】"
read NOTMASTER
echo ""



if [ -n "$NOTMASTER" ]; then
    echo "[タイトル]:$TITLE  [ブランチ]:$BRANCH  [チケットURL]:$URL [ブランチ元]:$NOTMASTER"
    echo ""
    echo ""

    echo "###【Git Operation】########################################################"
    echo "# ローカルブランチ作成"
    echo "git checkout $NOTMASTER"
    git checkout $NOTMASTER
    echo "git pull"
    git pull
    echo "git checkout -b $BRANCH"
    git checkout -b $BRANCH
    echo ""
    echo "# 空のコミット"
    # echo "git commit --allow-empty -m \"[WIP] $TITLE\""
    git commit --allow-empty -m "[WIP] $TITLE"
    echo ""
    echo "# リモートブランチに push"
    echo "git push origin $BRANCH"
    git push origin $BRANCH
    echo ""
    echo "# リモートブランチと紐付け"
    echo "git branch -u origin/$BRANCH"
    git branch -u origin/$BRANCH
    echo ""
    echo "# ローカルブランチがどのリモートブランチと紐付いているか確認"
    echo "git branch -vv"
    git branch -vv
    echo ""

    echo "###【Pull Request Description】########################################################"
    echo "#  **【調査中】**"
    echo ""
    echo "# やる事"
    echo "- [ ] xxxx"
    echo "- [ ] xxxx"
    echo "  - [ ] xxxx"
    echo "- [ ] xxxx"
    echo "  ~~- [ ] xxxx~~"
    echo ""
    echo "# やらない事"
    echo ""
    echo "# スクリーンショット"
    echo "## TITLE"
    echo "| 修正前 | 修正後 |"
    echo "|:-----------:|:------------:|"
    echo "|修正前画像|修正後画像| "
    echo ""
    echo "# Trello"
    echo "[$TITLE]($URL)"
    echo ""
    echo "# ブランチ元"
    echo "$NOTMASTER"
    echo ""
    echo "# 備考"
    echo "[TITLE](URL)"
else
    echo "[タイトル]:$TITLE  [ブランチ]:$BRANCH  [チケットURL]:$URL"
    echo ""
    echo ""

    echo "###【Git Operation】########################################################"
    echo "# ローカルブランチ作成"
    echo "git checkout master"
    git checkout master
    echo "git checkout -b $BRANCH"
    git checkout -b $BRANCH
    echo ""
    echo "# 空のコミット"
    # echo "git commit --allow-empty -m \"[WIP] $TITLE\""
    git commit --allow-empty -m "[WIP] $TITLE"
    echo ""
    echo "# リモートブランチに push"
    echo "git push origin $BRANCH"
    git push origin $BRANCH
    echo ""
    echo "# リモートブランチと紐付け"
    echo "git branch -u origin/$BRANCH"
    git branch -u origin/$BRANCH
    echo ""
    echo "# ローカルブランチがどのリモートブランチと紐付いているか確認"
    echo "git branch -vv"
    git branch -vv
    echo ""

    echo "###【Pull Request Description】########################################################"
    echo "#  **【調査中】**"
    echo ""
    echo "# やる事"
    echo "- [ ] xxxx"
    echo "- [ ] xxxx"
    echo "  - [ ] xxxx"
    echo "- [ ] xxxx"
    echo "  ~~- [ ] xxxx~~"
    echo ""
    echo "# やらない事"
    echo ""
    echo "# スクリーンショット"
    echo "## TITLE"
    echo "| 修正前 | 修正後 |"
    echo "|:-----------:|:------------:|"
    echo "|修正前画像|修正後画像| "
    echo ""
    echo "# Trello"
    echo "[$TITLE]($URL)"
    echo ""
    echo "# 備考"
    echo "[TITLE](URL)"
fi