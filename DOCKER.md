# Инструкция по запуску проекта через Docker

## Требования

- Docker Desktop (для Windows/Mac) или Docker Engine (для Linux)

## Особенности

- **Используется Alpine Linux** - легковесный образ (~50MB вместо ~1GB)
- **Проект собирается один раз** при создании образа
- **Быстрый запуск** - приложение уже собрано, запускается мгновенно (< 1 секунда)
- **Multi-stage build** - финальный образ содержит только необходимые файлы
- **Простой запуск** - без docker-compose, только команды docker

## Быстрый старт

### 1. Сборка образа (один раз)

**Windows (PowerShell):**
```powershell
docker build -t laboratory-6 .
```

**Linux/Mac:**
```bash
docker build -t laboratory-6 .
```

### 2. Запуск приложения (быстро, без пересборки)

**Windows (PowerShell):**
```powershell
docker run --rm laboratory-6
```

**Linux/Mac:**
```bash
docker run --rm laboratory-6
```

### 3. Запуск тестов

**Windows (PowerShell):**
```powershell
# Все тесты
docker run --rm laboratory-6 sh -c "./Laboratory_6_test_npc && ./Laboratory_6_test_factory && ./Laboratory_6_test_arena && ./Laboratory_6_test_combat && ./Laboratory_6_test_file_loading"

# Отдельный тест
docker run --rm laboratory-6 ./Laboratory_6_test_npc
```

**Linux/Mac:**
```bash
# Все тесты
docker run --rm laboratory-6 sh -c "./Laboratory_6_test_npc && ./Laboratory_6_test_factory && ./Laboratory_6_test_arena && ./Laboratory_6_test_combat && ./Laboratory_6_test_file_loading"

# Отдельный тест
docker run --rm laboratory-6 ./Laboratory_6_test_npc
```

### Пересборка образа (если изменился код)

Если вы изменили исходный код, нужно пересобрать образ:

**Windows (PowerShell):**
```powershell
docker build --no-cache -t laboratory-6 .
```

**Linux/Mac:**
```bash
docker build --no-cache -t laboratory-6 .
```

### Размер образа

- **Финальный образ**: ~50MB (Alpine Linux)
- **Время запуска**: < 1 секунда (приложение уже собрано)
- **Время первой сборки**: ~2-3 минуты (установка пакетов)
- **Время последующих сборок**: ~30-60 секунд (благодаря кэшу Docker)

