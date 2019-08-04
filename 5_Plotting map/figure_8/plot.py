# -*- coding: utf-8 -*-
import numpy as np
import matplotlib.pyplot as plt
from pylab import *

def read():
    name_list = ['Full trend clustering', 'Angle clustering', 'Pearson clustering']

    time1 = [0.010,0.012,0.014]
    time2 = [0.009,0.009,0.010]
    time3 = [0.302,0.286,0.296]
    time4 = [0.259,0.270,0.270]
    time5 = [0.687,0.679,0.634]
    time6 = [0.606,0.630,0.635]
    # time3 = [0.024,0.024,0.025]
    location = np.arange(len(name_list))
    width = 0.12
    # xlocation = np.linspace(1, len(time2) * 0.6, len(time2))

    plt.figure(figsize=(15, 8))
    plt.ylabel(u'Average hit rate', fontsize=20, labelpad=10)
    plt.xticks(fontsize=20)

    plt.bar(location, time1, width=width, label="Predicted rules with direct connecting",alpha=0.8, color="y", edgecolor="k")
    for a, b in zip(location, time1):
        plt.text(a, b , '%.3f' % b, ha='center', va='bottom', fontsize=12)

    plt.bar(location + width, time2,width=width, label="Random rules with direct connecting", alpha=0.8, color="y",
            edgecolor="k", hatch="/////")
    for a, b in zip(location + width, time2):
        plt.text(a, b, '%.3f' % b, ha='center', va='bottom', fontsize=12)

    plt.bar(location+2*width, time3, tick_label=name_list, width=width, label="Predicted rules with two-times reasoning",alpha=0.8, color="blue", edgecolor="k")
    for a, b in zip(location+2*width, time3):
        plt.text(a, b , '%.3f' % b, ha='center', va='bottom', fontsize=12)

    plt.bar(location + 3*width, time4, width=width, label="Random rules with two-times reasoning", alpha=0.8, color="blue",
            edgecolor="k", hatch="/////")
    for a, b in zip(location + 3*width, time4):
        plt.text(a, b , '%.3f' % b, ha='center', va='bottom', fontsize=12)

    plt.bar(location+4*width, time5,width=width, label="Predicted rules with three-times reasoning",alpha=0.8, color="r", edgecolor="k")
    for a, b in zip(location+4*width, time5):
        plt.text(a, b , '%.3f' % b, ha='center', va='bottom', fontsize=12)

    plt.bar(location + 5*width, time6, width=width, label="Random rules with three-times reasoning", alpha=0.8, color="r",
            edgecolor="k", hatch="/////")
    for a, b in zip(location + 5*width, time6):
        plt.text(a, b , '%.3f' % b, ha='center', va='bottom', fontsize=12)


    plt.ylim(0, 1.0)
    # plt.title("The comparison between predicted association rules and random association rules under different reasoning mode",fontsize=17)
    plt.legend(loc=2,fontsize=16,ncol = 2)
    plt.show()

if __name__ == '__main__':
    read()
