#!/usr/bin/env bash
set -euo pipefail

SKILL_NAME="academic-notebook"
TARGET_DIR="${HOME}/.claude/skills/${SKILL_NAME}"
SOURCE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing skill '${SKILL_NAME}'"
echo "Source: ${SOURCE_DIR}"
echo "Target: ${TARGET_DIR}"

mkdir -p "${TARGET_DIR}"

cp -f "${SOURCE_DIR}/SKILL.md" "${TARGET_DIR}/SKILL.md"

for dir in agents assets references scripts; do
  if [ -d "${SOURCE_DIR}/${dir}" ]; then
    mkdir -p "${TARGET_DIR}/${dir}"
    cp -Rf "${SOURCE_DIR}/${dir}/." "${TARGET_DIR}/${dir}/"
  fi
done

echo "Skill installed successfully at ${TARGET_DIR}"
