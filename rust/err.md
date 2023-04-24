Rust的错误处理使用Result和Option枚举类型，而不是传统的异常机制。这种方法使错误处理更加显式，有助于编写更健壮、安全的代码。

Option类型：
Option枚举类型表示一个值可能存在，也可能不存在。它有两个变体：Some(T)表示存在一个类型为T的值，None表示不存在值。Option类型通常用于处理可能缺失的值，而不是使用特殊值（如null）来表示缺失。

rust
Copy code
fn find_item(item_id: u32) -> Option<Item> {
    // 返回值可能是Some(Item)或None
}

let item = find_item(42);

match item {
    Some(found_item) => println!("找到了物品: {:?}", found_item),
    None => println!("没有找到物品"),
}
Result类型：
Result类型表示一个操作可能成功（返回一个值），也可能失败（返回一个错误）。Result枚举类型有两个变体：Ok(T)表示成功并包含类型为T的值，Err(E)表示失败并包含类型为E的错误。Result类型通常用于处理可能出错的操作。

rust
Copy code
use std::fs::File;

fn open_file(filename: &str) -> Result<File, std::io::Error> {
    File::open(filename)
}

let file = open_file("example.txt");

match file {
    Ok(opened_file) => println!("成功打开文件: {:?}", opened_file),
    Err(error) => println!("打开文件失败: {:?}", error),
}
?操作符：
在处理Result类型时，可以使用?操作符来简化错误传播。当在一个返回Result类型的函数中使用?操作符时，如果Result为Ok，则?操作符将直接提取Ok中的值；如果为Err，则?操作符会将错误传播给调用者。

rust
Copy code
use std::fs::File;
use std::io::Read;

fn read_file_contents(filename: &str) -> Result<String, std::io::Error> {
    let mut file = File::open(filename)?;
    let mut contents = String::new();
    file.read_to_string(&mut contents)?;
    Ok(contents)
}

match read_file_contents("example.txt") {
    Ok(contents) => println!("文件内容: {}", contents),
    Err(error) => println!("读取文件内容失败: {:?}", error),
}
使用Rust的错误处理方式，您可以编写显式、安全的错误处理代码，确保在编译时就捕获潜在的错误情况。