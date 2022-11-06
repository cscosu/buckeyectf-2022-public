"""
    Stream j1939 messages from file to stdout in candump format. Add some noise
    from BAM messages and unicast.

    Adjust time stamps to be corect starting at 0.

    author: ctf-user-29

    file source: jdaily, colorado state university
    
    
    prompt:
    
    Heavy trucks are best driven quickly.  What is the high resolution
    maximum speed this truck can be driven?
    
    parts of this challenge were derived from: https://www.engr.colostate.edu/~jdaily/J1939/candata.html
    
    
    hint 1:
        Heavy trucks use a special type of network protocol
    
    hint 2:
        This is a devil of a truck


"""
import time
import random

sleep_time = 064.758912 / 34980

noise_unicast = [
    (0.1, "can1", "0C010305#FFFFFFFFFFF3FFFF"),
    (0.1, "can1", "0CF00203#C00000FFF7023903"),
]

noise_bam = [
    (0.1, "can1", "0CFD9200#F4FFFAFFFFFFFFFF"),
    (0.1, "can1", "18FEF200#00000000AA08FAFF"),
]


def get_msgs() -> list:
    """Get base messages from file

    Returns:
        list[tuple(time, channel, msg)]: list of tuples
    """
    msgs = []
    with open('data.candump', 'r', encoding='UTF-8') as f:
        for line in f:
            time_stamp, channel, msg = line.strip().split(" ")
            time_stamp = float(time_stamp.replace("(", "").replace(")", ""))
            msgs.append((time_stamp, channel, msg))

    return msgs


def add_noise(msgs: list) -> list:
    """add noise to messages.  Disreguard timestamps, will correct later

    Returns:
        list: list of messages tuples
    """

    for idx, _ in enumerate(msgs):
        rand = random.randint(0, 150)

        if rand < 10:  # add bam
            msgs.insert(idx-1,  noise_bam[rand % 2])

        elif rand < 5:  # add unicast
            msgs.insert(idx-1, noise_unicast[rand % 2])

    return msgs


def print_to_stdout(msgs: list) -> None:
    """print messages to stdout in candump format. Adjust timestamps
    and delay between messages to make it more realistic

    Args:
        msgs (list): list of message tuples
    """

    start = time.time()
    for msg_tuple in msgs:
        time.sleep(sleep_time)
        _, channel, msg = msg_tuple

        print(f"({time.time() - start}) {channel} {msg}")


def main():

    msgs: list = get_msgs()
    msgs: list = add_noise(msgs)

    time.sleep(2)
    print_to_stdout(msgs)


if __name__ == '__main__':
    main()
