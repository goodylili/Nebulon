# Variables
BINARY_NAME=server
PACKAGE=src/main.rs
DOCS_DIR=docs

.PHONY: all build run test clean docs push

# Default target to run when executing 'make'
all: build

# Build the project
build:
	@echo "Building..."
	cargo build --release

# Run the server
run:
	@echo "Running server..."
	cargo run

# Run tests
test:
	@echo "Running tests..."
	cargo test

# Remove build artifacts
clean:
	@echo "Cleaning up..."
	cargo clean

# Push to GitHub
push:
	@echo "Pushing to GitHub..."
	git add .
	git commit -m "Committing changes"
	git push origin main
