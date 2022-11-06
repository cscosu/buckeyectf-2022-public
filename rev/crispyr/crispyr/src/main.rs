use std::{io};
use std::fs;
use rand::distributions::{Alphanumeric, DistString};
use substring::Substring;

const STR_LEN: usize = 64;
const MAX_RUN: usize = 4;

fn main() {
    println!("Ohio State scientists have been working tirelessly on a method of cloning Columbus's favorite nut, mascot, and friend: the beloved Brutus Buckeye");
    let final_str: String = Alphanumeric.sample_string(&mut rand::thread_rng(), STR_LEN);

    println!();
    println!("Brutus is approching 60 years old and cloning him would allow future generations of Ohio State students to expeierence his love.");
    println!("(In addition to cloning my own personal Brutus Buckeye >:D)");
    println!();
    println!("Recently we\'ve had a breakthrough. We have created a program to analyze a segment of Brutus's genome and generate a trait (represented in ascii characters) based on the segment.");
    println!("Brutus's unique situation of nut/human origin makes his DNA unique.");
    println!("His DNA is made up of the same nucleic acids (represented as A, T, C, and G), but DNA sequences are subject to constraints not found in humans.");
    println!();
    println!("We may have found a trait to create a life-sized Brutus!");
    println!("Find a DNA sequence that expresses this trait: \"{final_str}\"");

    let mut dna_input = String::new();

    io::stdin()
        .read_line(&mut dna_input)
        .expect("Failed to read DNA input.");

    dna_input = dna_input.trim().to_string();
    dna_input = dna_input.to_uppercase();

    let dna_struct = DNA {dna: dna_input.clone().into_bytes()};

    let is_valid = dna_struct.check_valid();
    if is_valid {
        let eval_str = dna_struct.evaluate().expect("Invalid char in DNA while evaluating.");
        println!("Produced trait: {eval_str}");

        let trim_str = eval_str.substring(0, STR_LEN).to_string();

        let is_correct = trim_str.eq(&final_str);
        if is_correct {
            println!("The lifeform grows into a full-size Brutus!! Muahahahahahahaaaa!");
            let flag = fs::read_to_string("flag.txt")
                .expect("Can't read flag file.");

            println!("The scientists give you this as payment: {flag}");
        } else {
            println!("The lifeform takes shape... but it looks nothing like Brutus!");
        }
    } else {
        println!("The lifeform fizzles out and dies... RIP lil Brutus.");
    }
}

struct DNA {
    dna: Vec<u8>,
}

impl DNA {
    fn check_valid(&self) -> bool {
        let mut counts = vec![0, 0, 0, 0];
        let mut cur_run = 0;
        let mut cur_nuc = b'q';

        for nuc in &self.dna {
            match nuc {
                b'G' => counts[0] += 1,
                b'C' => counts[1] += 1,
                b'A' => counts[2] += 1,
                b'T' => counts[3] += 1,
                _ => return false
            }

            if cur_nuc == *nuc {
                cur_run += 1;
                if cur_run >= MAX_RUN {
                    return false
                }
            } else {
                cur_run = 0;
                cur_nuc = *nuc;
            }
        }

        if counts[0] != counts[1] || counts[2] != counts[3] {
            return false
        }
        
        true
    }

    fn evaluate(&self) -> Result<String, Box<dyn std::error::Error>> {
        let mut ptr: u8 = 0;
        let mut buf: Vec<u8> = vec![0; 256];
        for nuc in &self.dna {
            match nuc {
                b'G' => ptr += 1,
                b'C' => buf[ptr as usize] = buf[ptr as usize] ^ 0xff,
                b'A' => ptr = buf[ptr as usize],
                b'T' => buf[ptr as usize] += 1,
                _ => return Err(Box::from("Invalid char in DNA while evaluating."))
            }
        }

        
        return Ok(buf.iter().map(|c| *c as char).collect())
    }
}