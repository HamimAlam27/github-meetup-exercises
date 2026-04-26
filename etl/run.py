import time
import random

def extract():
    print("[ETL] Connecting to source database...")
    time.sleep(1)
    records = random.randint(100_000, 200_000)
    print(f"[ETL] Extracting {records:,} records...")
    return records

def transform(records):
    print("[ETL] Applying transformations...")
    time.sleep(1)
    return records

def load(records):
    print("[ETL] Loading to warehouse...")
    time.sleep(1)
    print(f"[ETL] Done. {records:,} rows processed.")

if __name__ == "__main__":
    records = extract()
    records = transform(records)
    load(records)
