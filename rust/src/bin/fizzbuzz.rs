//fn main(){for i in 1..100{match(i%3,i%5){(0,0)=>println!("FizzBuzz"),(0,_)=>println!("Fizz"),(_,0)=>println!("Buzz"),_=>println!("{}",i)}}}
//fn main(){for i in 1..100{let n=i.to_string();println!("{}",match(i%3,i%5){(0,0)=>"FizzBuzz",(0,_)=>"Fizz",(_,0)=>"Buzz",_=>&n[..]})}}

fn main(){
    for i in 1..100{
        let n=i.to_string();
        println!("{}",match(i%3,i%5){
            (0,0)=>"FizzBuzz",
            (0,_)=>"Fizz",
            (_,0)=>"Buzz",
            _=>&n[..]
        })
    }
}
