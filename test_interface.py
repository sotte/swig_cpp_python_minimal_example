import interface


if __name__ == "__main__":
    assert interface.run() is False

    obj = interface.XXX()
    assert obj.do_it(5) is True
