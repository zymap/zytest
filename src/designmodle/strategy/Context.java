package designmodle.strategy;

/**
 * @author zy
 * @date 2018-03-04 11:03
 */
public class Context {
    private Strategy strategy;

    public Context(Strategy strategy) {
        this.strategy = strategy;
    }

    public void ContextInterface() {
        strategy.algorithmInterface();
    }
}
