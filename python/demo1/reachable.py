import socket
import struct
import select
import time

def checksum(source_string):
    """
    计算校验和
    """
    sum = 0
    count_to = (len(source_string) // 2) * 2
    for count in range(0, count_to, 2):
        this_val = source_string[count + 1] * 256 + source_string[count]
        sum = sum + this_val
        sum = sum & 0xffffffff
    if count_to < len(source_string):
        sum = sum + ord(source_string[len(source_string) - 1])
        sum = sum & 0xffffffff
    sum = (sum >> 16) + (sum & 0xffff)
    sum = sum + (sum >> 16)
    answer = ~sum & 0xffff
    answer = answer >> 8 | (answer << 8 & 0xff00)
    return answer

def receive_one_ping(my_socket, ID, timeout):
    """
    接收一个ping包的响应，并返回时延；若未收到响应，则返回None
    """
    timeLeft = timeout
    while True:
        startedSelect = select.select([my_socket], [], [], timeLeft)
        howLongInSelect = (startedSelect[0][0]) #等待时间
        if howLongInSelect == -1:
            # 超时
            return None

        timeReceived = time.time()
        recPacket, addr = my_socket.recvfrom(1024)

        # 计算时延
        icmpHeader = recPacket[20:28]
        type, code, checksum, packetID, sequence = struct.unpack(
            "bbHHh", icmpHeader
        )
        if packetID == ID:
            bytesInDouble = struct.calcsize("d")
            timeSent = struct.unpack("d", recPacket[28:28 + bytesInDouble])[0]
            return timeReceived - timeSent

        timeLeft = timeLeft - howLongInSelect
        if timeLeft <= 0:
            return None

def send_one_ping(my_socket, dest_addr, ID):
    """
    发送一个ping包，成功返回True；否则返回False
    """
    dest_addr = socket.gethostbyname(dest_addr)

    # ICMP头部报文格式
    my_checksum = 0
    # 填入header的type、code、checksum、ID、seq等字段
    header = struct.pack("bbHHh", 8, 0, my_checksum, ID, 1)

    # 填入数据部分
    data = struct.pack("d", time.time())

    # 计算ICMP校验和
    my_checksum = checksum(header + data)
    header = struct.pack(
        "bbHHh", 8, 0, socket.htons(my_checksum), ID, 1
    )

    # 构造ping包并发送
    packet = header + data
    my_socket.sendto(packet, (dest_addr, 1))
    return True

def ping(host, timeout=1, count=3):
    """
    发送多个ping包，并返回平均时延
    """
    dest_addr = socket.gethostbyname(host)
    my_socket = socket.socket(
        socket.AF_INET, socket.SOCK_RAW, socket.getprotobyname("icmp")
    )

    # 循环发送ping包，并计算平均时延
    total_time = 0
    for i in range(count):
        if send_one_ping(my_socket, dest_addr, i) and receive_one_ping(
            my_socket, i, timeout
        ):
            total_time += receive_one_ping(my_socket, i, timeout)
    my_socket.close()

    # 返回平均时延
    return total_time / count

# 测试示例
print(ping("192.168.1.1"))