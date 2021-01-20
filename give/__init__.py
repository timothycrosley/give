"""**give**

A simple framework for expression dependencies between functions
"""
import typing
__version__ = "0.0.1"


def x(y: str):
    print(y)


if typing.TYPE_CHECKING:
    x.__annotations__["y"] = int

    def x(y: int):
        print(y)


x(1)
