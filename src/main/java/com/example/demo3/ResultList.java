package com.example.demo3;

import java.util.ArrayList;
import java.util.Iterator;

public class ResultList implements Iterable<Result> {
    private final ArrayList<Result> results;

    public ResultList() {
        this.results = new ArrayList<Result>();
    }

    public void addResult(Result newResult) {
        results.add(newResult);
    }

    public void clear() {
        results.clear();
    }

    public Iterator<Result> iterator() {
        return results.iterator();
    }

    public int getSize() {
        return results.size();
    }

    public Result getResult(int i) {
        return results.get(i);
    }
}

