const SOME_BYTES: [u8; 2] = [0xAA, 0xBB];

fn main() {}

#[test]
fn i_am_big_endian() {
    let native = i16::from_ne_bytes(SOME_BYTES);
    let be = i16::from_be_bytes(SOME_BYTES);
    assert_eq!(native, be);
}
