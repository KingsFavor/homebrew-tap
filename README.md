# homebrew-tap

KingsFavor 의 macOS 도구용 Homebrew tap.

## Tap 등록

```bash
brew tap kingsfavor/tap
```

한 번 등록하면 아래 앱들을 `brew install --cask <이름>` 으로 설치할 수 있습니다.
(등록 없이 `kingsfavor/tap/<이름>` 전체 경로로 바로 설치해도 됩니다.)

## 앱 목록

### Port Killer

메뉴바에서 개발 포트를 점유한 프로세스를 확인하고 종료하는 도구.

```bash
brew install --cask kingsfavor/tap/port-killer
```

→ [KingsFavor/Mac-port-viewer](https://github.com/KingsFavor/Mac-port-viewer)

### Claude Usage

메뉴바에서 Claude 사용량을 모니터링하는 앱.

```bash
brew install --cask kingsfavor/tap/claude-usage
```

→ [KingsFavor/Claude-usage-MAC](https://github.com/KingsFavor/Claude-usage-MAC)

### TaskOcean

Google Tasks 를 항상 위에 띄워 두는 macOS 유틸리티. (macOS Sonoma 이상)

```bash
brew install --cask kingsfavor/tap/taskocean
```

→ [KingsFavor/Taskocean](https://github.com/KingsFavor/Taskocean)

## 업데이트 · 제거

```bash
brew upgrade --cask port-killer      # 개별 업데이트
brew uninstall --cask port-killer    # 제거 (--zap 로 설정까지 삭제)
```

## 참고

- 각 Cask 는 해당 앱의 릴리즈 CI 가 새 버전을 낼 때마다 자동으로 갱신됩니다.
- 공증(notarization) 전 빌드는 `--no-quarantine` 를 붙이면 Gatekeeper 경고를 우회할 수 있습니다.
