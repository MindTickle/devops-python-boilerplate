from server import hello

def test_hello():
    assert hello() == {'message': 'Hello, World!'}
