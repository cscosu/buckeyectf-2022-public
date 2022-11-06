import angr
import claripy
import logging
# Flag: buckeye{st!ll_b3tt3r_th4n_strfry}
def win(state):
    return b'Congratulations' in state.posix.dumps(1)

def lose(state):
    return b'Failure' in state.posix.dumps(1)

def main():
    logging.getLogger('angr').setLevel('INFO')
    proj = angr.Project("./angry")
    flag_len = 34
    flag = claripy.BVS('flag', 8*flag_len)
    initial_state = proj.factory.entry_state(args=['./angry'], stdin=flag)
    sm = proj.factory.simgr(initial_state)
    sm.explore(find=win, avoid=lose)
    if sm.found:
        print("WIN")
        found_state = sm.found[0]
        print(found_state.posix.dumps(0))

if __name__ == "__main__":
    main()