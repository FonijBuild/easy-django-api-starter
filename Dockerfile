# ---- Base Image ----
FROM python:3-slim

# ---- Set work directory ----
WORKDIR /app

# ---- Environment variables ----
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_ROOT_USER_ACTION=ignore \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    HOME=/tmp

# ---- System dependencies ----
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    curl \
    git \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# ---- Copy requirements ----
COPY requirements.txt .

# ---- Upgrade pip and install Python dependencies ----
RUN pip install --upgrade pip && \
    pip install --default-timeout=120 --no-cache-dir -r requirements.txt

# ---- Copy project files ----
COPY . .

# ---- RUN executables ----
RUN chmod +x /app/scripts/entrypoint.sh

# ---- Expose port ----
EXPOSE 8000

# ---- Run entrypoint ----
ENTRYPOINT ["/app/scripts/entrypoint.sh"]