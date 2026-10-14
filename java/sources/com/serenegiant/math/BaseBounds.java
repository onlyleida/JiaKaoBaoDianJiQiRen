package com.serenegiant.math;

import java.io.Serializable;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseBounds implements Serializable {
    private static final long serialVersionUID = 5504958491886331189L;
    public final Vector angle;
    public final Vector position;
    public float radius;

    public BaseBounds() {
        this.position = new Vector();
        this.angle = new Vector();
    }

    public void centerX(float f2) {
        this.position.x = f2;
    }

    public void centerY(float f2) {
        this.position.y = f2;
    }

    public void centerZ(float f2) {
        this.position.z = f2;
    }

    public BaseBounds move(float f2, float f3) {
        this.position.add(f2, f3);
        return this;
    }

    public boolean ptInBounds(float f2, float f3) {
        return ptInBounds(f2, f3, this.position.z);
    }

    public abstract boolean ptInBounds(float f2, float f3, float f4);

    protected boolean ptInBoundsSphere(float f2, float f3, float f4, float f5) {
        return this.position.distSquared(f2, f3, f4) < f5 * f5;
    }

    public void rotate(Vector vector) {
        vector.set(vector.x, vector.y, vector.z);
    }

    public void rotateX(float f2) {
        this.angle.x = f2;
    }

    public void rotateY(float f2) {
        this.angle.y = f2;
    }

    public void rotateZ(float f2) {
        this.angle.z = f2;
    }

    public BaseBounds set(BaseBounds baseBounds) {
        this.position.set(baseBounds.position);
        this.angle.set(baseBounds.angle);
        this.radius = baseBounds.radius;
        return this;
    }

    public BaseBounds setPosition(Vector vector) {
        this.position.set(vector);
        return this;
    }

    public float centerX() {
        return this.position.x;
    }

    public float centerY() {
        return this.position.y;
    }

    public float centerZ() {
        return this.position.z;
    }

    public BaseBounds move(float f2, float f3, float f4) {
        this.position.add(f2, f3, f4);
        return this;
    }

    public boolean ptInBounds(Vector vector) {
        return ptInBounds(vector.x, vector.y, vector.z);
    }

    public void rotate(float f2, float f3, float f4) {
        this.angle.set(f2, f3, f4);
    }

    public BaseBounds setPosition(float f2, float f3) {
        this.position.set(f2, f3);
        return this;
    }

    public BaseBounds move(Vector vector) {
        this.position.add(vector);
        return this;
    }

    public BaseBounds setPosition(float f2, float f3, float f4) {
        this.position.set(f2, f3, f4);
        return this;
    }

    public BaseBounds(BaseBounds baseBounds) {
        this.position = new Vector();
        this.angle = new Vector();
        set(baseBounds);
    }

    public BaseBounds(float f2, float f3, float f4) {
        Vector vector = new Vector();
        this.position = vector;
        this.angle = new Vector();
        vector.set(f2, f3);
        this.radius = f4;
    }

    public BaseBounds(float f2, float f3, float f4, float f5) {
        Vector vector = new Vector();
        this.position = vector;
        this.angle = new Vector();
        vector.set(f2, f3, f4);
        this.radius = f5;
    }
}
