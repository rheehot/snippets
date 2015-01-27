extern crate core;

use std::io;
use std::str::StrExt;
use core::str::StrExt;

fn main() {
    print!("Type any string: ");

    let line = io::stdin().read_line().ok().expect("Failed to read line");
    let input = line.as_slice().trim();

    let count = input.char_len();

    print!("{:>30} :", "input.char_at()");
    for x in range(0us, count) {
        print!(" {}", input.char_at(x));
    }
    println!("");

    print!("{:>30} :", "input.char_at_reverse()");
    for x in range(0us, count) {
        print!(" {}", input.char_at_reverse(x));
    }
    println!("");
}