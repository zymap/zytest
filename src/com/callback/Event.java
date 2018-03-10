package com.callback;

/**
 * @author zy
 * @date 2018-03-07 11:30
 */
public abstract class Event {
    private Listener listener;

    public void registe(Listener listener) {
        this.listener = listener;
    }

    public void run() {
        dosomething();
        listener.notifyListen();
    }

    public abstract void dosomething();
}
