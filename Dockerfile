#GBASE DB
FROM python:3.11-slim

# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy project
COPY . .

# # Collect static files
# RUN python manage.py collectstatic --noinput

# # Expose the port the app runs on
# EXPOSE 8000

# # Run the application
# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "dj.wsgi:application"]



















#Development Dockerfile 
# Pull base image
# FROM python:3.11-slim
# # Set environment variables
# ENV PIP_DISABLE_PIP_VERSION_CHECK 1
# ENV PYTHONDONTWRITEBYTECODE 1
# ENV PYTHONUNBUFFERED 1

# # Set work directory
# WORKDIR /code

# # Install dependencies
# COPY ./requirements.txt .
# RUN pip install -r requirements.txt

# # Copy project
# COPY . .

# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]