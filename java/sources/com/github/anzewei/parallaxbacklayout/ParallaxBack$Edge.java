package com.github.anzewei.parallaxbacklayout;

/* JADX INFO: loaded from: classes5.dex */
public enum ParallaxBack$Edge {
    LEFT(1),
    RIGHT(2),
    TOP(4),
    BOTTOM(8);

    private final int value;

    ParallaxBack$Edge(int i) {
        this.value = i;
    }

    public int getValue() {
        return this.value;
    }
}
