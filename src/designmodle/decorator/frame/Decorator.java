package designmodle.decorator.frame;

/**
 * @author zy
 * @date 2018-03-04 11:15
 */
public class Decorator extends Component {
    private Component component;

    public void setComponent(Component component) {
        this.component = component;
    }

    @Override
    public void dosomething() {
        if (component != null) {
            component.dosomething();
        }
    }
}
