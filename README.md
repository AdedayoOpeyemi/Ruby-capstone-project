# Custom CSS Linter built using Ruby

:computer: This project consists of a CSS Linter written in Ruby programming language 

## Built With

- Ruby, 
- Rubocop,
- RSpec


## Getting Started

**To get a local copy up and running follow these simple example steps.**

### Prerequisites

- Have Ruby installed on your local machine

### Setup

- Clone this repository on to your local machine:
  - From a terminal window, navigate to your preffered directory. 
  - Clone using the following command, for HTTPS: ```https://github.com/AdedayoOpeyemi/Ruby-capstone-project.git``` for SSH ```git@github.com:AdedayoOpeyemi/Ruby-capstone-project.git```.

### Usage

- Navigate into the ```bin``` folder and execute the following command
  - ```ruby main #{path to file to be linted} ```

### Run tests

- Install RSpec on your local machine 
  - Run the ```rspec``` command


### Linter Functions

1. Check spacing right after a semicolon
  - This linter checks whether or not there is a space right after a semi-colon and before the value being assigned.
  
**Bad Code**
```
  h1 {
  font-family:Arial;
}
```

**Good Code**
```
h1 {
  font-family: Arial;
}
```

2. Check double or more spaces within line
  - This linter checks if there are instance(s) of more than one space character within a line.
  
**Bad Code**
```
  p {
  border-radius: 3px   2px 4px 2px;
}
```

**Good Code**
```
  p {
  border-radius: 3px 2px 4px 2px;
}
```

3. Check trailing space(s)
  - This linter checks if there are extra spaces at the end of the line.
  
**Bad Code**
```
li {
  display: flex;   
}
```

**Good Code**
```
li {
  display: flex;
}
```

4. Check if your body lines end with a semi-colon.
  - This linter checks whether or not there's a semi-colon at the end of your body lines.
  
**Bad Code**
```
body {
  box-sizing: border-box
}
```

**Good Code**
```
body {
  box-sizing: border-box;
}
```

5. Check zero value units.
  - This linter checks if there is a unit after a Zero value.
  
**Bad Code**
```
body {
  height: 0px;
}
```

**Good Code**
```
body {
  height: 0;
}
```

## Screenshot

![Example Output](https://user-images.githubusercontent.com/58086801/80663620-1dcec000-8a5a-11ea-8668-735e1b4c4f59.png)

## Authors

:bulb: **Alvaro Paz**

- Github: [@Opeyemi Oyelesi](https://github.com/AdedayoOpeyemi)
- Twitter: [@Opeyemi Oyelesi](https://twitter.com/oyelesiopy)
- Linkedin: [Opeyemi Oyelesi](https://www.linkedin.com/in/opeyemioyelesi/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Adedayoopeyemi/ruby-capstone-project/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](lic.url) licensed.
