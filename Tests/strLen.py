#! /usr/bin/python


class Strlent(object):
    def __init__(self,lentstr):
        self.lentstr = lentstr
        self.value = len(lentstr)
        print self.value
    def __repr__(self):
        return (self.lentstr)



