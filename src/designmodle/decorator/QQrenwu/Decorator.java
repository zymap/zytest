package designmodle.decorator.QQrenwu;

/**
 * @author zy
 * @date 2018-03-04 11:27
 */
public class Decorator extends People {

    private People people;

    public void setPeople(People people) {
        this.people = people;
    }

    @Override
    public void dress() {
        if (people != null) {
            super.cloth.add("nothing");
            people.dress();
        }
    }
}
