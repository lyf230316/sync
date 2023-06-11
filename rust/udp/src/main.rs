
use std::net::UdpSocket;
use std::{
    thread,
    time,
    fs
};
use memmap::Mmap;
use memmap::MmapMut;
use std::fs::OpenOptions;
use std::path::PathBuf;

fn main() {
    println!("Hello, world!");
    let uskt = UdpSocket::bind("0.0.0.0:3400").unwrap();
    
    
}

fn send_file_to_udp(rpath: String, wpath: String, uskt: UdpSocket) {
    let finish = false;

    let mut rfile = OpenOptions::new().read(true).open(&rpath).unwrap();
    let rmmap = unsafe {
        Mmap::map(&rfile).unwrap();
    };

    let file = OpenOptions::new()
                        .read(true)
                        .write(true)
                        .create(true)
                        .open(&npath)
                        .unwrap();
    let size = fs::metadata(rpath).unwrap().len();
    let mut wmmap = unsafe { 
        MmapMut::map_mut(&file).unwrap() 
    };

    let sendthd = thread::spawn(move || {
        //发送
    });

    let receivethd = thread::spawn(move || {

    });
    while !finish {
        thread::sleep(time::Duration::new(5,0));
    }
    eprintln!("finish");
}
