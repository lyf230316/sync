# This is a sample Python script.

# Press ⌃R to execute it or replace it with your code.
# Press Double ⇧ to search everywhere for classes, files, tool windows, actions, and settings

import socket


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    # 定义STUN服务器的地址和端口
    stun_server = ('stun.l.google.com', 19302)

    # 创建UDP socket
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    # 发送STUN请求
    sock.sendto(
        b'\x00\x01\x00\x00\x21\x12\xa4\x42\x00\x08\x00\x1c\x6b\x7b\xca\xfe\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00',
        stun_server)

    # 接收STUN响应
    response, server_address = sock.recvfrom(1024)

    # 解析STUN响应，提取本机的IP和端口
    ip = '.'.join(str(response[24 + i]) for i in range(4))
    port = (response[28] << 8) | response[29]

    # 打印本机的IP和端口
    print('IP address:', ip)
    print('Port:', port)

    # 关闭socket
    sock.close()

# See PyCharm help at https://www.jetbrains.com/help/pycharm/
