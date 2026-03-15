# iOS Label Demo

## 简介

本 Demo 展示 UILabel 的各种用法，包括字体样式、颜色设置、文本对齐和多行文本显示。UILabel 是 iOS 开发中显示静态文本内容的最基本控件。

## 基本原理

UILabel 是 UIKit 框架中用于显示文本的控件，其核心特性包括：

1. **文本显示**：通过 `text` 属性设置显示内容
2. **字体样式**：支持系统字体、粗体、字号调整
3. **文本颜色**：可分别设置文字颜色和背景色
4. **对齐方式**：支持左对齐、居中、右对齐和两端对齐
5. **行数控制**：通过 `numberOfLines` 控制单行或多行显示

## 教程

### 1. 创建标签

```swift
let label = UILabel()
label.text = "文本内容"
```

### 2. 设置字体

```swift
// 普通字体
label.font = .systemFont(ofSize: 16)

// 粗体字体
label.font = .boldSystemFont(ofSize: 20)

// 指定粗细
label.font = .systemFont(ofSize: 32, weight: .bold)
```

### 3. 设置颜色

```swift
// 文字颜色
label.textColor = .systemBlue
label.textColor = .systemGray

// 背景颜色
label.backgroundColor = .systemYellow
```

### 4. 设置对齐方式

```swift
label.textAlignment = .left    // 左对齐
label.textAlignment = .center  // 居中
label.textAlignment = .right   // 右对齐
```

### 5. 多行文本

```swift
// 0 表示不限制行数
label.numberOfLines = 0
```

## 关键代码详解

本 Demo 创建了四种不同类型的标签：

### 普通文本标签
```swift
let normalLabel = UILabel()
normalLabel.text = "普通文本标签"
normalLabel.font = .systemFont(ofSize: 16)
```
最基本的标签用法，设置文字和字号。

### 粗体标签
```swift
let boldLabel = UILabel()
boldLabel.text = "粗体文本"
boldLabel.font = .boldSystemFont(ofSize: 20)
boldLabel.textColor = .systemBlue
```
使用粗体字体和蓝色文字，常用于强调重要内容。

### 大号标题标签
```swift
let largeLabel = UILabel()
largeLabel.text = "大号标题"
largeLabel.font = .systemFont(ofSize: 32, weight: .bold)
largeLabel.textAlignment = .center
```
使用 `.systemFont(ofSize:weight:)` 方法指定粗细等级，`.center` 实现居中效果。

### 多行标签
```swift
let multiLabel = UILabel()
multiLabel.text = "这是第一行\n这是第二行\n这是第三行"
multiLabel.numberOfLines = 0
multiLabel.textColor = .systemGray
```
- 使用 `\n` 换行符进行换行
- `numberOfLines = 0` 表示不限制行数，文本会自动换行显示
- 灰色文字适合显示辅助说明信息

### Auto Layout 约束设置
```swift
NSLayoutConstraint.activate([
    normalLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
    normalLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
    // ...
])
```
使用 Safe Area 确保内容不被刘海和底部安全区域遮挡。

## 运行效果

运行后，屏幕上会垂直排列显示四个不同样式的标签：
1. 普通文本标签（16pt 系统字体）
2. 粗体蓝色标签（20pt 粗体）
3. 大号居中标题（32pt 粗体）
4. 多行灰色文本（三行内容）
