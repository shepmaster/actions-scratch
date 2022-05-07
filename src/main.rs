#[test]
fn i_am_32bit() {
    let native = 0usize.to_ne_bytes().len();
    let n32bits = 0u32.to_ne_bytes().len();
    assert_eq!(native, n32bits);
}
