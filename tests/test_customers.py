
import csv
from datetime import datetime
from pathlib import Path


FILE_PATH = Path("data/customers.csv")


def load_customers():
    with FILE_PATH.open(newline="", encoding="utf-8") as file:
        return list(csv.DictReader(file))


def test_customer_ids_are_not_blank():
    rows = load_customers()

    for row in rows:
        assert row["customer_id"].strip() != "", (
            "Found a customer with a blank customer_id"
        )
              - name: Set up Python
        uses: actions/setup-python@v5
        with:
          python-version: "3.12"

      - name: Install pytest
        run: |
          python -m pip install --upgrade pip
          pip install pytest

      - name: Run customer data quality tests
        run: |
          pytest tests/test_customers.py -v


def test_customer_ids_are_unique():
    rows = load_customers()

    customer_ids = [row["customer_id"] for row in rows]

    assert len(customer_ids) == len(set(customer_ids)), (
        "Duplicate customer_id values found"
    )


def test_signup_dates_are_valid():
    rows = load_customers()

    for row in rows:
        datetime.strptime(row["signup_date"], "%Y-%m-%d")


def test_acquisition_channel_is_not_blank():
    rows = load_customers()

    for row in rows:
        assert row["acquisition_channel"].strip() != "", (
            "Found a customer with a blank acquisition_channel"
        )
