import pytest


def test_something():
    assert True


def test_raises():
    with pytest.raises(ZeroDivisionError):
        1 / 0
