# Multi-stage build для оптимизации размера образа
# Этап 1: Сборка проекта
FROM alpine:latest AS builder

# Установка инструментов для сборки
RUN apk add --no-cache \
    g++ \
    cmake \
    make \
    git \
    linux-headers \
    musl-dev

# Установка рабочей директории
WORKDIR /app

# Копирование файлов проекта
COPY CMakeLists.txt ./
COPY main.cpp ./
COPY test_main.cpp ./
COPY include/ ./include/
COPY src/ ./src/
COPY tests/ ./tests/

# Сборка проекта
RUN mkdir -p build && \
    cd build && \
    cmake .. && \
    cmake --build . -j$(nproc)

# Этап 2: Финальный образ только с необходимыми файлами
FROM alpine:latest

# Установка только runtime зависимостей
RUN apk add --no-cache \
    libstdc++ \
    libgcc

# Установка рабочей директории
WORKDIR /app

# Копирование собранных бинарников из builder
COPY --from=builder /app/build/Laboratory_6_exe ./
COPY --from=builder /app/build/Laboratory_6_test_demo ./
COPY --from=builder /app/build/Laboratory_6_test_npc ./
COPY --from=builder /app/build/Laboratory_6_test_factory ./
COPY --from=builder /app/build/Laboratory_6_test_arena ./
COPY --from=builder /app/build/Laboratory_6_test_combat ./
COPY --from=builder /app/build/Laboratory_6_test_file_loading ./
COPY --from=builder /app/build/test_data_npcs.txt ./

# Команда по умолчанию - запуск приложения
CMD ["./Laboratory_6_exe"]
