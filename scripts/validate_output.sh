#!/bin/bash
# validate_output.sh
# 验证生成内容是否符合输出规格（标题字数、摘要字数、封面比例）
# 用法：echo "标题内容" | bash validate_output.sh --title
#       echo "摘要内容" | bash validate_output.sh --summary

MODE=$1
INPUT=$(cat)

# 统计中文字符数（含标点）
char_count=$(echo "$INPUT" | wc -m)

case "$MODE" in
  --title)
    if [ "$char_count" -le 40 ]; then
      echo "✅ 标题字数合规：${char_count}字（≤40字）"
      exit 0
    else
      echo "❌ 标题超限：${char_count}字（超出 $((char_count - 40)) 字）"
      exit 1
    fi
    ;;
  --summary)
    if [ "$char_count" -le 120 ]; then
      echo "✅ 摘要字数合规：${char_count}字（≤120字）"
      exit 0
    else
      echo "❌ 摘要超限：${char_count}字（超出 $((char_count - 120)) 字）"
      exit 1
    fi
    ;;
  --cover-ratio)
    # 检查 HTML 中的宽高比是否为 7:3
    if echo "$INPUT" | grep -q "aspect-ratio: 7 / 3\|1260.*540\|7:3\|21:9"; then
      echo "✅ 封面宽高比合规：21:9（7:3）"
      exit 0
    else
      echo "❌ 封面宽高比未检测到 21:9 规格，请检查 CSS 中的 aspect-ratio 或尺寸设定"
      exit 1
    fi
    ;;
  *)
    echo "用法："
    echo "  echo '标题内容' | bash validate_output.sh --title"
    echo "  echo '摘要内容' | bash validate_output.sh --summary"
    echo "  echo '<html>...' | bash validate_output.sh --cover-ratio"
    exit 1
    ;;
esac
