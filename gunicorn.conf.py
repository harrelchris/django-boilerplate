import multiprocessing

accesslog = "-"
max_requests = 1200
max_requests_jitter = 50
preload_app = True
user = "www-data"
workers = 2 * multiprocessing.cpu_count() + 1
