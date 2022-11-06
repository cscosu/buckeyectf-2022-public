"""
tools needed:

TruckDevil python tool, and python scripting to proccess the file.  and some googling
on how j1939 works probobly.

TL:DR ->

    -find pgn, find msg with pgn in log file, decode with truckdevil

Steps:

1) find the pgn you are looking for by looking through truck devil decoding tables.

2) scan through file to find pgn of interest (int(can_id, 16) >> 8) & 0x3ffff
is a handy can_id parsing thingy.  There should be like, 5 identical lines with
the correct message.
it looks like this: 18FEED00#6868309C68FFFFFF

3) after you find the right one, put it in to truck devil and decode it.
The decoding looks like this:

18FEED00    06 FEED 00 --> FF [0008] 6868309C68FFFFFF
    Engine #1 --> GLOBAL (All-Any Node)
    PGN(65261): CCSS
      Label: Cruise Control/Vehicle Speed Setup
      PGNDataLength: 8
      TransmissionRate: variable
      SPN(74): Maximum Vehicle Speed Limit
        104 km/h
      SPN(87): Cruise Control High Set Limit Speed
        104 km/h
      SPN(88): Cruise Control Low Set Limit Speed
        48 km/h
      SPN(6808): Maximum Vehicle Speed Limit (High Resolution)
        104.61 km/h


4) we want SPN 6808, the cruise control maximum vehicale speed limit, which is 104.61

5) take this and supply to the NC thing and get the flag

"""


def get_msgs(path: str) -> list:
    """Get base messages from file

    Returns:
        list[tuple(time, channel, msg)]: list of tuples
    """
    msgs = []
    with open(path, 'r', encoding='UTF-16') as f:
        for line in f:
            time_stamp, channel, msg = line.strip().split(" ")
            msgs.append((time_stamp, channel, msg))

    return msgs


def find_pgn(msgs: list) -> list:
    """filter list of messages for pgn of interest

    Args:
        msgs (list): list of message tuples

    Returns:
        list: list of mesages tuples of interest
    """
    interst_pgns = ['65261']

    result = []

    for msg_tuple in msgs:
        _, _, msg = msg_tuple

        can_id, _ = msg.strip().split("#")

        pgn = (int(can_id, 16) >> 8) & 0x3ffff

        if str(pgn) in interst_pgns:
            result.append(msg_tuple)

    return result


def main():

    msgs = get_msgs('test_capture.candump')
    result_msgs = find_pgn(msgs)

    print([i[2] for i in result_msgs])


if __name__ == '__main__':
    main()
