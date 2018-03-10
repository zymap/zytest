package com.company.collectionzy.unaryOperatorjava18;

import java.util.*;
import java.util.function.BinaryOperator;
import java.util.stream.Collectors;

/**
 * @author zy
 * @date 2017-12-24 17:22
 */
public class BinaryOperatorMaxByMinBy {
    public static void main(String[] args) {
        Student s1 = new Student("Shyam", 22,"A");
        Student s2 = new Student("Ram",23,"A");
        Student s3 = new Student("Mohan",22,"B");
        Student s4 = new Student("Ramesh", 21, "B");
        List<Student> list = Arrays.asList(s1, s2, s3, s4);
        Comparator<Student> ageComparator = Comparator.comparing(Student::getAge);

        System.out.println("--bianryoperate.maxBy--");
        Map<String, Optional<Student>> eldestByClass = list.stream()
                .collect(Collectors.groupingBy(Student::getClassName, Collectors.reducing(BinaryOperator.maxBy(ageComparator))));
        eldestByClass.forEach((k,v)-> System.out.println("class"));
    }
}
