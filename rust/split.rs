fn main() {
    let text = "# Comment";

    let mut i = 0i;
    for token in text.split('#').collect::<Vec<&str>>().iter() {
        println!("{}: \"{}\"", i, token);
        i += 1;
    }
}
