use std::{net::UdpSocket, thread::sleep};
use stunclient::StunClient;
use std::net::{SocketAddr,ToSocketAddrs};
use std::thread;
use std::time::Duration;


fn main() {
    let (udp_sck,ex_addr) = stun();
    thread::spawn( || {
        upd_server(&udp_sck, &ex_addr);
    });
    new_client(&udp_sck, &ex_addr);
}

fn stun() -> (UdpSocket,SocketAddr) {
    let local_addr : SocketAddr = "0.0.0.0:0".parse().unwrap();
    let stun_addr = "stun.l.google.com:19302".to_socket_addrs().unwrap().filter(|x|x.is_ipv4()).next().unwrap();
    let udp = UdpSocket::bind(local_addr).unwrap();
    let c = StunClient::new(stun_addr);
    let my_external_addr = c.query_external_address(&udp).unwrap();
    let la = udp.local_addr().unwrap();
    println!("{}", la);
    println!("{}", my_external_addr);
    return (udp,my_external_addr)
}

fn upd_server(sck: &UdpSocket, addr: &SocketAddr) {
    println!("server start");
    let res = sck.send_to(String::from("hello").as_bytes(), addr).unwrap();
    println!("first res:{}",res);
    loop {
        let mut buf = [0u8; 1500];
        let (amt, src) = sck.recv_from(&mut buf).unwrap();
        println!("server recv_from: {},{}", amt, src);
        if amt > 0 {
            let buf = &mut buf[..amt];
            let str = String::from_utf8((&buf).to_vec()).unwrap();
            println!("server收到：{}", str);
            _ = sck.send_to(buf, &src);
        }
    }
}

fn new_client(sck: &UdpSocket, addr: &SocketAddr) {
    let client = sck;
    println!("new_client:{}",client.local_addr().unwrap());
    loop {
        let res = client.send_to(String::from("hello").as_bytes(), addr).unwrap();
        println!("res:{}",res);
        let mut buf = [0u8; 1500];
        let (amt, src) = client.recv_from(&mut buf).unwrap();
        let buf = &mut buf[..amt];
        let str = String::from_utf8((&buf).to_vec()).unwrap();
        println!("收到：{}", str);
        sleep(Duration::from_secs(1));
    }
}
