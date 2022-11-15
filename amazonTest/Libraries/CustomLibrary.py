from robot.api.deco import keyword


@keyword("Compare Lists")
def compare_lists(a, b):
    if a == b:
        return True
    else:
        return False
