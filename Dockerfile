# Production stage
FROM ruby:3.4.4-slim

WORKDIR /app

# Install runtime dependencies
RUN apt-get update && apt-get install -y \
    libssl3 \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy Gemfile and install dependencies
COPY Gemfile* ./

RUN bundle install --jobs 4 --retry 3

# Copy application code
COPY . .

# Set environment variables
ENV RACK_ENV=production
ENV PORT=3000

# Expose the port
EXPOSE 3000

# Start the application with Puma
CMD ["bundle", "exec", "puma", "-C", "/app/config/puma.rb"]
