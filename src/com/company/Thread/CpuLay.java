package com.company.Thread;

import net.openhft.affinity.AffinityLock;
import net.openhft.affinity.CpuLayout;
/**
 * @author zy
 * @date 2018-02-06 16:58
 */
public class CpuLay {
    public static void main(String[] args) {
        CpuLayout cpuLayout = AffinityLock.cpuLayout();
        System.out.println(cpuLayout.cpus());

    }
}
