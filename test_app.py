import pytest
from app import add_numbers

def test_add_numbers():
    assert add_numbers(2, 3) == 5, "Should be 5"

def test_add_numbers_negative():
    assert add_numbers(-2, -3) == -5, "Should be -5"

def test_add_numbers_zero():
    assert add_numbers(0, 0) == 0, "Should be 0"