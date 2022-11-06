"""Checks for and returns flag if correct number is provided
"""

import os
import chal_app

def main() -> None:
    
    chal_app.main()
    user_input: str = input("High-res max speed: ")
    
    if len(user_input) > 10:
        return
    attempt_val: float =  float(user_input)
    attempt_val: float = round(attempt_val, 2)
    
    if attempt_val == float(os.environ["SUCCESS_VALUE"]):
        with open('flag.txt', 'r') as f:
            flag = f.readline()
            print(f"Don't drive too fast:\n{flag}")
    

if __name__ == '__main__':
    main()